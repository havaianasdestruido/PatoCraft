package org.simpleframework.xml.filter;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SystemFilter implements Filter {
    private Filter filter;

    public SystemFilter() {
        this(null);
    }

    public SystemFilter(Filter filter) {
        this.filter = filter;
    }

    @Override // org.simpleframework.xml.filter.Filter
    public String replace(String text) {
        String value = System.getProperty(text);
        if (value == null) {
            if (this.filter != null) {
                return this.filter.replace(text);
            }
            return null;
        }
        return value;
    }
}
