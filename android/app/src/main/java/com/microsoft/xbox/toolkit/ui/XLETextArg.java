package com.microsoft.xbox.toolkit.ui;

import android.graphics.Typeface;
import com.microsoft.xbox.toolkit.system.SystemUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLETextArg {
    private final Params params;
    private final String text;

    public XLETextArg(String text, Params params) {
        this.text = text;
        this.params = params;
    }

    public XLETextArg(Params params) {
        this(null, params);
    }

    public String getText() {
        return this.text;
    }

    public boolean hasText() {
        return this.text != null;
    }

    public Params getParams() {
        return this.params;
    }

    public static class Params {
        private final boolean adjustForImageSize;
        private final int color;
        private final int eraseColor;
        private final Float textAspectRatio;
        private final float textSize;
        private final Typeface typeface;

        public Params() {
            this(SystemUtil.SPtoPixels(8.0f), -1, Typeface.DEFAULT, 0, false, null);
        }

        public Params(float textSize, int color, Typeface typeface, int eraseColor, boolean adjustForImageSize, Float textAspectRatio) {
            this.textSize = textSize;
            this.color = color;
            this.typeface = typeface;
            this.eraseColor = eraseColor;
            this.adjustForImageSize = adjustForImageSize;
            this.textAspectRatio = textAspectRatio;
        }

        public float getTextSize() {
            return this.textSize;
        }

        public int getColor() {
            return this.color;
        }

        public Typeface getTypeface() {
            return this.typeface;
        }

        public boolean hasEraseColor() {
            return this.eraseColor != 0;
        }

        public int getEraseColor() {
            return this.eraseColor;
        }

        public boolean isAdjustForImageSize() {
            return this.adjustForImageSize;
        }

        public Float getTextAspectRatio() {
            return this.textAspectRatio;
        }

        public boolean hasTextAspectRatio() {
            return this.textAspectRatio != null;
        }
    }
}
