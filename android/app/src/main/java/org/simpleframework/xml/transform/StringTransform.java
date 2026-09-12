package org.simpleframework.xml.transform;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class StringTransform implements Transform<String> {
    StringTransform() {
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String read(String value) {
        return value;
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(String value) {
        return value;
    }
}
