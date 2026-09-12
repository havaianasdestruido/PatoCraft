package com.microsoft.onlineid.internal.ui;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Typeface;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public enum Fonts {
    SegoeUI("segoeui", null, 0),
    SegoeUILight("segoeuil", "sans-serif-thin", 0),
    SegoeUISemiBold("seguisb", null, 1);

    private String _fallbackFamilyName;
    private int _fallbackStyle;
    private String _filename;
    private Typeface _typeface = null;
    private boolean _loadFailed = false;

    Fonts(String filename, String fallbackFamilyName, int fallbackStyle) {
        this._filename = filename;
        this._fallbackFamilyName = fallbackFamilyName;
        this._fallbackStyle = fallbackStyle;
    }

    public Typeface getTypeface(Context context) {
        Typeface typeface;
        synchronized (this) {
            if (this._typeface == null && !this._loadFailed) {
                AssetManager manager = context.getAssets();
                try {
                    this._typeface = Typeface.createFromAsset(manager, String.format("fonts/%s.ttf", this._filename));
                } catch (RuntimeException e) {
                    this._typeface = Typeface.create(this._fallbackFamilyName, this._fallbackStyle);
                }
                this._loadFailed = this._typeface == null;
                typeface = this._typeface;
            } else {
                typeface = this._typeface;
            }
            throw th;
        }
        return typeface;
    }
}
