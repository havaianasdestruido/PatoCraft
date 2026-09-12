package com.microsoft.onlineid.internal.ui;

import com.microsoft.onlineid.internal.profile.DownloadProfileImageTask;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public enum Mimetype {
    JAVASCRIPT(".js", "application/javascript"),
    PNG(DownloadProfileImageTask.UserTileExtension, "image/png"),
    SVG(".svg", "image/svg+xml"),
    CSS(".css", "text/css"),
    FONT(".woff", "application/x-font-woff");

    private static final HashMap<String, Mimetype> _map = new HashMap<>();
    private final String _mimetype;
    private final String _suffix;

    static {
        for (Mimetype mimetype : values()) {
            _map.put(mimetype._suffix, mimetype);
        }
    }

    Mimetype(String suffix, String mimetype) {
        this._suffix = suffix;
        this._mimetype = mimetype;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this._mimetype;
    }

    public static Mimetype findFromFilename(String filename) {
        if (filename == null) {
            return null;
        }
        int suffixPosition = filename.lastIndexOf(46);
        return _map.get(filename.substring(suffixPosition));
    }
}
