const r = /sput-object\s+v\w+,\s*Lquack\/mc\/patocraft\/R\$styleable;->(\w+):/;
const s = "    sput-object v0, Lquack/mc/patocraft/R$styleable;->CardView:[I";
console.log("regex:", r.toString());
console.log("match:", r.exec(s));
