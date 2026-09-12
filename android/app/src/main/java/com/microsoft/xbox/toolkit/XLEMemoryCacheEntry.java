package com.microsoft.xbox.toolkit;

import com.facebook.share.internal.ShareConstants;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEMemoryCacheEntry<V> {
    private int byteCount;
    private V data;

    public XLEMemoryCacheEntry(V data, int byteCount) {
        if (data == null) {
            throw new IllegalArgumentException(ShareConstants.WEB_DIALOG_PARAM_DATA);
        }
        if (byteCount <= 0) {
            throw new IllegalArgumentException("byteCount");
        }
        this.data = data;
        this.byteCount = byteCount;
    }

    public int getByteCount() {
        return this.byteCount;
    }

    public V getValue() {
        return this.data;
    }
}
