package com.microsoft.xbox.toolkit.ui;

import com.microsoft.xbox.toolkit.XLEFileCacheItemKey;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class TextureManagerScaledNetworkBitmapRequest implements XLEFileCacheItemKey {
    public final TextureBindingOption bindingOption;
    public final String url;

    public TextureManagerScaledNetworkBitmapRequest(String url) {
        this(url, new TextureBindingOption());
    }

    public TextureManagerScaledNetworkBitmapRequest(String url, TextureBindingOption option) {
        this.url = url;
        this.bindingOption = option;
    }

    public boolean equals(Object rhsuntyped) {
        if (this == rhsuntyped) {
            return true;
        }
        if (!(rhsuntyped instanceof TextureManagerScaledNetworkBitmapRequest)) {
            return false;
        }
        TextureManagerScaledNetworkBitmapRequest rhs = (TextureManagerScaledNetworkBitmapRequest) rhsuntyped;
        return this.url.equals(rhs.url) && this.bindingOption.equals(rhs.bindingOption);
    }

    public int hashCode() {
        if (this.url == null) {
            return 0;
        }
        return this.url.hashCode();
    }

    @Override // com.microsoft.xbox.toolkit.XLEFileCacheItemKey
    public String getKeyString() {
        return this.url;
    }
}
