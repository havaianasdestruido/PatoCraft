package org.simpleframework.xml.util;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ConcurrentCache<T> extends ConcurrentHashMap<Object, T> implements Cache<T> {
    @Override // org.simpleframework.xml.util.Cache
    public void cache(Object key, T value) {
        put(key, value);
    }

    @Override // org.simpleframework.xml.util.Cache
    public T take(Object key) {
        return remove(key);
    }

    @Override // org.simpleframework.xml.util.Cache
    public T fetch(Object key) {
        return get(key);
    }

    @Override // java.util.concurrent.ConcurrentHashMap, org.simpleframework.xml.util.Cache
    public boolean contains(Object key) {
        return containsKey(key);
    }
}
