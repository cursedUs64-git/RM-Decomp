#!/usr/bin/env python3
"""
sm64diff.py - Diff two SM64 ROM files and output patch .org directives
using a GNU ld map file for symbol resolution and region discovery.

Usage:
    python sm64diff.py <map_file> <rom_a> <rom_b>

Regions are parsed automatically from the map file.
Excluded: mio0, segment_7, noload, zbuffer, buffers sections.
"""

import sys
import re

EXCLUDE = ("mio0", "_segment_7", "noload", "zbuffer", "buffers")


# ── Map file parser ────────────────────────────────────────────────────────────

def parse_map(map_path: str) -> tuple[list, list]:
    """
    Parse a GNU ld map file.
    Returns:
        regions  - list of (rom_start, rom_end_exclusive, header_offset, name)
        symbols  - sorted list of (ram_addr, symbol_name)
    """
    regions = []
    symbols = []

    # Matches top-level section lines like:
    #   .main           0x80246000    0xf4580 load address 0x00001000
    #   .assets         0x004ec000   0x2e06c0
    section_re = re.compile(
        r'^(\.\S+)\s+(0x[0-9a-fA-F]+)\s+(0x[0-9a-fA-F]+)'
        r'(?:\s+load address\s+(0x[0-9a-fA-F]+))?'
    )

    # Matches symbol lines like:
    #   0x0000000080246000   some_function
    symbol_re = re.compile(r'^\s+(0x[0-9a-fA-F]{8,})\s+([A-Za-z_][A-Za-z0-9_$.@]*)\s*$')

    with open(map_path, 'r', errors='replace') as f:
        for line in f:
            # Try symbol first (more common)
            m = symbol_re.match(line)
            if m:
                addr = int(m.group(1), 16)
                name = m.group(2)
                symbols.append((addr, name))
                continue

            # Try section header
            m = section_re.match(line)
            if m:
                sec_name  = m.group(1)
                virt_addr = int(m.group(2), 16)
                size      = int(m.group(3), 16)
                rom_addr  = int(m.group(4), 16) if m.group(4) else None

                # Skip excluded section types
                if any(ex in sec_name for ex in EXCLUDE):
                    continue
                # Skip zero-size sections
                if size == 0:
                    continue
                # Skip sections with no load address where virt looks like a noload addr
                if rom_addr is None:
                    if virt_addr > 0x10000000:
                        continue  # likely bss/noload with no ROM content
                    rom_addr = virt_addr  # identity mapped (e.g. .assets)

                header = virt_addr - rom_addr
                rom_end = rom_addr + size
                regions.append((rom_addr, rom_end, header, sec_name))

    # Sort regions by rom_start, deduplicate symbols
    regions.sort(key=lambda r: r[0])

    seen = set()
    unique_syms = []
    for addr, name in sorted(symbols):
        if addr not in seen:
            seen.add(addr)
            unique_syms.append((addr, name))

    return regions, unique_syms


def rom_to_ram(rom_offset: int, regions: list) -> tuple | None:
    """Convert ROM offset -> (ram_addr, header_offset, section_name)."""
    for start, end, header, name in regions:
        if start <= rom_offset < end:
            return rom_offset + header, header, name
    return None


def find_nearest_symbol(ram_addr: int, symbols: list) -> tuple | None:
    """Binary search for largest symbol address <= ram_addr."""
    lo, hi = 0, len(symbols) - 1
    result = None
    while lo <= hi:
        mid = (lo + hi) // 2
        if symbols[mid][0] <= ram_addr:
            result = symbols[mid]
            lo = mid + 1
        else:
            hi = mid - 1
    return result


# ── Diff logic ─────────────────────────────────────────────────────────────────

def diff_roms(rom_a: bytes, rom_b: bytes, regions: list) -> list:
    """
    Find contiguous differing byte runs within known regions.
    Returns list of (rom_start_offset, old_bytes, new_bytes).
    """
    check_offsets = set()
    for start, end, _, _ in regions:
        for off in range(start, min(end, len(rom_a), len(rom_b))):
            check_offsets.add(off)

    sorted_offsets = sorted(check_offsets)

    runs = []
    i = 0
    while i < len(sorted_offsets):
        off = sorted_offsets[i]
        if rom_a[off] != rom_b[off]:
            run_start = off
            old_bytes = bytearray()
            new_bytes = bytearray()
            while (i < len(sorted_offsets) and
                   sorted_offsets[i] == run_start + len(old_bytes) and
                   rom_a[sorted_offsets[i]] != rom_b[sorted_offsets[i]]):
                old_bytes.append(rom_a[sorted_offsets[i]])
                new_bytes.append(rom_b[sorted_offsets[i]])
                i += 1
            runs.append((run_start, bytes(old_bytes), bytes(new_bytes)))
        else:
            i += 1

    return runs


# ── Output formatter ───────────────────────────────────────────────────────────

def format_patch(rom_offset: int, new_bytes: bytes, old_bytes: bytes,
                 regions: list, symbols: list) -> str:
    result = rom_to_ram(rom_offset, regions)
    if result is None:
        return f"// WARNING: ROM 0x{rom_offset:X} not in any known region\n"

    ram_addr, _header, sec_name = result
    sym = find_nearest_symbol(ram_addr, symbols)

    if sym is None:
        org_expr = f"0x{ram_addr:08X}"
    else:
        sym_addr, sym_name = sym
        delta = ram_addr - sym_addr
        org_expr = sym_name if delta == 0 else f"{sym_name}+0x{delta:X}"

    new_hex = ", ".join(f"0x{b:02X}" for b in new_bytes)
    old_hex = ", ".join(f"0x{b:02X}" for b in old_bytes)

    return f".org {org_expr} // ROM: 0x{rom_offset:X}, seg: {sec_name}\n .byte {new_hex} // was: {old_hex}\n"


# ── Main ───────────────────────────────────────────────────────────────────────

def main():
    if len(sys.argv) != 4:
        print("Usage: python sm64diff.py <map_file> <rom_a> <rom_b>")
        sys.exit(1)

    map_path, path_a, path_b = sys.argv[1], sys.argv[2], sys.argv[3]

    print(f"// Parsing map: {map_path}")
    regions, symbols = parse_map(map_path)
    print(f"// Loaded {len(regions)} regions, {len(symbols)} symbols")

    with open(path_a, 'rb') as f:
        rom_a = f.read()
    with open(path_b, 'rb') as f:
        rom_b = f.read()

    print(f"// ROM A: {len(rom_a):,} bytes  |  ROM B: {len(rom_b):,} bytes")

    diffs = diff_roms(rom_a, rom_b, regions)
    print(f"// Found {len(diffs)} differing run(s)\n")

    for rom_offset, old_bytes, new_bytes in diffs:
        print(format_patch(rom_offset, new_bytes, old_bytes, regions, symbols))


if __name__ == "__main__":
    main()
