package org.simpleframework.xml.transform;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ShortTransform implements Transform<Short> {
    ShortTransform() {
    }

    @Override // org.simpleframework.xml.transform.Transform
    public Short read(String value) {
        return Short.valueOf(value);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(Short value) {
        return value.toString();
    }
}
