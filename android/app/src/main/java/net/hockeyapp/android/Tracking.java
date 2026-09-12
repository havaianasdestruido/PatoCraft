package net.hockeyapp.android;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Tracking {
    protected static final String START_TIME_KEY = "startTime";
    protected static final String USAGE_TIME_KEY = "usageTime";

    public static void startUsage(Activity activity) {
        long now = System.currentTimeMillis();
        if (activity != null) {
            SharedPreferences.Editor editor = getPreferences(activity).edit();
            editor.putLong(START_TIME_KEY + activity.hashCode(), now);
            editor.apply();
        }
    }

    public static void stopUsage(Activity activity) {
        long now = System.currentTimeMillis();
        if (activity != null && checkVersion(activity)) {
            SharedPreferences preferences = getPreferences(activity);
            long start = preferences.getLong(START_TIME_KEY + activity.hashCode(), 0L);
            long sum = preferences.getLong(USAGE_TIME_KEY + Constants.APP_VERSION, 0L);
            if (start > 0) {
                long duration = now - start;
                long newSum = sum + duration;
                if (duration > 0 && newSum >= 0) {
                    SharedPreferences.Editor editor = preferences.edit();
                    editor.putLong(USAGE_TIME_KEY + Constants.APP_VERSION, newSum);
                    editor.apply();
                }
            }
        }
    }

    public static long getUsageTime(Context context) {
        if (!checkVersion(context)) {
            return 0L;
        }
        SharedPreferences preferences = getPreferences(context);
        long sum = preferences.getLong(USAGE_TIME_KEY + Constants.APP_VERSION, 0L);
        if (sum < 0) {
            preferences.edit().remove(USAGE_TIME_KEY + Constants.APP_VERSION).apply();
            return 0L;
        }
        return sum / 1000;
    }

    private static boolean checkVersion(Context context) {
        if (Constants.APP_VERSION == null) {
            Constants.loadFromContext(context);
            if (Constants.APP_VERSION == null) {
                return false;
            }
        }
        return true;
    }

    protected static SharedPreferences getPreferences(Context context) {
        return context.getSharedPreferences("HockeyApp", 0);
    }
}
