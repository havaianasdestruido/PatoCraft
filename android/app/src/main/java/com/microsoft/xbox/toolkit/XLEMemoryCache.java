package com.microsoft.xbox.toolkit;

import android.util.LruCache;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEMemoryCache<K, V> {
    private int itemCount = 0;
    private final LruCache<K, XLEMemoryCacheEntry<V>> lruCache;
    private final int maxFileSizeBytes;

    static /* synthetic */ int access$006(XLEMemoryCache x0) {
        int i = x0.itemCount - 1;
        x0.itemCount = i;
        return i;
    }

    public XLEMemoryCache(int sizeInBytes, int maxFileSizeInBytes) {
        if (sizeInBytes < 0) {
            throw new IllegalArgumentException("sizeInBytes");
        }
        if (maxFileSizeInBytes < 0) {
            throw new IllegalArgumentException("maxFileSizeInBytes");
        }
        this.maxFileSizeBytes = maxFileSizeInBytes;
        this.lruCache = sizeInBytes == 0 ? null : new LruCache<K, XLEMemoryCacheEntry<V>>(sizeInBytes) { // from class: com.microsoft.xbox.toolkit.XLEMemoryCache.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.util.LruCache
            public int sizeOf(K key, XLEMemoryCacheEntry<V> value) {
                return value.getByteCount();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.util.LruCache
            public void entryRemoved(boolean evicted, K key, XLEMemoryCacheEntry<V> oldValue, XLEMemoryCacheEntry<V> newValue) {
                XLEMemoryCache.access$006(XLEMemoryCache.this);
            }
        };
    }

    public int getBytesCurrent() {
        if (this.lruCache == null) {
            return 0;
        }
        return this.lruCache.size();
    }

    public int getItemsInCache() {
        return this.itemCount;
    }

    public int getBytesFree() {
        if (this.lruCache == null) {
            return 0;
        }
        return this.lruCache.maxSize() - this.lruCache.size();
    }

    public boolean add(K filename, V data, int fileByteCount) {
        if (fileByteCount > this.maxFileSizeBytes || this.lruCache == null) {
            return false;
        }
        XLEMemoryCacheEntry<V> entry = new XLEMemoryCacheEntry<>(data, fileByteCount);
        this.itemCount++;
        this.lruCache.put(filename, entry);
        return true;
    }

    public V get(K filename) {
        XLEMemoryCacheEntry<V> entry;
        if (this.lruCache == null || (entry = this.lruCache.get(filename)) == null) {
            return null;
        }
        V value = entry.getValue();
        return value;
    }
}
