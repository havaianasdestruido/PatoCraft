package org.simpleframework.xml.transform;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class DoubleTransform implements Transform<Double> {
    DoubleTransform() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.simpleframework.xml.transform.Transform
    public Double read(String value) {
        return Double.valueOf(value);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(Double value) {
        return value.toString();
    }
}
