package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class DrawableCompatBase {
    DrawableCompatBase() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setTint(Drawable drawable, int tint) {
        if (drawable instanceof DrawableWrapper) {
            ((DrawableWrapper) drawable).setCompatTint(tint);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setTintList(Drawable drawable, ColorStateList tint) {
        if (drawable instanceof DrawableWrapper) {
            ((DrawableWrapper) drawable).setCompatTintList(tint);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setTintMode(Drawable drawable, PorterDuff.Mode tintMode) {
        if (drawable instanceof DrawableWrapper) {
            ((DrawableWrapper) drawable).setCompatTintMode(tintMode);
        }
    }

    public static Drawable wrapForTinting(Drawable drawable) {
        if (!(drawable instanceof DrawableWrapperDonut)) {
            return new DrawableWrapperDonut(drawable);
        }
        return drawable;
    }

    public static void inflate(Drawable drawable, Resources res, XmlPullParser parser, AttributeSet attrs, Resources.Theme t) throws XmlPullParserException, IOException {
        drawable.inflate(res, parser, attrs);
    }
}
