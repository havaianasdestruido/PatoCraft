package org.simpleframework.xml.stream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class HyphenStyle implements Style {
    private final Style style = new HyphenBuilder();
    private final Builder builder = new Builder(this.style);

    @Override // org.simpleframework.xml.stream.Style
    public String getAttribute(String name) {
        return this.builder.getAttribute(name);
    }

    public void setAttribute(String name, String value) {
        this.builder.setAttribute(name, value);
    }

    @Override // org.simpleframework.xml.stream.Style
    public String getElement(String name) {
        return this.builder.getElement(name);
    }

    public void setElement(String name, String value) {
        this.builder.setElement(name, value);
    }
}
