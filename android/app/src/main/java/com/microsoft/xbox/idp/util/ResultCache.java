package com.microsoft.xbox.idp.util;

import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ResultCache<R> {
    private final HashMap<Object, R> map = new HashMap<>();

    public R get(Object key) {
        return this.map.get(key);
    }

    public R put(Object key, R value) {
        return this.map.put(key, value);
    }

    public R remove(Object key) {
        return this.map.remove(key);
    }

    public void clear() {
        this.map.clear();
    }
}
