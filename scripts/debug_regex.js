const r = /sput-object\s+v\w+,\s*Lquack\/mc\/patocraft\/R\$styleable;->(\w+):/;
const s = "    sput-object v0, Lquack/mc/patocraft/R$styleable;->CardView:[I";
const m = r.exec(s);
console.log("match:", m ? m[0] : "null", "-> name:", m ? m[1] : "null");
console.log("regex:", r.toString());
