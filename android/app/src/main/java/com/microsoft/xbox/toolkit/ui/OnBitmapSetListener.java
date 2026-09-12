package com.microsoft.xbox.toolkit.ui;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface OnBitmapSetListener {
    void onAfterImageSet(ImageView imageView, Bitmap bitmap);

    void onBeforeImageSet(ImageView imageView, Bitmap bitmap);
}
