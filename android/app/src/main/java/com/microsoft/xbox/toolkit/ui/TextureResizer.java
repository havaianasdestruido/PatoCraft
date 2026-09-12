package com.microsoft.xbox.toolkit.ui;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class TextureResizer {
    public static Bitmap createScaledBitmap8888(Bitmap source, int dstwidth, int dstheight, boolean filter) {
        Bitmap bitmap;
        Paint paint;
        int width = source.getWidth();
        int height = source.getHeight();
        float sx = dstwidth / width;
        float sy = dstheight / height;
        Matrix m = new Matrix();
        m.setScale(sx, sy);
        if (0 + width > source.getWidth()) {
            throw new IllegalArgumentException("x + width must be <= bitmap.width()");
        }
        if (0 + height > source.getHeight()) {
            throw new IllegalArgumentException("y + height must be <= bitmap.height()");
        }
        if (source.isMutable() || 0 != 0 || 0 != 0 || width != source.getWidth() || height != source.getHeight() || (m != null && !m.isIdentity())) {
            Canvas canvas = new Canvas();
            Rect srcR = new Rect(0, 0, 0 + width, 0 + height);
            RectF dstR = new RectF(0.0f, 0.0f, width, height);
            if (m == null || m.isIdentity()) {
                bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                paint = null;
            } else {
                boolean hasAlpha = source.hasAlpha() || !m.rectStaysRect();
                RectF deviceR = new RectF();
                m.mapRect(deviceR, dstR);
                int neww = Math.round(deviceR.width());
                int newh = Math.round(deviceR.height());
                bitmap = Bitmap.createBitmap(neww, newh, Bitmap.Config.ARGB_8888);
                if (hasAlpha) {
                    bitmap.eraseColor(0);
                }
                canvas.translate(-deviceR.left, -deviceR.top);
                canvas.concat(m);
                paint = new Paint();
                paint.setFilterBitmap(filter);
                if (!m.rectStaysRect()) {
                    paint.setAntiAlias(true);
                }
            }
            bitmap.setDensity(source.getDensity());
            canvas.setBitmap(bitmap);
            canvas.drawBitmap(source, srcR, dstR, paint);
            return bitmap;
        }
        return source;
    }
}
