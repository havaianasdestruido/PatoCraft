package org.simpleframework.xml.filter;

import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MapFilter implements Filter {
    private Filter filter;
    private Map map;

    public MapFilter(Map map) {
        this(map, null);
    }

    public MapFilter(Map map, Filter filter) {
        this.filter = filter;
        this.map = map;
    }

    @Override // org.simpleframework.xml.filter.Filter
    public String replace(String text) {
        Object value = null;
        if (this.map != null) {
            value = this.map.get(text);
        }
        if (value != null) {
            return value.toString();
        }
        if (this.filter != null) {
            return this.filter.replace(text);
        }
        return null;
    }
}
