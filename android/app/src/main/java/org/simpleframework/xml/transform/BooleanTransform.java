package org.simpleframework.xml.transform;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class BooleanTransform implements Transform<Boolean> {
    BooleanTransform() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.simpleframework.xml.transform.Transform
    public Boolean read(String value) {
        return Boolean.valueOf(value);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(Boolean value) {
        return value.toString();
    }
}
