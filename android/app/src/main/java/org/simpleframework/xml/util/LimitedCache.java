package org.simpleframework.xml.util;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class LimitedCache<T> extends LinkedHashMap<Object, T> implements Cache<T> {
    private final int capacity;

    public LimitedCache() {
        this(50000);
    }

    public LimitedCache(int capacity) {
        this.capacity = capacity;
    }

    @Override // org.simpleframework.xml.util.Cache
    public void cache(Object key, T value) {
        put(key, value);
    }

    @Override // org.simpleframework.xml.util.Cache
    public T take(Object obj) {
        return (T) remove(obj);
    }

    @Override // org.simpleframework.xml.util.Cache
    public T fetch(Object key) {
        return get(key);
    }

    @Override // org.simpleframework.xml.util.Cache
    public boolean contains(Object key) {
        return containsKey(key);
    }

    @Override // java.util.LinkedHashMap
    protected boolean removeEldestEntry(Map.Entry<Object, T> entry) {
        return size() > this.capacity;
    }
}
