package org.simpleframework.xml.stream;

import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Builder implements Style {
    private final Cache<String> attributes = new ConcurrentCache();
    private final Cache<String> elements = new ConcurrentCache();
    private final Style style;

    public Builder(Style style) {
        this.style = style;
    }

    @Override // org.simpleframework.xml.stream.Style
    public String getAttribute(String name) {
        String value = this.attributes.fetch(name);
        if (value != null) {
            return value;
        }
        String value2 = this.style.getAttribute(name);
        if (value2 != null) {
            this.attributes.cache(name, value2);
        }
        return value2;
    }

    @Override // org.simpleframework.xml.stream.Style
    public String getElement(String name) {
        String value = this.elements.fetch(name);
        if (value != null) {
            return value;
        }
        String value2 = this.style.getElement(name);
        if (value2 != null) {
            this.elements.cache(name, value2);
        }
        return value2;
    }

    public void setAttribute(String name, String value) {
        this.attributes.cache(name, value);
    }

    public void setElement(String name, String value) {
        this.elements.cache(name, value);
    }
}
