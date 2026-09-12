package com.microsoft.xbox.toolkit.ui;

import java.net.URI;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEURIArg {
    private final int errorResourceId;
    private final int loadingResourceId;
    private final URI uri;

    public XLEURIArg(URI uri, int loadingResourceId, int errorResourceId) {
        this.uri = uri;
        this.loadingResourceId = loadingResourceId;
        this.errorResourceId = errorResourceId;
    }

    public XLEURIArg(URI uri) {
        this(uri, -1, -1);
    }

    public URI getUri() {
        return this.uri;
    }

    public int getLoadingResourceId() {
        return this.loadingResourceId;
    }

    public int getErrorResourceId() {
        return this.errorResourceId;
    }

    public TextureBindingOption getTextureBindingOption() {
        return new TextureBindingOption(-1, -1, this.loadingResourceId, this.errorResourceId, false);
    }

    public boolean equals(Object o) {
        if (o == null) {
            return false;
        }
        if (o == this) {
            return true;
        }
        if (!(o instanceof XLEURIArg)) {
            return false;
        }
        XLEURIArg other = (XLEURIArg) o;
        if (this.loadingResourceId == other.loadingResourceId && this.errorResourceId == other.errorResourceId) {
            return this.uri == other.uri || (this.uri != null && this.uri.equals(other.uri));
        }
        return false;
    }

    public int hashCode() {
        int hash = ((this.loadingResourceId + 13) * 17) + this.errorResourceId;
        if (this.uri != null) {
            return (hash * 23) + this.uri.hashCode();
        }
        return hash;
    }
}
