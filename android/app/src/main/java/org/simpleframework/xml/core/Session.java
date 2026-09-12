package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
final class Session implements Map {
    private final Map map;
    private final boolean strict;

    public Session() {
        this(true);
    }

    public Session(boolean strict) {
        this.map = new HashMap();
        this.strict = strict;
    }

    public boolean isStrict() {
        return this.strict;
    }

    public Map getMap() {
        return this.map;
    }

    @Override // java.util.Map
    public int size() {
        return this.map.size();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override // java.util.Map
    public boolean containsKey(Object name) {
        return this.map.containsKey(name);
    }

    @Override // java.util.Map
    public boolean containsValue(Object value) {
        return this.map.containsValue(value);
    }

    @Override // java.util.Map
    public Object get(Object name) {
        return this.map.get(name);
    }

    @Override // java.util.Map
    public Object put(Object name, Object value) {
        return this.map.put(name, value);
    }

    @Override // java.util.Map
    public Object remove(Object name) {
        return this.map.remove(name);
    }

    @Override // java.util.Map
    public void putAll(Map data) {
        this.map.putAll(data);
    }

    @Override // java.util.Map
    public Set keySet() {
        return this.map.keySet();
    }

    @Override // java.util.Map
    public Collection values() {
        return this.map.values();
    }

    @Override // java.util.Map
    public Set entrySet() {
        return this.map.entrySet();
    }

    @Override // java.util.Map
    public void clear() {
        this.map.clear();
    }
}
