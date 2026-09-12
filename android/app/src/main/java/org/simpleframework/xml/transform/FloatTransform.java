package org.simpleframework.xml.transform;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class FloatTransform implements Transform<Float> {
    FloatTransform() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.simpleframework.xml.transform.Transform
    public Float read(String value) {
        return Float.valueOf(value);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(Float value) {
        return value.toString();
    }
}
