package com.microsoft.xbox.idp.util;

import android.graphics.Bitmap;
import android.util.LruCache;
import com.microsoft.xbox.idp.toolkit.BitmapLoader;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class BitmapLoaderCache implements BitmapLoader.Cache {
    private final LruCache<Object, Bitmap> cache;

    public BitmapLoaderCache(int numOfEntries) {
        this.cache = new LruCache<>(numOfEntries);
    }

    @Override // com.microsoft.xbox.idp.toolkit.BitmapLoader.Cache
    public Bitmap get(Object key) {
        return this.cache.get(key);
    }

    @Override // com.microsoft.xbox.idp.toolkit.BitmapLoader.Cache
    public Bitmap put(Object key, Bitmap value) {
        return this.cache.put(key, value);
    }

    @Override // com.microsoft.xbox.idp.toolkit.BitmapLoader.Cache
    public Bitmap remove(Object key) {
        return this.cache.remove(key);
    }

    @Override // com.microsoft.xbox.idp.toolkit.BitmapLoader.Cache
    public void clear() {
        this.cache.evictAll();
    }
}
