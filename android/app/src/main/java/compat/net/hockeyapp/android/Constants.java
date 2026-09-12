package net.hockeyapp.android;

import android.content.Context;

public class Constants {
    public static String FILES_PATH = "";
    public static final String BASE_URL = "https://sdk.hockeyapp.net";

    public static void loadFromContext(Context context) {
        if (context != null && context.getFilesDir() != null) {
            FILES_PATH = context.getFilesDir().getAbsolutePath();
        }
    }
}