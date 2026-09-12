package net.hockeyapp.android.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ImageUtils {
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 0;

    public static int determineOrientation(File file) throws Throwable {
        InputStream input = null;
        try {
            InputStream input2 = new FileInputStream(file);
            try {
                int iDetermineOrientation = determineOrientation(input2);
                if (input2 != null) {
                    input2.close();
                }
                return iDetermineOrientation;
            } catch (Throwable th) {
                th = th;
                input = input2;
                if (input != null) {
                    input.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static int determineOrientation(Context context, Uri uri) throws IOException {
        InputStream input = null;
        try {
            input = context.getContentResolver().openInputStream(uri);
            return determineOrientation(input);
        } finally {
            if (input != null) {
                input.close();
            }
        }
    }

    public static int determineOrientation(InputStream input) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(input, null, options);
        if (options.outWidth == -1 || options.outHeight == -1) {
            return 0;
        }
        float ratio = options.outWidth / options.outHeight;
        return ratio <= 1.0f ? 0 : 1;
    }

    public static Bitmap decodeSampledBitmap(File file, int reqWidth, int reqHeight) throws IOException {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        options.inSampleSize = calculateInSampleSize(options, reqWidth, reqHeight);
        options.inJustDecodeBounds = false;
        Bitmap bitmap = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        return bitmap;
    }

    public static Bitmap decodeSampledBitmap(Context context, Uri imageUri, int reqWidth, int reqHeight) throws IOException {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        InputStream inputBounds = context.getContentResolver().openInputStream(imageUri);
        BitmapFactory.decodeStream(inputBounds, null, options);
        options.inSampleSize = calculateInSampleSize(options, reqWidth, reqHeight);
        options.inJustDecodeBounds = false;
        InputStream inputBitmap = context.getContentResolver().openInputStream(imageUri);
        Bitmap bitmap = BitmapFactory.decodeStream(inputBitmap, null, options);
        return bitmap;
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
}
