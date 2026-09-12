package android.support.v4.app;

import android.app.Activity;

public class ActivityCompat {
    public static void requestPermissions(Activity activity, String[] permissions, int requestCode) {
        activity.requestPermissions(permissions, requestCode);
    }
}