import os
import re
import sys

MAX_LINE = 8192
RAW_ADDR_BUF = 64
FILENAME_MAX = 4096


class Symbol:
    def __init__(self, name, address, raw_addr):
        self.name = name
        self.address = address
        self.raw_addr = raw_addr


symbols = []
insertion_order = []


def trim(s):
    return s.strip()


def is_valid_c_identifier(s):
    """Check if string is a valid C identifier."""
    if s.startswith(".") or s in ("ADDR", "LOADADDR", "SIZEOF", "build", "ASSERT", "__romPos", "load", "_ftext", "_fdata", "_gp", "_edata", "__bss_start", "_fbss"):
        return False

    if s is None or len(s) == 0:
        return False
    if not s[0].isalpha() and s[0] != '_':
        return False
    for c in s[1:]:
        if not (c.isalnum() or c == '_'):
            return False
    return True


def looks_like_number(s):
    """Check if string looks like a number or hex literal."""
    if s is None or len(s) == 0:
        return False
    if s.startswith('0x') or s.startswith('0X'):
        return all(c in '0123456789abcdefABCDEF' for c in s[2:])
    return s.isdigit()


def find_address(line):
    """Find candidate address substring."""
    pattern = r'(0x[0-9a-fA-F]+|\d+)'
    match = re.search(pattern, line)
    if match:
        return match.group(0)
    return None


def parse_address(s):
    """Parse the numeric address."""
    try:
        if s.startswith('0x') or s.startswith('0X'):
            return int(s, 16)
        return int(s, 10)
    except ValueError:
        return None


def usage(prog):
    print(f"Usage: {prog} [options] <input.map> <output.asm>")
    print("Options:")
    print("  -f <prefix>         Only accept names starting with <prefix>")
    print("  --inject-only       Generate only the _inject.asm file")
    print("  --definelabels-only Generate only the output.asm file")


def add_symbol(name, address, raw_addr):
    """Add symbol to the symbols list."""
    # Check for duplicates
    for symbol in symbols:
        if symbol.name == name:
            print(f"[dup] {name} @ {raw_addr}")
            return False  # Duplicate symbol

    symbols.append(Symbol(name, address, raw_addr))
    insertion_order.append(len(symbols) - 1)
    return True


def strip_asm_ext(input_str):
    """Remove .asm extension from file name."""
    if input_str.endswith(".asm"):
        return input_str[:-4]
    return input_str

def batch_process_maps(root_dir, out_dir, prefix_filter=None, inject_only=False, definelabels_only=False):
    os.makedirs(out_dir, exist_ok=True)

    for root, dirs, files in os.walk(root_dir):
        for file in files:
            if not file.endswith(".map"):
                continue

            inmap = os.path.join(root, file)
            rel_path = os.path.relpath(root, root_dir)
            out_subdir = os.path.join(out_dir, rel_path)
            os.makedirs(out_subdir, exist_ok=True)

            base = os.path.splitext(file)[0]
            outasm = os.path.join(out_subdir, base + ".asm")

            print(f"[+] {inmap} -> {outasm}")

            global symbols, insertion_order
            symbols = []
            insertion_order = []

            process_single_map(inmap, outasm, prefix_filter, inject_only, definelabels_only)

SYM1 = re.compile(r'(0x[0-9A-Fa-f]+|\d+)\s+([A-Za-z_][A-Za-z0-9_]*)')   # addr name
SYM2 = re.compile(r'([A-Za-z_][A-Za-z0-9_]*)\s*=\s*(0x[0-9A-Fa-f]+|\d+)') # name = addr


def process_single_map(inmap, outasm, prefix_filter=None, inject_only=False, definelabels_only=False):
    global symbols, insertion_order
    symbols = []
    insertion_order = []

    try:
        with open(inmap, "r") as fin:
            outlabel = strip_asm_ext(outasm)
            outlabel_upper = os.path.basename(outlabel).upper()
            os.makedirs(os.path.dirname(outasm), exist_ok=True)

            fout = None
            finject = None

            if inject_only and definelabels_only:
                print("Error: cannot use both --inject-only and --definelabels-only")
                sys.exit(1)


            if not inject_only:
                fout = open(outasm, "w")
                fout.write(f".ifndef _{outlabel_upper}_ASM_\n")
                fout.write(f".definelabel _{outlabel_upper}_ASM_, 1\n\n")

            if not definelabels_only:
                inject_name = strip_asm_ext(outasm) + "_inject.asm"
                finject = open(inject_name, "w")
                finject.write(f".ifndef _{outlabel_upper}_INJECT_ASM_\n")
                finject.write(f".definelabel _{outlabel_upper}_INJECT_ASM_, 1\n\n")

            for line in fin:
                name = None
                addr_pos = None

                m = SYM1.search(line)
                if m:
                    addr_pos, name = m.group(1), m.group(2)
                else:
                    m = SYM2.search(line)
                    if m:
                        name, addr_pos = m.group(1), m.group(2)

                if not name or not addr_pos:
                    continue
                addr_val = parse_address(addr_pos)
                if addr_val is None:
                    continue

                if not is_valid_c_identifier(name):
                    continue
                if prefix_filter and not name.startswith(prefix_filter):
                    continue

                add_symbol(name, addr_val, addr_pos)

            # definelabels
            if fout:
                for idx in insertion_order:
                    sym = symbols[idx]
                    fout.write(f".definelabel {sym.name}, {sym.raw_addr}\n")
                fout.write("\n.endif\n")
                fout.close()

            # inject file
            if finject:
                for i, idx in enumerate(insertion_order):
                    curr = symbols[idx]
                    next_sym = symbols[idx + 1] if idx + 1 < len(symbols) else None

                    finject.write(f"/* {curr.name} */\n")
                    finject.write(f".org {curr.raw_addr}\n")

                    if next_sym:
                        finject.write(f".area {next_sym.raw_addr} - {curr.raw_addr}, 0\n")
                        finject.write(".importobj \"\"\n")
                        finject.write(".endarea\n\n")
                    else:
                        finject.write("/* .area ??? */\n\n")

                finject.write(".endif\n")
                finject.close()

    except Exception as e:
        print(f"Error processing {inmap}: {e}")

def main():
    prefix_filter = None
    inject_only = False
    definelabels_only = False
    recursive = False

    argi = 1
    while argi < len(sys.argv) and sys.argv[argi].startswith('-'):
        if sys.argv[argi] == "-f":
            prefix_filter = sys.argv[argi+1]
            argi += 2
        elif sys.argv[argi] == "--inject-only":
            inject_only = True
            argi += 1
        elif sys.argv[argi] == "--definelabels-only":
            definelabels_only = True
            argi += 1
        elif sys.argv[argi] == "--recursive":
            recursive = True
            argi += 1
        else:
            usage(sys.argv[0])
            return 1

    if recursive:
        root = sys.argv[argi] if argi < len(sys.argv) else "."
        batch_process_maps(root, sys.argv[argi+1], prefix_filter, inject_only, definelabels_only)
        return 0


    # single-file mode
    if argi + 2 != len(sys.argv):
        usage(sys.argv[0])
        return 1

    process_single_map(sys.argv[argi], sys.argv[argi+1], prefix_filter, inject_only, definelabels_only)

if __name__ == "__main__":
    sys.exit(main())

