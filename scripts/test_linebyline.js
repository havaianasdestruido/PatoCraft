const fs = require("fs");
const p = String.raw`C:\Users\mcmco\Desktop\patocraft\src\smali\quack\mc\patocraft\R$styleable.smali`;
const text = fs.readFileSync(p, "utf8");

// Build array data map by scanning line-by-line and tracking :array_X labels
const arrData = {};
const lines = text.split(/\r?\n/);
let curArr = null;
let curBody = [];
for (const line of lines) {
  const labelMatch = line.match(/^:array_(\w+)/);
  if (labelMatch) {
    if (curArr && curBody.length) arrData[curArr] = curBody;
    curArr = labelMatch[1];
    curBody = [];
    continue;
  }
  if (curArr) {
    const hexes = line.match(/0x[0-9a-fA-F]+/g);
    if (hexes) curBody.push(...hexes);
    if (line.includes(".end array-data")) {
      arrData[curArr] = curBody;
      curArr = null;
      curBody = [];
    }
  }
}
if (curArr && curBody.length) arrData[curArr] = curBody;

const keys = Object.keys(arrData);
console.log("arrays found:", keys.length);
for (const k of keys.slice(0, 5)) console.log(" ", k, "->", arrData[k].length, "vals:", arrData[k].slice(0,3));
console.log("array_7:", arrData["array_7"]);

// Now test FIELD_RE
const FIELD_RE = /^\.field public static final (\w+):(\[[IZ]|[IZ])(?:\s*=\s*(0x[0-9a-fA-F]+))?/;
const fields = [];
let curBlock = null;
for (const line of lines) {
  const bm = line.match(/^:(array_\w+)/);
  if (bm) { curBlock = bm[1]; continue; }
  const fm = line.match(FIELD_RE);
  if (!fm) continue;
  const name = fm[1], sig = fm[2];
  if (sig === "[I") {
    fields.push({ name, kind: "arr_ref", block: curBlock });
  } else {
    fields.push({ name, kind: "int", value: fm[3] || "0x0" });
  }
}
const arrFields = fields.filter(f => f.kind === "arr_ref");
console.log("arr fields:", arrFields.length);
for (const f of arrFields.slice(0,3)) console.log(" ", f.name, "block:", f.block, "data:", arrData[f.block] || "MISSING");
