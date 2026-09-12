const fs = require("fs");
const path = require("path");
const smaliDir = "C:/Users/mcmco/Desktop/patocraft/src/smali/quack/mc/patocraft";
const text = fs.readFileSync(path.join(smaliDir, "R$styleable.smali"), "utf8");
const lines = text.split(/\r?\n/).map(l => l.replace(/\s+$/, ""));

const FILL_RE = /fill-array-data\s+v\w+,\s*:(\w+)/;
const SPUT_RE = /sput-object\s+v\w+,\s*Lquack\/mc\/patocraft\/R\$styleable;->(\w+):/;

for (let i = 240; i < 275; i++) {
  const l = lines[i];
  if (!l) continue;
  const f = FILL_RE.test(l);
  const s = SPUT_RE.test(l);
  if (f || s || l.includes("sput-object") || l.includes("fill-array-data")) {
    console.log(i, f ? "FILL" : "    ", s ? "SPUT" : "    ", JSON.stringify(l));
  }
}
