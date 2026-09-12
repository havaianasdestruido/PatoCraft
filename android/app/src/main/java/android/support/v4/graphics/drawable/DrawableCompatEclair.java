package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class DrawableCompatEclair {
    DrawableCompatEclair() {
    }

    public static Drawable wrapForTinting(Drawable drawable) {
        if (!(drawable instanceof DrawableWrapperEclair)) {
            return new DrawableWrapperEclair(drawable);
        }
        return drawable;
    }
}
