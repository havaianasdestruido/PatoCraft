const fs = require("fs");
const p = String.raw`C:\Users\mcmco\Desktop\patocraft\src\smali\quack\mc\patocraft\R$styleable.smali`;
const text = fs.readFileSync(p, "utf8");
const lines = text.split(/\r?\n/).map(l => l.replace(/\s+$/, ""));
for (let i = 260; i < 280; i++) console.log(i, JSON.stringify(lines[i]));
