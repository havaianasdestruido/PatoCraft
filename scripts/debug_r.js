const fs = require("fs");
const path = require("path");

const smaliFile = path.join(process.env.USERPROFILE || "", "Desktop", "patocraft", "src", "smali", "quack", "mc", "patocraft", "R$styleable.smali");
const text = fs.readFileSync(smaliFile, "utf8");
const lines = text.split(/\r?\n/);

const FIELD_RE = /^\.field public static final (\w+):([\[IZ])(?:\s*=\s*(0x[0-9a-fA-F]+|\[I))?/;

const arr_refs = [];
const ints = [];
for (const line of lines) {
  const m = line.match(FIELD_RE);
  if (!m) continue;
  const name = m[1], sig = m[2];
  if (sig === "[I") arr_refs.push(name);
  else ints.push(name + "=" + m[3]);
}

console.log("arr_ref fields:", arr_refs.length, arr_refs);
console.log("int fields:", ints.length, ints.slice(0,3));
