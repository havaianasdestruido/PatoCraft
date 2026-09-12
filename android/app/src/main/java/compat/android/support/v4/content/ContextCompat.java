package android.support.v4.content;

import android.content.Context;

public class ContextCompat {
    public static int checkSelfPermission(Context context, String permission) {
        return context.checkSelfPermission(permission);
    }
}