const fs = require("fs");
const p = String.raw`C:\Users\mcmco\Desktop\patocraft\src\smali\quack\mc\patocraft\R$styleable.smali`;
const text = fs.readFileSync(p, "utf8");

const ARRAY_BLOCK_RE = /:(array_\w+)[\s\S]*?\.array-data 4\s+([\s\S]*?)\.end array-data/g;
let m, count = 0;
const all = [];
while ((m = ARRAY_BLOCK_RE.exec(text)) !== null) {
  all.push({ name: m[1], bodyLen: m[2].length });
  count++;
}
console.log("matches:", count);
console.log("sample:", all.slice(0, 3));

// Try simpler approach
const SIMPLE = /:array_0[\s\S]{0,100}\.array-data 4\s+([\s\S]{10,500}?)\.end array-data/;
const sm = SIMPLE.exec(text);
if (sm) console.log("simple found body:", sm[1].slice(0, 100));
else console.log("simple: no match");
