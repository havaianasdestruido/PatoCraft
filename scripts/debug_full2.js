const fs = require("fs");
const path = require("path");
const smaliDir = "C:/Users/mcmco/Desktop/patocraft/src/smali/quack/mc/patocraft";
const sp = path.join(smaliDir, "R$styleable.smali");
console.log("path:", sp);
console.log("exists:", fs.existsSync(sp));
const text = fs.readFileSync(sp, "utf8");
const lines = text.split(/\r?\n/).map(l => l.replace(/\s+$/, ""));
console.log("lines:", lines.length);

const FILL_RE = /fill-array-data\s+v\w+,\s*:(\w+)/;
const SPUT_RE = /sput-object\s+v\w+,\s*Lquack\/mc\/patocraft\/R\$styleable;->(\w+):/;
const ARRAY_LABEL_RE = /^\s*:(\w+)/;
const HEX_RE = /0x[0-9a-fA-F]+/g;
const END_ARRAY_RE = /\.end array-data/;

const arrData = {};
let curArr = null, curBody = [];
for (const line of lines) {
  const lm = line.match(ARRAY_LABEL_RE);
  if (lm && !line.includes("fill-array-data")) {
    if (curArr !== null && curBody.length) arrData[curArr] = curBody;
    curArr = lm[1]; curBody = []; continue;
  }
  if (curArr !== null) {
    if (HEX_RE.test(line)) curBody.push(...line.match(HEX_RE));
    if (END_ARRAY_RE.test(line)) { arrData[curArr] = curBody; curArr = null; curBody = []; }
  }
}
if (curArr !== null && curBody.length) arrData[curArr] = curBody;
console.log("arrays found:", Object.keys(arrData).length, Object.keys(arrData).slice(0,3));

const order = [];
const clinitStart = lines.findIndex(l => l.includes("method static constructor"));
if (clinitStart >= 0) {
  let clinitEnd = lines.length, depth = 0;
  for (let i = clinitStart; i < lines.length; i++) {
    if (lines[i].includes(".method")) depth++;
    if (lines[i].includes(".end method")) { depth--; if (depth === 0) { clinitEnd = i; break; } }
  }
  let lastConst = null;
  for (let i = clinitStart; i <= clinitEnd; i++) {
    const l = lines[i];
    if (!l || l.startsWith(".method") || l.startsWith(".end method") || l.startsWith(".prologue") || l.startsWith(".locals") || l.startsWith(".line") || l.startsWith("nop") || l.startsWith("return")) continue;
    const fm = l.match(FILL_RE);
    if (fm) {
      let name = null;
      const sp_m = l.match(SPUT_RE);
      if (sp_m) name = sp_m[1];
      else { const nm = (lines[i+1] || "").match(SPUT_RE); if (nm) name = nm[1]; }
      if (name) order.push({ type: "fill", name, ref: fm[1] });
      lastConst = null; continue;
    }
    const cm = l.match(/const(?:\/\d+)?\s+v\w+,\s*(0x[0-9a-fA-F]+)/);
    if (cm) { lastConst = cm[1]; continue; }
    const sp_m = l.match(SPUT_RE);
    if (sp_m && lastConst) { order.push({ type: "inline", name: sp_m[1], ref: lastConst }); lastConst = null; }
  }
}
console.log("order:", order.length, order.slice(0,5));
