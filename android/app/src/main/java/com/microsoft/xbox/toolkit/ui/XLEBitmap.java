package com.microsoft.xbox.toolkit.ui;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEBitmap {
    public static String ALLOCATION_TAG = "XLEBITMAP";
    private Bitmap bitmapSrc;

    public static class XLEBitmapDrawable {
        private BitmapDrawable drawable;

        public XLEBitmapDrawable(BitmapDrawable drawable) {
            this.drawable = drawable;
        }

        public BitmapDrawable getDrawable() {
            return this.drawable;
        }
    }

    private XLEBitmap(Bitmap src) {
        this.bitmapSrc = null;
        this.bitmapSrc = src;
    }

    public void finalize() {
    }

    public static XLEBitmap createBitmap(int width, int height, Bitmap.Config config) {
        return createBitmap(Bitmap.createBitmap(width, height, config));
    }

    public static XLEBitmap createScaledBitmap(XLEBitmap src, int width, int height, boolean filtered) {
        return createBitmap(Bitmap.createScaledBitmap(src.bitmapSrc, width, height, filtered));
    }

    public static XLEBitmap decodeStream(InputStream stream, BitmapFactory.Options options) {
        return createBitmap(BitmapFactory.decodeStream(stream, null, options));
    }

    public static XLEBitmap decodeStream(InputStream stream) {
        return createBitmap(BitmapFactory.decodeStream(stream));
    }

    public static XLEBitmap decodeResource(Resources res, int id) {
        return createBitmap(BitmapFactory.decodeResource(res, id));
    }

    public static XLEBitmap decodeResource(Resources res, int id, BitmapFactory.Options options) {
        return createBitmap(BitmapFactory.decodeResource(res, id, options));
    }

    public static XLEBitmap createScaledBitmap8888(XLEBitmap src, int width, int height, boolean filtered) {
        return createBitmap(TextureResizer.createScaledBitmap8888(src.bitmapSrc, width, height, filtered));
    }

    public static XLEBitmap createBitmap(Bitmap bitmapSrc) {
        if (bitmapSrc == null) {
            return null;
        }
        return new XLEBitmap(bitmapSrc);
    }

    public int getByteCount() {
        return this.bitmapSrc.getRowBytes() * this.bitmapSrc.getHeight();
    }

    public Bitmap getBitmap() {
        return this.bitmapSrc;
    }

    public XLEBitmapDrawable getDrawable() {
        return new XLEBitmapDrawable(new BitmapDrawable(this.bitmapSrc));
    }
}
