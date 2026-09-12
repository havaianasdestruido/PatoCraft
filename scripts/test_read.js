const fs = require("fs");
const p = String.raw`C:\Users\mcmco\Desktop\patocraft\src\smali\quack\mc\patocraft\R$styleable.smali`;
const t = fs.readFileSync(p, "utf8");
console.log(t.split("\n").length, "lines");
console.log(t.split("\n").slice(0, 5));
