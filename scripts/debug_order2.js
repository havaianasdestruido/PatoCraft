const fs = require("fs");
const p = String.raw`C:\Users\mcmco\Desktop\patocraft\src\smali\quack\mc\patocraft\R$styleable.smali`;
const text = fs.readFileSync(p, "utf8");
const lines = text.split(/\r?\n/).map(l => l.replace(/\s+$/, ""));

const FILL_RE = /fill-array-data\s+v\w+,\s*:(\w+)/;
const SPUT_RE = /sput-object\s+v\w+,\s*Lquack\/mc\/patocraft\/R\$styleable;->(\w+):/;

const clinitStart = lines.findIndex(l => l.includes("method static constructor"));
let clinitEnd = lines.length;
let depth = 0;
for (let i = clinitStart; i < lines.length; i++) {
  if (lines[i].includes(".method")) depth++;
  if (lines[i].includes(".end method")) { depth--; if (depth === 0) { clinitEnd = i; break; } }
}

const order = [];
let lastConst = null;
for (let i = clinitStart; i <= clinitEnd; i++) {
  const l = lines[i];
  if (!l || l.startsWith(".method") || l.startsWith(".end method") || l.startsWith(".prologue") || l.startsWith(".locals") || l.startsWith(".line") || l.startsWith("nop") || l.startsWith("return")) continue;
  const fm = l.match(FILL_RE);
  if (fm) {
    let name = null;
    const sp = l.match(SPUT_RE);
    if (sp) name = sp[1];
    else {
      const next = lines[i+1] || "";
      const nm = next.match(SPUT_RE);
      if (nm) name = nm[1];
    }
    if (name) order.push({ type: "fill", name, ref: fm[1] });
    lastConst = null;
    continue;
  }
  const cm = l.match(/const(?:\/\d+)?\s+v\w+,\s*(0x[0-9a-fA-F]+)/);
  if (cm) { lastConst = cm[1]; continue; }
  const sp = l.match(SPUT_RE);
  if (sp && lastConst) {
    order.push({ type: "inline", name: sp[1], ref: lastConst });
    lastConst = null;
  }
}
console.log("total order:", order.length);
console.log(order);
