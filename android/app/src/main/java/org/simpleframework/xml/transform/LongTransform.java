package org.simpleframework.xml.transform;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class LongTransform implements Transform<Long> {
    LongTransform() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.simpleframework.xml.transform.Transform
    public Long read(String value) {
        return Long.valueOf(value);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(Long value) {
        return value.toString();
    }
}
