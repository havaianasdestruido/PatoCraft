package com.microsoft.xbox.idp.toolkit;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CircleImageView extends ImageView {
    static final /* synthetic */ boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !CircleImageView.class.desiredAssertionStatus();
    }

    public CircleImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public CircleImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawable;
        if (getWidth() != 0 && getHeight() != 0 && (drawable = getDrawable()) != null) {
            if (drawable instanceof BitmapDrawable) {
                drawBitmap(canvas, ((BitmapDrawable) drawable).getBitmap());
                return;
            }
            Bitmap bmp = createBitmap(drawable);
            try {
                drawBitmap(canvas, bmp);
            } finally {
                bmp.recycle();
            }
        }
    }

    private Bitmap createBitmap(Drawable drawable) {
        if (!$assertionsDisabled && (getWidth() <= 0 || getHeight() <= 0)) {
            throw new AssertionError();
        }
        Bitmap output = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(output);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return output;
    }

    private void drawBitmap(Canvas canvas, Bitmap bitmap) {
        if (bitmap != null) {
            int radius = Math.min(getWidth(), getHeight());
            if (bitmap.getWidth() == radius && bitmap.getHeight() == radius) {
                drawRoundBitmap(canvas, bitmap, radius);
                return;
            }
            Bitmap bmp = Bitmap.createScaledBitmap(bitmap, radius, radius, false);
            try {
                drawRoundBitmap(canvas, bmp, radius);
            } finally {
                bmp.recycle();
            }
        }
    }

    private void drawRoundBitmap(Canvas canvas, Bitmap bitmap, int radius) {
        Bitmap bmp = createRoundBitmap(bitmap, radius);
        try {
            canvas.drawBitmap(bmp, 0.0f, 0.0f, (Paint) null);
        } finally {
            bmp.recycle();
        }
    }

    private Bitmap createRoundBitmap(Bitmap bitmap, int radius) {
        Bitmap output = Bitmap.createBitmap(radius, radius, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(output);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint.setDither(true);
        canvas.drawARGB(0, 0, 0, 0);
        canvas.drawCircle((bitmap.getWidth() / 2) + 0.7f, (bitmap.getHeight() / 2) + 0.7f, (bitmap.getWidth() / 2) + 0.1f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return output;
    }
}
