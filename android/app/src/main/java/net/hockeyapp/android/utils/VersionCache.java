package net.hockeyapp.android.utils;

import android.content.Context;
import android.content.SharedPreferences;
import net.hockeyapp.android.UpdateFragment;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class VersionCache {
    private static String PREF_VERSION_INFO_KEY = UpdateFragment.FRAGMENT_VERSION_INFO;

    public static void setVersionInfo(Context context, String json) {
        if (context != null) {
            SharedPreferences preferences = context.getSharedPreferences("HockeyApp", 0);
            SharedPreferences.Editor editor = preferences.edit();
            editor.putString(PREF_VERSION_INFO_KEY, json);
            editor.apply();
        }
    }

    public static String getVersionInfo(Context context) {
        if (context == null) {
            return "[]";
        }
        SharedPreferences preferences = context.getSharedPreferences("HockeyApp", 0);
        return preferences.getString(PREF_VERSION_INFO_KEY, "[]");
    }
}
