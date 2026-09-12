package com.microsoft.xbox.toolkit.ui;

import com.microsoft.xbox.toolkit.XLERValueHelper;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class TextureBindingOption {
    public static final int DO_NOT_SCALE = -1;
    public static final int DO_NOT_USE_PLACEHOLDER = -1;
    public final int height;
    public final int resourceIdForError;
    public final int resourceIdForLoading;
    public final boolean useFileCache;
    public final int width;
    public static final int DefaultResourceIdForLoading = XLERValueHelper.getDrawableRValue("empty");
    public static final int DefaultResourceIdForEmpty = XLERValueHelper.getDrawableRValue("empty");
    public static final int DefaultResourceIdForError = XLERValueHelper.getDrawableRValue("error");
    public static final TextureBindingOption DefaultBindingOption = new TextureBindingOption();
    public static final TextureBindingOption KeepAsIsBindingOption = new TextureBindingOption(-1, -1, -1, -1, false);

    public TextureBindingOption() {
        this(-1, -1, DefaultResourceIdForLoading, DefaultResourceIdForError, false);
    }

    public TextureBindingOption(int width, int height) {
        this(width, height, true);
    }

    public TextureBindingOption(int width, int height, boolean useFileCache) {
        this(width, height, DefaultResourceIdForLoading, DefaultResourceIdForError, useFileCache);
    }

    public TextureBindingOption(int width, int height, int resourceForLoading, int resourceForError, boolean useFileCache) {
        this.width = width;
        this.height = height;
        this.resourceIdForLoading = resourceForLoading;
        this.resourceIdForError = resourceForError;
        this.useFileCache = useFileCache;
    }

    public static TextureBindingOption createDoNotScale(int resourceForLoading, int resourceForError, boolean useFileCache) {
        return new TextureBindingOption(-1, -1, resourceForLoading, resourceForError, useFileCache);
    }

    public boolean equals(Object rhsuntyped) {
        if (this == rhsuntyped) {
            return true;
        }
        if (!(rhsuntyped instanceof TextureBindingOption)) {
            return false;
        }
        TextureBindingOption rhs = (TextureBindingOption) rhsuntyped;
        return this.width == rhs.width && this.height == rhs.height && this.resourceIdForError == rhs.resourceIdForError && this.resourceIdForLoading == rhs.resourceIdForLoading;
    }

    public int hashCode() {
        throw new UnsupportedOperationException();
    }
}
