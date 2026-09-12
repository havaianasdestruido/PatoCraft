package org.simpleframework.xml.transform;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class IntegerTransform implements Transform<Integer> {
    IntegerTransform() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.simpleframework.xml.transform.Transform
    public Integer read(String value) {
        return Integer.valueOf(value);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(Integer value) {
        return value.toString();
    }
}
