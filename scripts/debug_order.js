const fs = require("fs");
const p = String.raw`C:\Users\mcmco\Desktop\patocraft\src\smali\quack\mc\patocraft\R$styleable.smali`;
const text = fs.readFileSync(p, "utf8");
const lines = text.split(/\r?\n/).map(l => l.replace(/\s+$/, ""));

const FILL_RE = /fill-array-data\s+v\w+,\s*:(\w+)/;
const SPUT_RE = /sput-object\s+v\w+,\s*Lquack\/mc\/patocraft\/R\$styleable;->(\w+):/;

const clinitStart = lines.findIndex(l => l.includes("method static constructor"));
let clinitEnd = lines.length;
if (clinitStart >= 0) {
  let depth = 0;
  for (let i = clinitStart; i < lines.length; i++) {
    if (lines[i].includes(".method")) depth++;
    if (lines[i].includes(".end method")) { depth--; if (depth === 0) { clinitEnd = i; break; } }
  }
}

console.log("clinit:", clinitStart, "to", clinitEnd);
const order = [];
let lastConst = null;
for (let i = clinitStart; i <= clinitEnd; i++) {
  const l = lines[i];
  if (l.includes("method static constructor") || l.includes(".method") || l.includes(".end method") || l.includes(".prologue") || l.includes(".locals") || l.includes(".line")) continue;
  if (!l) continue;
  const fm = l.match(FILL_RE);
  if (fm) {
    const sp = l.match(SPUT_RE);
    if (sp) order.push({ type: "fill", name: sp[1], ref: fm[1] });
    console.log("FILL:", fm[1], "->", sp ? sp[1] : "NO_SPUT");
    continue;
  }
  const cm = l.match(/const(?:\/\d+)?\s+v\w+,\s*(0x[0-9a-fA-F]+)/);
  if (cm) { lastConst = cm[1]; continue; }
  const sp = l.match(SPUT_RE);
  if (sp && lastConst) {
    order.push({ type: "inline", name: sp[1], ref: lastConst });
    console.log("APUT:", lastConst, "->", sp[1]);
    lastConst = null;
  }
}
console.log("total order:", order.length);
