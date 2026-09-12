package org.simpleframework.xml.transform;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ByteTransform implements Transform<Byte> {
    ByteTransform() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.simpleframework.xml.transform.Transform
    public Byte read(String value) {
        return Byte.valueOf(value);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(Byte value) {
        return value.toString();
    }
}
