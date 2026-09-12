#!/usr/bin/env python3
"""Split JADX monolithic R.java into per-subclass top-level files."""
import re, os, sys
from pathlib import Path

PKG = "quack.mc.patocraft"
OUT = Path(r"C:\Users\mcmco\Desktop\patocraft\build\java-src\sources\quack\mc\patocraft")
SMALI_DIR = Path(r"C:\Users\mcmco\Desktop\patocraft\src\smali\quack\mc\patocraft")

SUBCLASSES = ["attr","color","dimen","drawable","id","integer","layout","menu","raw","string","style","styleable"]

FIELD_RE = re.compile(r"^\.field public static final (\w+):([I\Z])(?:\s*=\s*(0x[0-9a-fA-F]+|\[I))?")
ARRAY_DATA_BLOCKS = {}  # name -> list[str] of int literals

def parse_smali(path: Path):
    fields = []          # (name, kind, value)  kind in {"int","arr"}
    arr_data = {}        # name -> [int,...]
    text = path.read_text()
    # Find :array_X blocks first
    blocks = re.findall(r":(array_\w+)\s+.*?\.array-data 4\s+(.*?)\.end array-data", text, re.S)
    for name, body in blocks:
        ints = re.findall(r"0x[0-9a-fA-F]+", body)
        arr_data[name] = ints
    # Now scan fields in order, tracking current :array_X for "fill-array-data"
    cur_block = None
    lines = text.splitlines()
    for line in lines:
        m = re.match(r":(array_\w+)", line)
        if m:
            cur_block = m.group(1)
            continue
        m = FIELD_RE.match(line)
        if not m:
            continue
        name, sig = m.group(1), m.group(2)
        # Skip array reference fields whose data we treat separately
        if sig == "[I":
            # Either direct value (some R$styleable fields) or filled later
            fields.append((name, "arr_ref", None))
            continue
        val = m.group(3)
        fields.append((name, "int", val))
    return fields, arr_data

def fmt_int(v):
    return f"0x{int(v,16):08x}"

def write_subclass(sub, fields, arr_data):
    is_styleable = (sub == "styleable")
    out = [f"package {PKG};", "", f"public final class R${sub} {{"]
    if not is_styleable:
        for name, kind, val in fields:
            out.append(f"    public static final int {name} = {fmt_int(val)};")
    else:
        # Emit int constants in order, then int[] arrays at end
        int_fields = [(n,v) for n,k,v in fields if k=="int"]
        arr_refs   = [n for n,k,v in fields if k=="arr_ref"]
        for name, val in int_fields:
            out.append(f"    public static final int {name} = 0x{int(val,16):08x};")
        out.append("")
        for name in arr_refs:
            block = arr_data.get(f"array_{name}", None)
            if block is None:
                # Fallback empty
                out.append(f"    public static final int[] {name} = new int[0];")
                continue
            # Build array literal with android.R.attr.* translation for known 0x10100xx
            parts = []
            for v in block:
                iv = int(v,16)
                if (iv >> 24) == 0x01:
                    # Android system attr: look up by full hex id
                    parts.append(f"android.R.attr.{sysattr_name(iv) if False else hex(iv)}")  # leave as int
                else:
                    parts.append(hex(iv))
            # Use plain int literals (avoids lookup of android.R.attr symbol names)
            joined = ", ".join(hex(int(v,16)) for v in block)
            out.append(f"    public static final int[] {name} = {{{joined}}};")
    out.append("}")
    out.append("")
    (OUT / f"R${sub}.java").write_text("\n".join(out))

def sysattr_name(v):
    # Minimal table; we won't use it (keep int literals)
    return None

def write_r_main():
    """Write outer R.java containing only the styleable[] arrays (and other arrays per smali R$styleable).
       Since arrays live in R$styleable per task spec, keep R.java minimal but with styleable+style arrays."""
    # Spec: 'standard content (e.g. R$styleable[], R$style[], R$string[] arrays)'.
    # Use R$styleable's array data for styleable; reuse smali style array? style has no arrays.
    # Simpler: outer R has the styleable int[] arrays copied from R$styleable + style list + nothing else.
    fields, arr_data = parse_smali(SMALI_DIR / "R$styleable.smali")
    arr_refs = [n for n,k,v in fields if k=="arr_ref"]
    out = [f"package {PKG};", "", "public final class R {"]
    for name in arr_refs:
        block = arr_data.get(f"array_{name}", [])
        joined = ", ".join(hex(int(v,16)) for v in block)
        out.append(f"    public static final int[] {name} = {{{joined}}};")
    out.append("}")
    out.append("")
    (OUT / "R.java").write_text("\n".join(out))

def main():
    for sub in SUBCLASSES:
        f, ad = parse_smali(SMALI_DIR / f"R${sub}.smali")
        write_subclass(sub, f, ad)
        print(f"wrote R${sub}.java ({sum(1 for k,_,_ in [(1,k,v) for n,k,v in f])} fields)")
    write_r_main()
    print("wrote R.java")

if __name__ == "__main__":
    main()
