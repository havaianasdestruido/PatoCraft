const fs = require("fs");
const path = require("path");
const smaliDir = "C:/Users/mcmco/Desktop/patocraft/src/smali/quack/mc/patocraft";
const text = fs.readFileSync(path.join(smaliDir, "R$styleable.smali"), "utf8");
const lines = text.split(/\r?\n/).map(l => l.replace(/\s+$/, ""));

const FILL_RE = /fill-array-data\s+v\w+,\s*:(\w+)/;
const SPUT_RE = /sput-object\s+v\w+,\s*Lquack\/mc\/patocraft\/R\$styleable;->(\w+):/;

const clinitStart = lines.findIndex(l => l.includes("method static constructor"));
console.log("clinitStart:", clinitStart);
if (clinitStart >= 0) {
  let clinitEnd = lines.length, depth = 0;
  for (let i = clinitStart; i < lines.length; i++) {
    if (lines[i].includes(".method")) depth++;
    if (lines[i].includes(".end method")) { depth--; if (depth === 0) { clinitEnd = i; break; } }
  }
  console.log("clinit:", clinitStart, "to", clinitEnd);

  const regVal = {};
  const regArr = {};
  let order = [];
  for (let i = clinitStart; i <= clinitEnd; i++) {
    const l = lines[i];
    if (!l) continue;
    const cm = l.match(/^\s*const(?:\/\d+)?\s+(v\d+),\s*(0x[0-9a-fA-F]+)/);
    if (cm) { console.log("CONST:", cm[1], cm[2]); regVal[cm[1]] = { type: "inline", ref: cm[2] }; continue; }
    const fm = l.match(FILL_RE);
    if (fm) {
      const rm = l.match(/^\s*\w+\s+(v\d+),/);
      console.log("FILL:", rm ? rm[1] : "?", fm[1]);
      if (rm) regArr[rm[1]] = { fillRef: fm[1] };
      continue;
    }
    const ap = l.match(/^\s*aput(?:-object|-wide|-char)?\s+(v\d+),\s*(v\d+),\s*(v\d+)/);
    if (ap) { console.log("APUT:", ap[1], "into", ap[2], "at", ap[3]); continue; }
    if (/^\s*new-array\s+/.test(l)) { const rm = l.match(/^\s*new-array\s+(v\d+),/); console.log("NEW-ARRAY:", rm ? rm[1] : "?"); if (rm) regArr[rm[1]] = { fillRef: null, inline: [] }; continue; }
    const sp = l.match(SPUT_RE);
    if (sp) { console.log("SPUT:", sp[1]); const regm = l.match(/^\s*sput-object\s+(v\d+),/); if (regm) console.log("  reg:", regm[1], "arr:", JSON.stringify(regArr[regm[1]])); continue; }
  }
}
