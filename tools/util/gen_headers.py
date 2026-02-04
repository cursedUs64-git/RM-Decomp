#!/usr/bin/env python3
import os
import re
import shutil
import argparse

INCLUDE_RE = re.compile(r'#include\s+"([^"]+)"')

def ensure_dir(path):
    os.makedirs(path, exist_ok=True)

def mirror_headers(src_root, out_root):
    for root, _, files in os.walk(src_root):
        # only .h files
        headers = [f for f in files if f.endswith(".h")]
        if not headers:
            continue  # skip empty dirs completely

        rel = os.path.relpath(root, src_root)
        out_dir = os.path.join(out_root, rel)
        os.makedirs(out_dir, exist_ok=True)

        for f in headers:
            src = os.path.join(root, f)
            dst = os.path.join(out_dir, f)
            shutil.copy2(src, dst)

def collect_includes(src_root):
    """
    Parse .c and .cpp files and collect includes.
    """
    includes = set()
    for root, _, files in os.walk(src_root):
        for f in files:
            if f.endswith((".c")):
                path = os.path.join(root, f)
                with open(path, "r", errors="ignore") as fp:
                    for line in fp:
                        m = INCLUDE_RE.search(line)
                        if m:
                            includes.add(m.group(1))
    return includes

def filter_existing(includes, out_root):
    """
    Keep only includes that exist in output tree.
    """
    valid = set()
    for inc in includes:
        if os.path.exists(os.path.join(out_root, inc)):
            valid.add(inc)
    return valid

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("src", help="source root")
    ap.add_argument("out", help="output root")
    ap.add_argument("--name", default="all", help="global header name prefix")
    args = ap.parse_args()

    src = os.path.abspath(args.src)
    out = os.path.abspath(args.out)

    print("[*] mirroring headers...")
    mirror_headers(src, out)

    print("[*] collecting includes...")
    includes = collect_includes(src)

    print("[*] filtering includes by real files...")
    valid = filter_existing(includes, out)

    print(f"[*] {len(valid)} valid includes")

if __name__ == "__main__":
    main()

