package com.microsoft.xbox.toolkit.ui;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.text.TextPaint;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLETextTask extends AsyncTask<XLETextArg, Void, Bitmap> {
    private static final String TAG = XLETextTask.class.getSimpleName();
    private final WeakReference<ImageView> img;
    private final int imgHeight;
    private final int imgWidth;

    public XLETextTask(ImageView img) {
        this.img = new WeakReference<>(img);
        this.imgWidth = img.getWidth();
        this.imgHeight = img.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Bitmap doInBackground(XLETextArg... args) {
        Bitmap bm = null;
        if (args.length > 0) {
            XLETextArg arg = args[0];
            XLETextArg.Params params = arg.getParams();
            String msg = arg.getText();
            TextPaint p = new TextPaint();
            p.setTextSize(params.getTextSize());
            p.setAntiAlias(true);
            p.setColor(params.getColor());
            p.setTypeface(params.getTypeface());
            int width = Math.round(p.measureText(msg));
            int height = Math.round(p.descent() - p.ascent());
            int bmWidth = width;
            int bmHeight = height;
            if (params.isAdjustForImageSize()) {
                bmWidth = Math.max(width, this.imgWidth);
                bmHeight = Math.max(height, this.imgHeight);
            }
            if (params.hasTextAspectRatio()) {
                float ar = params.getTextAspectRatio().floatValue();
                if (ar > 0.0f) {
                    if (bmHeight > bmWidth * ar) {
                        bmWidth = (int) (bmHeight / ar);
                    } else {
                        bmHeight = (int) (bmWidth * ar);
                    }
                }
            }
            bm = Bitmap.createBitmap(bmWidth, bmHeight, Bitmap.Config.ARGB_8888);
            if (params.hasEraseColor()) {
                bm.eraseColor(params.getEraseColor());
            }
            Canvas c = new Canvas(bm);
            c.drawText(msg, (Math.max(0, bmWidth - width) / 2) + 0, (-p.ascent()) + (Math.max(0, bmHeight - height) / 2), p);
        }
        return bm;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Bitmap bm) {
        ImageView v = this.img.get();
        if (v != null) {
            v.setImageBitmap(bm);
        }
    }
}
