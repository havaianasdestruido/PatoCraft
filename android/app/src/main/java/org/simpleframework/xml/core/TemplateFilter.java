package org.simpleframework.xml.core;

import org.simpleframework.xml.filter.Filter;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class TemplateFilter implements Filter {
    private Context context;
    private Filter filter;

    public TemplateFilter(Context context, Filter filter) {
        this.context = context;
        this.filter = filter;
    }

    @Override // org.simpleframework.xml.filter.Filter
    public String replace(String name) {
        Object value = this.context.getAttribute(name);
        return value != null ? value.toString() : this.filter.replace(name);
    }
}
