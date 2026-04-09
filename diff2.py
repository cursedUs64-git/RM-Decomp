#!/usr/bin/env python3
"""
sm64diff.py - Diff two SM64 ROM files and output patch .org directives
using a GNU ld map file for symbol resolution and region discovery.

Usage:
    python sm64diff.py <map_file> <rom_a> <rom_b>

- Regions parsed automatically from map (excludes mio0, segment_7, noload, etc.)
- VR4300 (MIPS III) disassembly for every diff
- Partial-word diffs fetch the full surrounding instruction from both ROMs
- Function diffs disassemble the full function from both ROMs and show changes
- Outputs each changed function as a separate .asm file in ./funcs/
"""

import sys
import re
import struct
import os

printed_funcs = set()
changed_funcs = set()

EXCLUDE = ("mio0", "_segment_7", "noload", "zbuffer", "buffers")

# ══════════════════════════════════════════════════════════════════════════════
# VR4300 DISASSEMBLER (MIPS III)
# ══════════════════════════════════════════════════════════════════════════════

GPR = [
    "$zero","$at","$v0","$v1","$a0","$a1","$a2","$a3",
    "$t0","$t1","$t2","$t3","$t4","$t5","$t6","$t7",
    "$s0","$s1","$s2","$s3","$s4","$s5","$s6","$s7",
    "$t8","$t9","$k0","$k1","$gp","$sp","$fp","$ra",
]
FPR = [f"$f{i}" for i in range(32)]
COP0 = [
    "Index","Random","EntryLo0","EntryLo1","Context","PageMask","Wired","r7",
    "BadVAddr","Count","EntryHi","Compare","Status","Cause","EPC","PRId",
    "Config","LLAddr","WatchLo","WatchHi","XContext","r21","r22","r23",
    "r24","r25","PErr","CacheErr","TagLo","TagHi","ErrorEPC","r31",
]

def _s16(v): return v if v < 0x8000 else v - 0x10000

def disasm(word: int, pc: int) -> str:
    if word == 0:
        return "nop"

    op    = (word >> 26) & 0x3F
    rs    = (word >> 21) & 0x1F
    rt    = (word >> 16) & 0x1F
    rd    = (word >> 11) & 0x1F
    sa    = (word >>  6) & 0x1F
    funct = word & 0x3F
    imm   = word & 0xFFFF
    simm  = _s16(imm)
    tgt   = ((pc + 4) & 0xF0000000) | ((word & 0x3FFFFFF) << 2)
    br    = (pc + 4) + (_s16(imm) << 2)
    R = GPR; F = FPR

    # SPECIAL
    if op == 0x00:
        if funct == 0x00: return f"sll {R[rd]}, {R[rt]}, {sa}"
        if funct == 0x02: return f"srl {R[rd]}, {R[rt]}, {sa}"
        if funct == 0x03: return f"sra {R[rd]}, {R[rt]}, {sa}"
        if funct == 0x04: return f"sllv {R[rd]}, {R[rt]}, {R[rs]}"
        if funct == 0x06: return f"srlv {R[rd]}, {R[rt]}, {R[rs]}"
        if funct == 0x07: return f"srav {R[rd]}, {R[rt]}, {R[rs]}"
        if funct == 0x08: return f"jr {R[rs]}"
        if funct == 0x09: return f"jalr {R[rd]}, {R[rs]}" if rd != 31 else f"jalr {R[rs]}"
        if funct == 0x0C: return "syscall"
        if funct == 0x0D: return "break"
        if funct == 0x0F: return "sync"
        if funct == 0x10: return f"mfhi {R[rd]}"
        if funct == 0x11: return f"mthi {R[rs]}"
        if funct == 0x12: return f"mflo {R[rd]}"
        if funct == 0x13: return f"mtlo {R[rs]}"
        if funct == 0x14: return f"dsllv {R[rd]}, {R[rt]}, {R[rs]}"
        if funct == 0x16: return f"dsrlv {R[rd]}, {R[rt]}, {R[rs]}"
        if funct == 0x17: return f"dsrav {R[rd]}, {R[rt]}, {R[rs]}"
        if funct == 0x18: return f"mult {R[rs]}, {R[rt]}"
        if funct == 0x19: return f"multu {R[rs]}, {R[rt]}"
        if funct == 0x1A: return f"div {R[rs]}, {R[rt]}"
        if funct == 0x1B: return f"divu {R[rs]}, {R[rt]}"
        if funct == 0x1C: return f"dmult {R[rs]}, {R[rt]}"
        if funct == 0x1D: return f"dmultu {R[rs]}, {R[rt]}"
        if funct == 0x1E: return f"ddiv {R[rs]}, {R[rt]}"
        if funct == 0x1F: return f"ddivu {R[rs]}, {R[rt]}"
        if funct == 0x20: return f"add {R[rd]}, {R[rs]}, {R[rt]}"
        if funct == 0x21:
            if rs == 0: return f"move {R[rd]}, {R[rt]}"
            if rt == 0: return f"move {R[rd]}, {R[rs]}"
            return f"addu {R[rd]}, {R[rs]}, {R[rt]}"
        if funct == 0x22: return f"sub {R[rd]}, {R[rs]}, {R[rt]}"
        if funct == 0x23: return f"subu {R[rd]}, {R[rs]}, {R[rt]}"
        if funct == 0x24: return f"and {R[rd]}, {R[rs]}, {R[rt]}"
        if funct == 0x25:
            if rs == 0: return f"move {R[rd]}, {R[rt]}"
            if rt == 0: return f"move {R[rd]}, {R[rs]}"
            return f"or {R[rd]}, {R[rs]}, {R[rt]}"
        if funct == 0x26: return f"xor {R[rd]}, {R[rs]}, {R[rt]}"
        if funct == 0x27: return f"nor {R[rd]}, {R[rs]}, {R[rt]}"
        if funct == 0x2A: return f"slt {R[rd]}, {R[rs]}, {R[rt]}"
        if funct == 0x2B: return f"sltu {R[rd]}, {R[rs]}, {R[rt]}"
        if funct == 0x2C: return f"dadd {R[rd]}, {R[rs]}, {R[rt]}"
        if funct == 0x2D: return f"daddu {R[rd]}, {R[rs]}, {R[rt]}"
        if funct == 0x2E: return f"dsub {R[rd]}, {R[rs]}, {R[rt]}"
        if funct == 0x2F: return f"dsubu {R[rd]}, {R[rs]}, {R[rt]}"
        if funct == 0x30: return f"tge {R[rs]}, {R[rt]}"
        if funct == 0x31: return f"tgeu {R[rs]}, {R[rt]}"
        if funct == 0x32: return f"tlt {R[rs]}, {R[rt]}"
        if funct == 0x33: return f"tltu {R[rs]}, {R[rt]}"
        if funct == 0x34: return f"teq {R[rs]}, {R[rt]}"
        if funct == 0x36: return f"tne {R[rs]}, {R[rt]}"
        if funct == 0x38: return f"dsll {R[rd]}, {R[rt]}, {sa}"
        if funct == 0x3A: return f"dsrl {R[rd]}, {R[rt]}, {sa}"
        if funct == 0x3B: return f"dsra {R[rd]}, {R[rt]}, {sa}"
        if funct == 0x3C: return f"dsll32 {R[rd]}, {R[rt]}, {sa}"
        if funct == 0x3E: return f"dsrl32 {R[rd]}, {R[rt]}, {sa}"
        if funct == 0x3F: return f"dsra32 {R[rd]}, {R[rt]}, {sa}"
        return f".word 0x{word:08X}  // unknown SPECIAL funct=0x{funct:02X}"

    # REGIMM
    if op == 0x01:
        if rt == 0x00: return f"bltz {R[rs]}, 0x{br:08X}"
        if rt == 0x01: return f"bgez {R[rs]}, 0x{br:08X}"
        if rt == 0x02: return f"bltzl {R[rs]}, 0x{br:08X}"
        if rt == 0x03: return f"bgezl {R[rs]}, 0x{br:08X}"
        if rt == 0x08: return f"tgei {R[rs]}, {simm}"
        if rt == 0x09: return f"tgeiu {R[rs]}, {imm}"
        if rt == 0x0A: return f"tlti {R[rs]}, {simm}"
        if rt == 0x0B: return f"tltiu {R[rs]}, {imm}"
        if rt == 0x0C: return f"teqi {R[rs]}, {simm}"
        if rt == 0x0E: return f"tnei {R[rs]}, {simm}"
        if rt == 0x10: return f"bltzal {R[rs]}, 0x{br:08X}"
        if rt == 0x11:
            if rs == 0: return f"bal 0x{br:08X}"
            return f"bgezal {R[rs]}, 0x{br:08X}"
        if rt == 0x12: return f"bltzall {R[rs]}, 0x{br:08X}"
        if rt == 0x13: return f"bgezall {R[rs]}, 0x{br:08X}"
        return f".word 0x{word:08X}  // unknown REGIMM rt=0x{rt:02X}"

    # J-type
    if op == 0x02: return f"j 0x{tgt:08X}"
    if op == 0x03: return f"jal 0x{tgt:08X}"

    # Branches
    if op == 0x04:
        if rs == 0 and rt == 0: return f"b 0x{br:08X}"
        return f"beq {R[rs]}, {R[rt]}, 0x{br:08X}"
    if op == 0x05: return f"bne {R[rs]}, {R[rt]}, 0x{br:08X}"
    if op == 0x06: return f"blez {R[rs]}, 0x{br:08X}"
    if op == 0x07: return f"bgtz {R[rs]}, 0x{br:08X}"

    # Immediate arithmetic
    if op == 0x08: return f"addi {R[rt]}, {R[rs]}, {simm}"
    if op == 0x09:
        if rs == 0: return f"li {R[rt]}, {simm}"
        return f"addiu {R[rt]}, {R[rs]}, {simm}"
    if op == 0x0A: return f"slti {R[rt]}, {R[rs]}, {simm}"
    if op == 0x0B: return f"sltiu {R[rt]}, {R[rs]}, {imm}"
    if op == 0x0C: return f"andi {R[rt]}, {R[rs]}, 0x{imm:X}"
    if op == 0x0D: return f"ori {R[rt]}, {R[rs]}, 0x{imm:X}"
    if op == 0x0E: return f"xori {R[rt]}, {R[rs]}, 0x{imm:X}"
    if op == 0x0F:
        if rs == 0: return f"lui {R[rt]}, 0x{imm:X}"
        return f"lui {R[rt]}, 0x{imm:X}  // (rs={R[rs]} nonzero?)"

    # COP0
    if op == 0x10:
        if rs == 0x00: return f"mfc0 {R[rt]}, {COP0[rd]}"
        if rs == 0x04: return f"mtc0 {R[rt]}, {COP0[rd]}"
        if rs == 0x10:
            if funct == 0x01: return "tlbr"
            if funct == 0x02: return "tlbwi"
            if funct == 0x06: return "tlbwr"
            if funct == 0x08: return "tlbp"
            if funct == 0x18: return "eret"
        return f".word 0x{word:08X}  // COP0 rs=0x{rs:02X}"

    # COP1 (FPU)
    if op == 0x11:
        fmt = rs
        ft  = rt
        fs  = rd
        fd  = sa
        if rs == 0x00: return f"mfc1 {R[rt]}, {F[rd]}"
        if rs == 0x02: return f"cfc1 {R[rt]}, {F[rd]}"
        if rs == 0x04: return f"mtc1 {R[rt]}, {F[rd]}"
        if rs == 0x06: return f"ctc1 {R[rt]}, {F[rd]}"
        if rs == 0x08:
            if rt == 0x00: return f"bc1f 0x{br:08X}"
            if rt == 0x01: return f"bc1t 0x{br:08X}"
            if rt == 0x02: return f"bc1fl 0x{br:08X}"
            if rt == 0x03: return f"bc1tl 0x{br:08X}"
        fmtmap = {0x10:"s", 0x11:"d", 0x14:"w", 0x15:"l"}
        fn = fmtmap.get(fmt, f"?{fmt}")
        if funct == 0x00: return f"add.{fn} {F[fd]}, {F[fs]}, {F[ft]}"
        if funct == 0x01: return f"sub.{fn} {F[fd]}, {F[fs]}, {F[ft]}"
        if funct == 0x02: return f"mul.{fn} {F[fd]}, {F[fs]}, {F[ft]}"
        if funct == 0x03: return f"div.{fn} {F[fd]}, {F[fs]}, {F[ft]}"
        if funct == 0x04: return f"sqrt.{fn} {F[fd]}, {F[fs]}"
        if funct == 0x05: return f"abs.{fn} {F[fd]}, {F[fs]}"
        if funct == 0x06: return f"mov.{fn} {F[fd]}, {F[fs]}"
        if funct == 0x07: return f"neg.{fn} {F[fd]}, {F[fs]}"
        if funct == 0x08: return f"round.l.{fn} {F[fd]}, {F[fs]}"
        if funct == 0x09: return f"trunc.l.{fn} {F[fd]}, {F[fs]}"
        if funct == 0x0A: return f"ceil.l.{fn} {F[fd]}, {F[fs]}"
        if funct == 0x0B: return f"floor.l.{fn} {F[fd]}, {F[fs]}"
        if funct == 0x0C: return f"round.w.{fn} {F[fd]}, {F[fs]}"
        if funct == 0x0D: return f"trunc.w.{fn} {F[fd]}, {F[fs]}"
        if funct == 0x0E: return f"ceil.w.{fn} {F[fd]}, {F[fs]}"
        if funct == 0x0F: return f"floor.w.{fn} {F[fd]}, {F[fs]}"
        if funct == 0x20: return f"cvt.s.{fn} {F[fd]}, {F[fs]}"
        if funct == 0x21: return f"cvt.d.{fn} {F[fd]}, {F[fs]}"
        if funct == 0x24: return f"cvt.w.{fn} {F[fd]}, {F[fs]}"
        if funct == 0x25: return f"cvt.l.{fn} {F[fd]}, {F[fs]}"
        if funct == 0x30: return f"c.f.{fn} {F[fs]}, {F[ft]}"
        if funct == 0x31: return f"c.un.{fn} {F[fs]}, {F[ft]}"
        if funct == 0x32: return f"c.eq.{fn} {F[fs]}, {F[ft]}"
        if funct == 0x33: return f"c.ueq.{fn} {F[fs]}, {F[ft]}"
        if funct == 0x34: return f"c.olt.{fn} {F[fs]}, {F[ft]}"
        if funct == 0x35: return f"c.ult.{fn} {F[fs]}, {F[ft]}"
        if funct == 0x36: return f"c.ole.{fn} {F[fs]}, {F[ft]}"
        if funct == 0x37: return f"c.ule.{fn} {F[fs]}, {F[ft]}"
        if funct == 0x38: return f"c.sf.{fn} {F[fs]}, {F[ft]}"
        if funct == 0x39: return f"c.ngle.{fn} {F[fs]}, {F[ft]}"
        if funct == 0x3A: return f"c.seq.{fn} {F[fs]}, {F[ft]}"
        if funct == 0x3B: return f"c.ngl.{fn} {F[fs]}, {F[ft]}"
        if funct == 0x3C: return f"c.lt.{fn} {F[fs]}, {F[ft]}"
        if funct == 0x3D: return f"c.nge.{fn} {F[fs]}, {F[ft]}"
        if funct == 0x3E: return f"c.le.{fn} {F[fs]}, {F[ft]}"
        if funct == 0x3F: return f"c.ngt.{fn} {F[fs]}, {F[ft]}"
        return f".word 0x{word:08X}  // COP1 funct=0x{funct:02X} fmt={fn}"

    # COP2 (RCP/RSP on N64 - just mark it)
    if op == 0x12: return f".word 0x{word:08X}  // COP2"

    # Likely branches
    if op == 0x14:
        if rs == 0 and rt == 0: return f"beql $zero, $zero, 0x{br:08X}"
        return f"beql {R[rs]}, {R[rt]}, 0x{br:08X}"
    if op == 0x15: return f"bnel {R[rs]}, {R[rt]}, 0x{br:08X}"
    if op == 0x16: return f"blezl {R[rs]}, 0x{br:08X}"
    if op == 0x17: return f"bgtzl {R[rs]}, 0x{br:08X}"

    # 64-bit immediate
    if op == 0x18: return f"daddi {R[rt]}, {R[rs]}, {_s16(imm)}"
    if op == 0x19: return f"daddiu {R[rt]}, {R[rs]}, {_s16(imm)}"
    if op == 0x1A: return f"ldl {R[rt]}, {_s16(imm)}({R[rs]})"
    if op == 0x1B: return f"ldr {R[rt]}, {_s16(imm)}({R[rs]})"

    # Loads
    if op == 0x20: return f"lb {R[rt]}, {simm}({R[rs]})"
    if op == 0x21: return f"lh {R[rt]}, {simm}({R[rs]})"
    if op == 0x22: return f"lwl {R[rt]}, {simm}({R[rs]})"
    if op == 0x23: return f"lw {R[rt]}, {simm}({R[rs]})"
    if op == 0x24: return f"lbu {R[rt]}, {simm}({R[rs]})"
    if op == 0x25: return f"lhu {R[rt]}, {simm}({R[rs]})"
    if op == 0x26: return f"lwr {R[rt]}, {simm}({R[rs]})"
    if op == 0x27: return f"lwu {R[rt]}, {simm}({R[rs]})"

    # Stores
    if op == 0x28: return f"sb {R[rt]}, {simm}({R[rs]})"
    if op == 0x29: return f"sh {R[rt]}, {simm}({R[rs]})"
    if op == 0x2A: return f"swl {R[rt]}, {simm}({R[rs]})"
    if op == 0x2B: return f"sw {R[rt]}, {simm}({R[rs]})"
    if op == 0x2C: return f"sdl {R[rt]}, {simm}({R[rs]})"
    if op == 0x2D: return f"sdr {R[rt]}, {simm}({R[rs]})"
    if op == 0x2E: return f"swr {R[rt]}, {simm}({R[rs]})"
    if op == 0x2F: return f"cache 0x{rt:02X}, {simm}({R[rs]})"

    # Load linked / store conditional
    if op == 0x30: return f"ll {R[rt]}, {simm}({R[rs]})"
    if op == 0x31: return f"lwc1 {F[rt]}, {simm}({R[rs]})"
    if op == 0x34: return f"lld {R[rt]}, {simm}({R[rs]})"
    if op == 0x35: return f"ldc1 {F[rt]}, {simm}({R[rs]})"
    if op == 0x37: return f"ld {R[rt]}, {simm}({R[rs]})"
    if op == 0x38: return f"sc {R[rt]}, {simm}({R[rs]})"
    if op == 0x39: return f"swc1 {F[rt]}, {simm}({R[rs]})"
    if op == 0x3C: return f"scd {R[rt]}, {simm}({R[rs]})"
    if op == 0x3D: return f"sdc1 {F[rt]}, {simm}({R[rs]})"
    if op == 0x3F: return f"sd {R[rt]}, {simm}({R[rs]})"

    return f".word 0x{word:08X}  // unknown op=0x{op:02X}"


def get_branch_target(word: int, pc: int):
    """Return branch/jump target address if this instruction has one, else None."""
    op    = (word >> 26) & 0x3F
    rs    = (word >> 21) & 0x1F
    rt    = (word >> 16) & 0x1F
    imm   = word & 0xFFFF
    tgt   = ((pc + 4) & 0xF0000000) | ((word & 0x3FFFFFF) << 2)
    br    = (pc + 4) + (_s16(imm) << 2)
    # branches (relative)
    if op in (0x04, 0x05, 0x06, 0x07, 0x14, 0x15, 0x16, 0x17): return br
    if op == 0x01:  # REGIMM
        if rt in (0x00, 0x01, 0x02, 0x03, 0x10, 0x11, 0x12, 0x13): return br
    if op == 0x11 and rs == 0x08:  # COP1 bc1f/bc1t/bc1fl/bc1tl
        if rt in (0x00, 0x01, 0x02, 0x03): return br
    # jumps (absolute)
    if op in (0x02, 0x03): return tgt
    return None


def disasm_bytes(data: bytes, start_pc: int, func_name: str = "") -> list:
    """
    Disassemble a block of bytes.
    Returns list of (pc, word, mnemonic, label_here).
    Branch/jump targets within the function get labels like funcname_L<addr>.
    label_here is the label string to emit before this instruction (or "").
    """
    end_pc = start_pc + len(data)

    # first pass: collect all branch targets that land inside this function
    branch_targets = set()
    for i in range(0, len(data) - 3, 4):
        word = struct.unpack_from(">I", data, i)[0]
        pc   = start_pc + i
        tgt  = get_branch_target(word, pc)
        if tgt is not None and start_pc <= tgt < end_pc:
            branch_targets.add(tgt)

    # label prefix: sanitize func_name
    prefix = re.sub(r'[^\w]', '_', func_name) if func_name else "L"

    def label(addr): return f".{prefix}_L{addr:08X}"
    def tgt_str(addr):
        if start_pc <= addr < end_pc:
            return label(addr)
        return f"0x{addr:08X}"

    # second pass: disassemble with label substitution
    out = []
    for i in range(0, len(data) - 3, 4):
        word = struct.unpack_from(">I", data, i)[0]
        pc   = start_pc + i
        mnem = disasm(word, pc)

        # substitute raw hex addresses in mnemonic with labels
        tgt = get_branch_target(word, pc)
        if tgt is not None:
            raw = f"0x{tgt:08X}"
            mnem = mnem.replace(raw, tgt_str(tgt))

        label_here = label(pc) if pc in branch_targets else ""
        out.append((pc, word, mnem, label_here))

    return out


# ══════════════════════════════════════════════════════════════════════════════
# MAP FILE PARSER
# ══════════════════════════════════════════════════════════════════════════════

def parse_map(map_path: str):
    regions = []
    symbols = []

    section_re = re.compile(
        r'^(\.\S+)\s+(0x[0-9a-fA-F]+)\s+(0x[0-9a-fA-F]+)'
        r'(?:\s+load address\s+(0x[0-9a-fA-F]+))?'
    )
    symbol_re = re.compile(r'^\s+(0x[0-9a-fA-F]{8,})\s+([A-Za-z_][A-Za-z0-9_$.@]*)\s*$')

    with open(map_path, 'r', errors='replace') as f:
        for line in f:
            m = symbol_re.match(line)
            if m:
                symbols.append((int(m.group(1), 16), m.group(2)))
                continue
            m = section_re.match(line)
            if m:
                sec_name  = m.group(1)
                virt_addr = int(m.group(2), 16)
                size      = int(m.group(3), 16)
                rom_addr  = int(m.group(4), 16) if m.group(4) else None
                if any(ex in sec_name for ex in EXCLUDE): continue
                if size == 0: continue
                if rom_addr is None:
                    if virt_addr > 0x10000000: continue
                    rom_addr = virt_addr
                regions.append((rom_addr, rom_addr + size, virt_addr - rom_addr, sec_name))

    regions.sort(key=lambda r: r[0])

    seen = set()
    unique_syms = []
    for addr, name in sorted(symbols):
        if addr not in seen:
            seen.add(addr)
            unique_syms.append((addr, name))

    return regions, unique_syms


def rom_to_ram(rom_offset: int, regions: list):
    for start, end, header, name in regions:
        if start <= rom_offset < end:
            return rom_offset + header, header, name
    return None


def find_nearest_symbol(ram_addr: int, symbols: list):
    lo, hi, result = 0, len(symbols) - 1, None
    while lo <= hi:
        mid = (lo + hi) // 2
        if symbols[mid][0] <= ram_addr:
            result = symbols[mid]
            lo = mid + 1
        else:
            hi = mid - 1
    return result


def find_next_symbol(ram_addr: int, symbols: list):
    lo, hi = 0, len(symbols) - 1
    result = None
    while lo <= hi:
        mid = (lo + hi) // 2
        if symbols[mid][0] > ram_addr:
            result = symbols[mid]
            hi = mid - 1
        else:
            lo = mid + 1
    return result


# ══════════════════════════════════════════════════════════════════════════════
# DIFF LOGIC
# ══════════════════════════════════════════════════════════════════════════════

def diff_roms(rom_a: bytes, rom_b: bytes, regions: list) -> list:
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


def align4_down(x): return x & ~3
def align4_up(x):   return (x + 3) & ~3


def get_function_range(ram_addr: int, symbols: list):
    sym = find_nearest_symbol(ram_addr, symbols)
    if sym is None:
        return ram_addr, 0x100
    func_start = sym[0]
    next_sym   = find_next_symbol(func_start, symbols)
    if next_sym is None:
        return func_start, 0x100
    return func_start, next_sym[0] - func_start


def ram_to_rom(ram_addr: int, regions: list):
    for rom_start, rom_end, header, name in regions:
        ram_start = rom_start + header
        ram_end   = rom_end   + header
        if ram_start <= ram_addr < ram_end:
            return ram_addr - header
    return None


# ══════════════════════════════════════════════════════════════════════════════
# FUNCTION FILE OUTPUT
# ══════════════════════════════════════════════════════════════════════════════

def write_func_file(func_name: str, func_start_ram: int, func_size: int,
                    func_a: bytes, func_b: bytes, symbols: list, out_dir: str):
    """Write a .asm file with both ROM A and ROM B disassembly of a function."""
    os.makedirs(out_dir, exist_ok=True)

    safe_name = re.sub(r'[^\w]', '_', func_name)
    path = os.path.join(out_dir, f"{safe_name}.asm")

    instrs_a = disasm_bytes(func_a, func_start_ram, func_name)
    instrs_b = disasm_bytes(func_b, func_start_ram, func_name)

    # build lookup: pc -> (aw, am) for change detection
    a_by_pc = {pc: (w, m) for pc, w, m, _ in instrs_a}
    b_by_pc = {pc: (w, m) for pc, w, m, _ in instrs_b}

    lines = []
    lines.append(f"; Function: {func_name}")
    lines.append(f"; RAM: 0x{func_start_ram:08X}  Size: 0x{func_size:X}")
    lines.append("")

    # ── ROM A (original) ──────────────────────────────────────────────────────
    lines.append("; ── ROM A (original) ────────────────────────────────────────")
    lines.append(".ifdef ORIGINAL")
    for pc, word, mnem, label_here in instrs_a:
        if label_here:
            lines.append(f"{label_here}:")
        sym = find_nearest_symbol(pc, symbols)
        if sym and sym[0] == pc and sym[1] != func_name:
            lines.append(f"{sym[1]}:")
        bw, _ = b_by_pc.get(pc, (word, ""))
        marker = "  ; <-- CHANGED" if bw != word else ""
        lines.append(f"  /* 0x{pc:08X} */  {mnem}{marker}")
    lines.append(".endif")
    lines.append("")

    # ── ROM B (modified) ──────────────────────────────────────────────────────
    lines.append("; ── ROM B (modified) ────────────────────────────────────────")
    lines.append(".ifdef RM")
    for pc, word, mnem, label_here in instrs_b:
        if label_here:
            lines.append(f"{label_here}:")
        sym = find_nearest_symbol(pc, symbols)
        if sym and sym[0] == pc and sym[1] != func_name:
            lines.append(f"{sym[1]}:")
        aw, _ = a_by_pc.get(pc, (word, ""))
        marker = "  ; <-- CHANGED" if aw != word else ""
        lines.append(f"  /* 0x{pc:08X} */  {mnem}{marker}")
    lines.append(".endif")
    lines.append("")

    # ── Changed instructions ───────────────────────────────────────────────────
    lines.append("; ── Changed instructions ────────────────────────────────────")
    any_diff = False
    for (apc, aw, am, _), (bpc, bw, bm, _) in zip(instrs_a, instrs_b):
        if aw != bw:
            any_diff = True
            ahex = " ".join(f"{b:02X}" for b in struct.pack(">I", aw))
            bhex = " ".join(f"{b:02X}" for b in struct.pack(">I", bw))
            lines.append(f"  ; 0x{apc:08X}:")
            lines.append(f"  ;   was: {ahex}  {am}")
            lines.append(f"  ;   new: {bhex}  {bm}")
    if not any_diff:
        lines.append("; (no instruction-level differences found)")

    with open(path, 'w') as f:
        f.write("\n".join(lines) + "\n")

    return path


# ══════════════════════════════════════════════════════════════════════════════
# OUTPUT FORMATTER
# ══════════════════════════════════════════════════════════════════════════════

def org_expr(ram_addr: int, symbols: list) -> str:
    sym = find_nearest_symbol(ram_addr, symbols)
    if sym is None:
        return f"0x{ram_addr:08X}"
    delta = ram_addr - sym[0]
    return sym[1] if delta == 0 else f"{sym[1]}+0x{delta:X}"


def format_patch(rom_offset: int, new_bytes: bytes, old_bytes: bytes,
                 regions: list, symbols: list, rom_a: bytes, rom_b: bytes,
                 out_dir: str) -> str:
    result = rom_to_ram(rom_offset, regions)
    if result is None:
        return f"// WARNING: ROM 0x{rom_offset:X} not in any known region\n"

    ram_addr, header, sec_name = result
    expr = org_expr(ram_addr, symbols)

    lines = []

    # ── Full function diff + file output ──────────────────────────────────────
    func_start_ram, func_size = get_function_range(ram_addr, symbols)
    if func_size > 0 and func_size <= 0x4000:
        func_rom_start = ram_to_rom(func_start_ram, regions)
        if func_rom_start is not None:
            func_a = rom_a[func_rom_start : func_rom_start + func_size]
            func_b = rom_b[func_rom_start : func_rom_start + func_size]

            if func_a != func_b and len(func_a) == len(func_b) and len(func_a) >= 4:
                func_sym = find_nearest_symbol(func_start_ram, symbols)
                func_sym_name = func_sym[1] if func_sym else f"0x{func_start_ram:08X}"
                changed_funcs.add(func_sym_name)

                if func_sym_name not in printed_funcs:
                    printed_funcs.add(func_sym_name)

                    # write per-function asm file
                    fpath = write_func_file(func_sym_name, func_start_ram, func_size,
                                            func_a, func_b, symbols, out_dir)
                    lines.append(f"  // NOTE: full function diff written to {fpath}")
                    lines.append(f"  // NOTE: full function diff: {func_sym_name} (size 0x{func_size:X})")

                    instrs_a = disasm_bytes(func_a, func_start_ram, func_sym_name)
                    instrs_b = disasm_bytes(func_b, func_start_ram, func_sym_name)

                    for (pc, aw, am, _), (_, bw, bm, _) in zip(instrs_a, instrs_b):
                        if aw != bw:
                            off_expr = org_expr(pc, symbols)
                            ahex = " ".join(f"{b:02X}" for b in struct.pack(">I", aw))
                            bhex = " ".join(f"{b:02X}" for b in struct.pack(">I", bw))
                            lines.append(f"  //   [{off_expr}]  new: {bhex} || was: {ahex}")

    lines.append(f".org {expr}  // ROM: 0x{rom_offset:X}  seg: {sec_name}")

    n = len(new_bytes)
    instr_start_rom = align4_down(rom_offset)
    instr_end_rom   = align4_up(rom_offset + n)
    instr_start_ram = instr_start_rom + header
    chunk_new = rom_b[instr_start_rom:instr_end_rom]
    chunk_old = rom_a[instr_start_rom:instr_end_rom]

    # ── 4-byte aligned: full instruction(s) ──────────────────────────────────
    if n % 4 == 0 and (rom_offset % 4 == 0):
        func_sym = find_nearest_symbol(ram_addr, symbols)
        fname = func_sym[1] if func_sym else ""
        new_instrs = disasm_bytes(new_bytes, ram_addr, fname)
        old_instrs = disasm_bytes(old_bytes, ram_addr, fname)
        lines.append(".ifdef RM")
        for (pc, nw, nm, lbl), (_, ow, om, _) in zip(new_instrs, old_instrs):
            if lbl: lines.append(f"{lbl}:")
            lines.append(f" {nm}")
        lines.append(".else")
        for (pc, nw, nm, lbl), (_, ow, om, _) in zip(new_instrs, old_instrs):
            if lbl: lines.append(f"{lbl}:")
            lines.append(f" {om}")
        lines.append(".endif")

    # ── Partial word: show surrounding instruction(s) ─────────────────────────
    else:
        new_hex = ", ".join(f"0x{b:02X}" for b in new_bytes)
        old_hex = ", ".join(f"0x{b:02X}" for b in old_bytes)
        lines.append(".ifdef RM")
        for i in range(0, len(chunk_new) - 3, 4):
            nw = struct.unpack_from(">I", chunk_new, i)[0]
            pc = instr_start_ram + i
            lines.append(f"    {disasm(nw, pc)}")
        lines.append(".else")
        for i in range(0, len(chunk_old) - 3, 4):
            ow = struct.unpack_from(">I", chunk_old, i)[0]
            pc = instr_start_ram + i
            lines.append(f"    {disasm(ow, pc)}")
        lines.append(".endif")

        if len(chunk_new) >= 4 and len(chunk_old) >= 4:
            lines.append(f"  // full instruction context:")
            for i in range(0, len(chunk_new) - 3, 4):
                nw = struct.unpack_from(">I", chunk_new, i)[0]
                ow = struct.unpack_from(">I", chunk_old, i)[0]
                pc = instr_start_ram + i
                ohex = " ".join(f"{b:02X}" for b in struct.pack(">I", ow))
                nhex = " ".join(f"{b:02X}" for b in struct.pack(">I", nw))
                lines.append(f"  //   new: {nhex} || was: {ohex}")

    return "\n".join(lines) + "\n"


# ══════════════════════════════════════════════════════════════════════════════
# CUSTOM FUNCTIONS
# ══════════════════════════════════════════════════════════════════════════════

def parse_custom_funcs(path: str) -> list:
    """
    Parse a custom_funcs config file.
    Each line: name, ram_addr, size, rom_addr  (hex or decimal, comma or whitespace separated)
    Lines starting with # are comments. Example:
        # my extra funcs
        my_func   0x80300000  0x80
        another   0x80301234  128
    Returns list of (name, ram_addr, size).
    """
    funcs = []
    with open(path, 'r') as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith('#'):
                continue
            # split on comma or whitespace
            parts = re.split(r'[\s,]+', line)
            if len(parts) < 3:
                print(f"// WARNING: skipping malformed custom_funcs line: {line!r}")
                continue
            name = parts[0]
            try:
                ram_addr = int(parts[1], 0)
                size     = int(parts[2], 0)
                rom_addr = int(parts[3], 0) if len(parts) >= 4 else None
            except ValueError:
                print(f"// WARNING: bad address/size in custom_funcs line: {line!r}")
                continue
            funcs.append((name, ram_addr, size, rom_addr))
    return funcs


def process_custom_funcs(custom_funcs: list, regions: list, symbols: list,
                         rom_a: bytes, rom_b: bytes, out_dir: str):
    """Disassemble each custom func from both ROMs and write to funcs/custom_funcs/."""
    custom_dir = os.path.join(out_dir, "custom_funcs")
    os.makedirs(custom_dir, exist_ok=True)

    for name, ram_addr, size, rom_addr in custom_funcs:
        if rom_addr is not None:
            rom_start = rom_addr
        else:
            rom_start = ram_to_rom(ram_addr, regions)
            if rom_start is None:
                print(f"// WARNING: custom func {name!r} RAM 0x{ram_addr:08X} not in any known region and no ROM address provided, skipping")
                continue

        func_a = rom_a[rom_start : rom_start + size]
        func_b = rom_b[rom_start : rom_start + size]

        if len(func_a) < 4 or len(func_b) < 4:
            print(f"// WARNING: custom func {name!r} too small or out of ROM bounds")
            continue

        # write file
        safe_name = re.sub(r'[^\w]', '_', name)
        path = os.path.join(custom_dir, f"{safe_name}.asm")

        instrs_a = disasm_bytes(func_a, ram_addr, name)
        instrs_b = disasm_bytes(func_b, ram_addr, name)
        identical = func_a == func_b

        a_by_pc = {pc: w for pc, w, m, _ in instrs_a}
        b_by_pc = {pc: w for pc, w, m, _ in instrs_b}

        lines = []
        lines.append(f"; Function: {name}  (custom)")
        lines.append(f"; RAM: 0x{ram_addr:08X}  Size: 0x{size:X}  ROM: 0x{rom_start:X}")
        lines.append(f"; Identical in both ROMs: {identical}")
        lines.append("")

        lines.append("; ── ROM A (original) ────────────────────────────────────────")
        lines.append(".ifdef ORIGINAL")
        for pc, word, mnem, label_here in instrs_a:
            if label_here: lines.append(f"{label_here}:")
            sym = find_nearest_symbol(pc, symbols)
            if sym and sym[0] == pc:
                lines.append(f"{sym[1]}:")
            bw = b_by_pc.get(pc, word)
            marker = "  ; <-- CHANGED" if bw != word else ""
            lines.append(f"  /* 0x{pc:08X} */  {mnem}{marker}")
        lines.append(".endif")
        lines.append("")

        lines.append("; ── ROM B (modified) ────────────────────────────────────────")
        lines.append(".ifdef RM")
        for pc, word, mnem, label_here in instrs_b:
            if label_here: lines.append(f"{label_here}:")
            sym = find_nearest_symbol(pc, symbols)
            if sym and sym[0] == pc:
                lines.append(f"{sym[1]}:")
            aw = a_by_pc.get(pc, word)
            marker = "  ; <-- CHANGED" if aw != word else ""
            lines.append(f"  /* 0x{pc:08X} */  {mnem}{marker}")
        lines.append(".endif")
        lines.append("")

        if not identical:
            lines.append("; ── Changed instructions ────────────────────────────────────")
            for (apc, aw, am, _), (bpc, bw, bm, _) in zip(instrs_a, instrs_b):
                if aw != bw:
                    ahex = " ".join(f"{b:02X}" for b in struct.pack(">I", aw))
                    bhex = " ".join(f"{b:02X}" for b in struct.pack(">I", bw))
                    lines.append(f"  ; 0x{apc:08X}:")
                    lines.append(f"  ;   was: {ahex}  {am}")
                    lines.append(f"  ;   new: {bhex}  {bm}")

        with open(path, 'w') as f:
            f.write("\n".join(lines) + "\n")

        print(f"// custom func {name!r} -> {path}")


# ══════════════════════════════════════════════════════════════════════════════
# MAIN
# ══════════════════════════════════════════════════════════════════════════════
def main():
    if len(sys.argv) < 4:
        print("Usage: python sm64diff.py <map_file> <rom_a> <rom_b> [custom_funcs.txt]")
        sys.exit(1)

    map_path = sys.argv[1]
    path_a   = sys.argv[2]
    path_b   = sys.argv[3]
    custom_funcs_path = sys.argv[4] if len(sys.argv) >= 5 else None

    # output folder for per-function asm files sits next to rom_b
    out_dir = os.path.join(os.path.dirname(os.path.abspath(path_b)), "funcs")

    print(f"// Parsing map: {map_path}")
    regions, symbols = parse_map(map_path)
    print(f"// Loaded {len(regions)} regions, {len(symbols)} symbols")

    with open(path_a, 'rb') as f: rom_a = f.read()
    with open(path_b, 'rb') as f: rom_b = f.read()

    print(f"// ROM A: {len(rom_a):,} bytes  |  ROM B: {len(rom_b):,} bytes")
    print(f"// Function files will be written to: {out_dir}")

    # ── Custom functions ──────────────────────────────────────────────────────
    if custom_funcs_path:
        print(f"// Loading custom funcs from: {custom_funcs_path}")
        custom_funcs = parse_custom_funcs(custom_funcs_path)
        print(f"// Found {len(custom_funcs)} custom func(s)")
        process_custom_funcs(custom_funcs, regions, symbols, rom_a, rom_b, out_dir)
    else:
        print("// No custom_funcs file specified (optional: add as 4th argument)")

    # ── ROM diff ──────────────────────────────────────────────────────────────
    diffs = diff_roms(rom_a, rom_b, regions)
    print(f"// Found {len(diffs)} differing run(s)\n")

    for rom_offset, old_bytes, new_bytes in diffs:
        print(format_patch(rom_offset, new_bytes, old_bytes,
                           regions, symbols, rom_a, rom_b, out_dir))

    for i, (addr, name) in enumerate(symbols):
        if name not in changed_funcs:
            continue

        size = None
        for j in range(i + 1, len(symbols)):
            if symbols[j][1] not in changed_funcs:
                size = symbols[j][0] - addr
                break

        if size:
            print(f"// 0x{addr:08X}  {name}  (size 0x{size:X})")
        else:
            print(f"// 0x{addr:08X}  {name}")

if __name__ == "__main__":
    main()
