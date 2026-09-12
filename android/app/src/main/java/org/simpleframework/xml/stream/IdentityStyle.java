package org.simpleframework.xml.stream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class IdentityStyle implements Style {
    IdentityStyle() {
    }

    @Override // org.simpleframework.xml.stream.Style
    public String getAttribute(String name) {
        return name;
    }

    @Override // org.simpleframework.xml.stream.Style
    public String getElement(String name) {
        return name;
    }
}
