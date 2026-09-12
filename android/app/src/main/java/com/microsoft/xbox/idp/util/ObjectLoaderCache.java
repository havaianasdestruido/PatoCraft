package com.microsoft.xbox.idp.util;

import com.microsoft.xbox.idp.toolkit.ObjectLoader;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ObjectLoaderCache implements ObjectLoader.Cache {
    private final HashMap<Object, ObjectLoader.Result<?>> map = new HashMap<>();

    @Override // com.microsoft.xbox.idp.toolkit.ObjectLoader.Cache
    public <T> ObjectLoader.Result<T> get(Object key) {
        return (ObjectLoader.Result) this.map.get(key);
    }

    @Override // com.microsoft.xbox.idp.toolkit.ObjectLoader.Cache
    public <T> ObjectLoader.Result<T> put(Object key, ObjectLoader.Result<T> value) {
        return (ObjectLoader.Result) this.map.put(key, value);
    }

    @Override // com.microsoft.xbox.idp.toolkit.ObjectLoader.Cache
    public <T> ObjectLoader.Result<T> remove(Object key) {
        return (ObjectLoader.Result) this.map.remove(key);
    }

    @Override // com.microsoft.xbox.idp.toolkit.ObjectLoader.Cache
    public void clear() {
        this.map.clear();
    }
}
