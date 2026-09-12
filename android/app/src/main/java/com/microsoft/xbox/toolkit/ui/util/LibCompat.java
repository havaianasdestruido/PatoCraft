package com.microsoft.xbox.toolkit.ui.util;

import android.widget.TextView;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class LibCompat {
    private LibCompat() {
    }

    public static void setTextAppearance(TextView textView, int resId) {
        textView.setTextAppearance(textView.getContext(), resId);
    }
}
