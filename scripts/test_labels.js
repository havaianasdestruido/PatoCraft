const fs = require("fs");
const p = String.raw`C:\Users\mcmco\Desktop\patocraft\src\smali\quack\mc\patocraft\R$styleable.smali`;
const text = fs.readFileSync(p, "utf8");
const lines = text.split(/\r?\n/);

// Find array label lines
for (let i = 0; i < lines.length; i++) {
  const l = lines[i];
  if (l.includes(":array_")) {
    console.log(i, JSON.stringify(l), "hex next:", lines[i+1] ? lines[i+1].trim() : "EOF");
    break;
  }
}
console.log("---all :array lines---");
for (let i = 0; i < lines.length; i++) {
  if (lines[i].startsWith(":")) console.log(i, JSON.stringify(lines[i].trim()));
}
