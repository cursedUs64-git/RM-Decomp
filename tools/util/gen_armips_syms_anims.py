#!/usr/bin/env python3
import sys
import os

def looks_like_number(s):
    return s.startswith("0x") or s.isdigit()

def main():
    if len(sys.argv) < 2:
        print("Usage: gen_armips_syms_anims.py output.asm")
        return 1

    infile  = "mario_anim_data.txt"
    outasm  = sys.argv[1]
    base    = outasm[:-4] if outasm.endswith(".asm") else outasm
    injectf = base + "_inject.asm"

    with open(infile, "r") as f, \
         open(outasm, "w") as finj, \
         open(injectf, "w") as fout:

        finj.write(f".ifndef _{str.upper(outasm[:-4])}_ASM\n")
        finj.write(f".definelabel _{str.upper(outasm[:-4])}_ASM, 1\n\n")

        for line in f:
            line = line.strip()
            if not line or line.startswith("#"):
                continue

            parts = line.split()
            if len(parts) < 4:
                continue

            # Format:
            # name type kind size romaddr
            name = parts[0]
            typ  = parts[1]
            kind = parts[2]
            size = parts[-2]
            rom  = parts[-1]

            # Kind placeholder fix
            if kind == "-" or looks_like_number(kind):
                kind = ""

            # Comment name rule
            if typ == "Animation":
                comment = name
            else:
                comment = f"{name}_{kind}"

            # Convert decimal size → hex
            if not size.startswith("0x"):
                try:
                    size = hex(int(size))
                except:
                    pass

            # ---- OUTPUT ASM ----
            fout.write(f"/* {comment} */\n")
            fout.write(f".area {size}\n")
            fout.write(f".org {rom}\n")
            fout.write(f'.importobj ""\n')
            fout.write(".endarea\n\n")

            # ---- INJECT FILE ----
            finj.write(f".definelabel {comment}, {rom}\n")

        finj.write(f".endif")

    print(f"[+] Wrote {outasm}")
    print(f"[+] Wrote {injectf}")
    return 0

if __name__ == "__main__":
    sys.exit(main())

