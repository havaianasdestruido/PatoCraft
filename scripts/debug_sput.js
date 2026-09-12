const fs = require("fs");
const p = String.raw`C:\Users\mcmco\Desktop\patocraft\src\smali\quack\mc\patocraft\R$styleable.smali`;
const text = fs.readFileSync(p, "utf8");
const lines = text.split(/\r?\n/).map(l => l.replace(/\s+$/, ""));

// Find sput lines
for (let i = 0; i < lines.length; i++) {
  if (lines[i].includes("sput-object")) {
    console.log(i, JSON.stringify(lines[i]));
    if (i > 265) break;
  }
}
