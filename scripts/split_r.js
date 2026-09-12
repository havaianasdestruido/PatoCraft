const fs = require("fs");
const path = require("path");

const PKG = "quack.mc.patocraft";
const OUT = "C:\\Users\\mcmco\\Desktop\\patocraft\\build\\java-src\\sources\\quack\\mc\\patocraft";
const SMALI_DIR = "C:\\Users\\mcmco\\Desktop\\patocraft\\src\\smali\\quack\\mc\\patocraft";
const SUBCLASSES = ["attr","color","dimen","drawable","id","integer","layout","menu","raw","string","style","styleable"];

const FIELD_RE = /^\.field public static final (\w+):(\[[IZ]|[IZ])(?:\s*=\s*(0x[0-9a-fA-F]+))?/;
const FILL_RE = /fill-array-data\s+v\w+,\s*:(\w+)/;
const SPUT_RE = /sput-object\s+v\w+,\s*Lquack\/mc\/patocraft\/R\$styleable;->(\w+):/;
const ARRAY_LABEL_RE = /^\s*:(\w+)/;
const HEX_RE = /0x[0-9a-fA-F]+/g;
const END_ARRAY_RE = /\.end array-data/;

function parseSmali(file) {
  const text = fs.readFileSync(file, "utf8");
  const lines = text.split(/\r?\n/).map(l => l.replace(/\s+$/, ""));

  // Extract array data blocks (applies to R$styleable)
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

  // Parse clinit: track register values, match to styleable field names.
  // Strategy: scan all instructions; when we see fill-array-data v0,:X, remember v0 gets array_X.
  // When we see sput-object v0, ->Field:[I, look up what v0 holds.
  const order = [];
  const clinitStart = lines.findIndex(l => l.includes("method static constructor"));
  if (clinitStart >= 0) {
    let clinitEnd = lines.length, depth = 0;
    for (let i = clinitStart; i < lines.length; i++) {
      if (lines[i].includes(".method")) depth++;
      if (lines[i].includes(".end method")) { depth--; if (depth === 0) { clinitEnd = i; break; } }
    }
    const regVal = {}; // register -> {type, ref}  type in {"inline","fill"}
    const regArr = {}; // array register -> { [idx]: val }
    for (let i = clinitStart; i <= clinitEnd; i++) {
      const l = lines[i];
      if (!l) continue;
      // const vN, 0xHEX  =>  vN = 0xHEX
      const cm = l.match(/^\s*const(?:\/\d+)?\s+(v\d+),\s*(0x[0-9a-fA-F]+)/);
      if (cm) { regVal[cm[1]] = { type: "inline", ref: cm[2] }; continue; }
      // fill-array-data vArr, :X  =>  vArr is filled from array_X
      const fm = l.match(FILL_RE);
      if (fm) {
        const rm = l.match(/^\s*[\w-]+\s+(v\d+),/);
        if (rm) regArr[rm[1]] = Object.assign(regArr[rm[1]] || {}, { fillRef: fm[1] });
        continue;
      }
      // aput vN, vArr, vIdx  =>  array at vArr[regVal[vIdx]] = regVal[vN]
    const ap = l.match(/^\s*aput(?:-object|-wide|-char)?\s+(v\d+),\s*(v\d+),\s*(v\d+)/);
    if (ap) {
      const valReg = ap[1], arrReg = ap[2], idxReg = ap[3];
      const v = regVal[valReg]; const idx = regVal[idxReg];
      if (v && idx && v.type === "inline") {
        if (!regArr[arrReg]) regArr[arrReg] = { fillRef: null, inline: [] };
        const idxNum = parseInt(idx.ref, 16);
        regArr[arrReg].inline[idxNum] = v.ref;
      }
      continue;
    }
      // new-array vArr, vSize, [I  =>  initialize (reset) array register
      if (/^\s*new-array\s+/.test(l)) {
        const rm = l.match(/^\s*new-array\s+(v\d+),/);
        if (rm) regArr[rm[1]] = { fillRef: null, inline: [] };
        continue;
      }
      // sput-object vArr, ->Field:[I
      const sp = l.match(SPUT_RE);
      if (sp) {
        const regm = l.match(/^\s*sput-object\s+(v\d+),/);
        if (regm) {
          const a = regArr[regm[1]];
          if (a && a.fillRef) order.push({ name: sp[1], type: "fill", ref: a.fillRef });
          else if (a && a.inline && Object.keys(a.inline).length) {
            // Pick min key as inline representative
            const keys = Object.keys(a.inline).map(Number).sort((x,y)=>x-y);
            order.push({ name: sp[1], type: "inline", ref: a.inline[keys[0]] });
          }
        }
        continue;
      }
    }
  }

  const fields = [];
  for (const line of lines) {
    const fm = line.match(FIELD_RE);
    if (!fm) continue;
    const name = fm[1], sig = fm[2];
    if (sig === "[I") fields.push({ name, kind: "arr_ref" });
    else fields.push({ name, kind: "int", value: fm[3] || "0x0" });
  }
  return { fields, arrData, order };
}

function fmtInt(v) { return "0x" + (parseInt(v, 16) >>> 0).toString(16).padStart(8, "0"); }

function writeSubclass(sub, parsed) {
  const { fields, arrData, order } = parsed;
  const isStyleable = sub === "styleable";
  const out = [`package ${PKG};`, "", `public final class R$${sub} {`];
  if (!isStyleable) {
    for (const f of fields) if (f.kind === "int") out.push(`    public static final int ${f.name} = ${fmtInt(f.value)};`);
  } else {
    const ints = fields.filter(f => f.kind === "int");
    for (const f of ints) out.push(`    public static final int ${f.name} = ${fmtInt(f.value)};`);
    // int[] arrays live in outer R.java (matching Android aapt-generated R.java shape).
  }
  out.push("}");
  out.push("");
  fs.writeFileSync(path.join(OUT, `R$${sub}.java`), out.join("\n"));
  console.log("wrote R$" + sub + ".java");
}

function writeRMain() {
  // Outer R.java keeps just the styleable int[] arrays as static fields (so callers
  // referencing R.styleable still resolve). All other sub-classes live in R$*.java.
  const styleable = parseSmali(path.join(SMALI_DIR, "R$styleable.smali"));
  const out = [`package ${PKG};`, "", "public final class R {"];
  for (const f of styleable.fields) {
    if (f.kind === "arr_ref") {
      // Find order entry
      const oe = styleable.order.find(o => o.name === f.name);
      let block = [];
      if (oe && oe.type === "fill") block = styleable.arrData[oe.ref] || [];
      else if (oe && oe.type === "inline") block = [oe.ref];
      out.push(`    public static final int[] ${f.name} = {${block.map(fmtInt).join(", ")}};`);
    }
  }
  out.push("}");
  out.push("");
  fs.writeFileSync(path.join(OUT, "R.java"), out.join("\n"));
  console.log("wrote R.java");
}

for (const sub of SUBCLASSES) {
  const sp = path.join(SMALI_DIR, `R$${sub}.smali`);
  if (!fs.existsSync(sp)) continue;
  writeSubclass(sub, parseSmali(sp));
}
writeRMain();
