package net.hockeyapp.android.views;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.net.Uri;
import android.os.AsyncTask;
import android.support.v4.internal.view.SupportMenu;
import android.view.MotionEvent;
import android.widget.ImageView;
import java.io.IOException;
import java.io.InputStream;
import java.util.Stack;
import net.hockeyapp.android.utils.HockeyLog;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
@SuppressLint({"ViewConstructor"})
public class PaintView extends ImageView {
    private static final float TOUCH_TOLERANCE = 4.0f;
    private float mX;
    private float mY;
    private Paint paint;
    private Path path;
    private Stack<Path> paths;

    public static int determineOrientation(ContentResolver resolver, Uri imageUri) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            InputStream in = resolver.openInputStream(imageUri);
            BitmapFactory.decodeStream(in, null, options);
            float ratio = options.outWidth / options.outHeight;
            return ratio > 1.0f ? 0 : 1;
        } catch (IOException e) {
            HockeyLog.error("Unable to determine necessary screen orientation.", e);
            return 1;
        }
    }

    private static int calculateInSampleSize(BitmapFactory.Options options, int reqWidth, int reqHeight) {
        int height = options.outHeight;
        int width = options.outWidth;
        int inSampleSize = 1;
        if (height > reqHeight || width > reqWidth) {
            int halfHeight = height / 2;
            int halfWidth = width / 2;
            while (halfHeight / inSampleSize > reqHeight && halfWidth / inSampleSize > reqWidth) {
                inSampleSize *= 2;
            }
        }
        return inSampleSize;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap decodeSampledBitmapFromResource(ContentResolver resolver, Uri imageUri, int reqWidth, int reqHeight) throws IOException {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        InputStream inputBounds = resolver.openInputStream(imageUri);
        BitmapFactory.decodeStream(inputBounds, null, options);
        options.inSampleSize = calculateInSampleSize(options, reqWidth, reqHeight);
        options.inJustDecodeBounds = false;
        InputStream inputBitmap = resolver.openInputStream(imageUri);
        Bitmap bitmap = BitmapFactory.decodeStream(inputBitmap, null, options);
        return bitmap;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [net.hockeyapp.android.views.PaintView$1] */
    public PaintView(Context context, Uri imageUri, int displayWidth, int displayHeight) {
        super(context);
        this.path = new Path();
        this.paths = new Stack<>();
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.paint.setDither(true);
        this.paint.setColor(SupportMenu.CATEGORY_MASK);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeJoin(Paint.Join.ROUND);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeWidth(12.0f);
        new AsyncTask<Object, Void, Bitmap>() { // from class: net.hockeyapp.android.views.PaintView.1
            @Override // android.os.AsyncTask
            protected void onPreExecute() {
                PaintView.this.setAdjustViewBounds(true);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.AsyncTask
            public Bitmap doInBackground(Object... args) {
                Context context2 = (Context) args[0];
                Uri imageUri2 = (Uri) args[1];
                Integer displayWidth2 = (Integer) args[2];
                Integer displayHeight2 = (Integer) args[3];
                try {
                    return PaintView.decodeSampledBitmapFromResource(context2.getContentResolver(), imageUri2, displayWidth2.intValue(), displayHeight2.intValue());
                } catch (IOException e) {
                    HockeyLog.error("Could not load image into ImageView.", e);
                    return null;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Bitmap bm) {
                if (bm != null) {
                    PaintView.this.setImageBitmap(bm);
                }
            }
        }.execute(context, imageUri, Integer.valueOf(displayWidth), Integer.valueOf(displayHeight));
    }

    public void clearImage() {
        this.paths.clear();
        invalidate();
    }

    public void undo() {
        if (!this.paths.empty()) {
            this.paths.pop();
            invalidate();
        }
    }

    public boolean isClear() {
        return this.paths.empty();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        for (Path path : this.paths) {
            canvas.drawPath(path, this.paint);
        }
        canvas.drawPath(this.path, this.paint);
    }

    private void touchStart(float x, float y) {
        this.path.reset();
        this.path.moveTo(x, y);
        this.mX = x;
        this.mY = y;
    }

    private void touchMove(float x, float y) {
        float dx = Math.abs(x - this.mX);
        float dy = Math.abs(y - this.mY);
        if (dx >= TOUCH_TOLERANCE || dy >= TOUCH_TOLERANCE) {
            this.path.quadTo(this.mX, this.mY, (this.mX + x) / 2.0f, (this.mY + y) / 2.0f);
            this.mX = x;
            this.mY = y;
        }
    }

    private void touchUp() {
        this.path.lineTo(this.mX, this.mY);
        this.paths.push(this.path);
        this.path = new Path();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        float x = event.getX();
        float y = event.getY();
        switch (event.getAction()) {
            case 0:
                touchStart(x, y);
                invalidate();
                break;
            case 1:
                touchUp();
                invalidate();
                break;
            case 2:
                touchMove(x, y);
                invalidate();
                break;
        }
        return true;
    }
}
