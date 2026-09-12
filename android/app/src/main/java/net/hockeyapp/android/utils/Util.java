package net.hockeyapp.android.utils;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Patterns;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.hockeyapp.android.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Util {
    public static final String APP_IDENTIFIER_KEY = "net.hockeyapp.android.appIdentifier";
    public static final int APP_IDENTIFIER_LENGTH = 32;
    private static final String APP_SECRET_KEY = "net.hockeyapp.android.appSecret";
    public static final String LOG_IDENTIFIER = "HockeyApp";
    public static final String PREFS_FEEDBACK_TOKEN = "net.hockeyapp.android.prefs_feedback_token";
    public static final String PREFS_KEY_FEEDBACK_TOKEN = "net.hockeyapp.android.prefs_key_feedback_token";
    public static final String PREFS_KEY_NAME_EMAIL_SUBJECT = "net.hockeyapp.android.prefs_key_name_email";
    public static final String PREFS_NAME_EMAIL_SUBJECT = "net.hockeyapp.android.prefs_name_email";
    private static final String SDK_VERSION_KEY = "net.hockeyapp.android.sdkVersion";
    public static final String APP_IDENTIFIER_PATTERN = "[0-9a-f]+";
    private static final Pattern appIdentifierPattern = Pattern.compile(APP_IDENTIFIER_PATTERN, 2);
    private static final char[] HEX_ARRAY = "0123456789ABCDEF".toCharArray();
    private static final ThreadLocal<DateFormat> DATE_FORMAT_THREAD_LOCAL = new ThreadLocal<DateFormat>() { // from class: net.hockeyapp.android.utils.Util.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public DateFormat initialValue() {
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            dateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            return dateFormat;
        }
    };

    public static String encodeParam(String param) {
        try {
            return URLEncoder.encode(param, HttpURLConnectionBuilder.DEFAULT_CHARSET);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static final boolean isValidEmail(String value) {
        return !TextUtils.isEmpty(value) && Patterns.EMAIL_ADDRESS.matcher(value).matches();
    }

    @SuppressLint({"NewApi"})
    public static Boolean fragmentsSupported() {
        try {
            return Boolean.valueOf(Build.VERSION.SDK_INT >= 11 && classExists("android.app.Fragment"));
        } catch (NoClassDefFoundError e) {
            return false;
        }
    }

    public static Boolean runsOnTablet(WeakReference<Activity> weakActivity) {
        Activity activity;
        if (weakActivity == null || (activity = weakActivity.get()) == null) {
            return false;
        }
        Configuration configuration = activity.getResources().getConfiguration();
        return Boolean.valueOf((configuration.screenLayout & 15) == 3 || (configuration.screenLayout & 15) == 4);
    }

    public static String sanitizeAppIdentifier(String appIdentifier) throws IllegalArgumentException {
        if (appIdentifier == null) {
            throw new IllegalArgumentException("App ID must not be null.");
        }
        String sAppIdentifier = appIdentifier.trim();
        Matcher matcher = appIdentifierPattern.matcher(sAppIdentifier);
        if (sAppIdentifier.length() != 32) {
            throw new IllegalArgumentException("App ID length must be 32 characters.");
        }
        if (!matcher.matches()) {
            throw new IllegalArgumentException("App ID must match regex pattern /[0-9a-f]+/i");
        }
        return sAppIdentifier;
    }

    public static String getFormString(Map<String, String> params) throws UnsupportedEncodingException {
        List<String> protoList = new ArrayList<>();
        for (String key : params.keySet()) {
            String value = params.get(key);
            protoList.add(URLEncoder.encode(key, HttpURLConnectionBuilder.DEFAULT_CHARSET) + "=" + URLEncoder.encode(value, HttpURLConnectionBuilder.DEFAULT_CHARSET));
        }
        return TextUtils.join("&", protoList);
    }

    public static boolean classExists(String className) {
        try {
            return Class.forName(className) != null;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static boolean isNotificationBuilderSupported() {
        return Build.VERSION.SDK_INT >= 11 && classExists("android.app.Notification.Builder");
    }

    public static Notification createNotification(Context context, PendingIntent pendingIntent, String title, String text, int iconId) {
        if (isNotificationBuilderSupported()) {
            Notification notification = buildNotificationWithBuilder(context, pendingIntent, title, text, iconId);
            return notification;
        }
        Notification notification2 = buildNotificationPreHoneycomb(context, pendingIntent, title, text, iconId);
        return notification2;
    }

    private static Notification buildNotificationPreHoneycomb(Context context, PendingIntent pendingIntent, String title, String text, int iconId) {
        Notification notification = new Notification(iconId, "", System.currentTimeMillis());
        try {
            Method m = notification.getClass().getMethod("setLatestEventInfo", Context.class, CharSequence.class, CharSequence.class, PendingIntent.class);
            m.invoke(notification, context, title, text, pendingIntent);
        } catch (Exception e) {
        }
        return notification;
    }

    @TargetApi(11)
    private static Notification buildNotificationWithBuilder(Context context, PendingIntent pendingIntent, String title, String text, int iconId) {
        Notification.Builder builder = new Notification.Builder(context).setContentTitle(title).setContentText(text).setContentIntent(pendingIntent).setSmallIcon(iconId);
        return Build.VERSION.SDK_INT < 16 ? builder.getNotification() : builder.build();
    }

    public static String getAppIdentifier(Context context) {
        String appIdentifier = getManifestString(context, APP_IDENTIFIER_KEY);
        if (TextUtils.isEmpty(appIdentifier)) {
            throw new IllegalArgumentException("HockeyApp app identifier was not configured correctly in manifest or build configuration.");
        }
        return appIdentifier;
    }

    public static String getAppSecret(Context context) {
        return getManifestString(context, APP_SECRET_KEY);
    }

    public static String getManifestString(Context context, String key) {
        return getBundle(context).getString(key);
    }

    private static Bundle getBundle(Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            return bundle;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public static boolean isConnectedToNetwork(Context context) {
        NetworkInfo activeNetwork;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
            return (connectivityManager == null || (activeNetwork = connectivityManager.getActiveNetworkInfo()) == null || !activeNetwork.isConnected()) ? false : true;
        } catch (Exception e) {
            HockeyLog.error("Exception thrown when check network is connected:");
            e.printStackTrace();
            return false;
        }
    }

    public static String getAppName(Context context) {
        if (context == null) {
            return "";
        }
        PackageManager packageManager = context.getPackageManager();
        ApplicationInfo applicationInfo = null;
        try {
            applicationInfo = packageManager.getApplicationInfo(context.getApplicationInfo().packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
        }
        return applicationInfo != null ? (String) packageManager.getApplicationLabel(applicationInfo) : context.getString(R.string.hockeyapp_crash_dialog_app_name_fallback);
    }

    public static String getSdkVersionFromManifest(Context context) {
        return getManifestString(context, SDK_VERSION_KEY);
    }

    public static String convertAppIdentifierToGuid(String appIdentifier) throws IllegalArgumentException {
        try {
            String sanitizedAppIdentifier = sanitizeAppIdentifier(appIdentifier);
            if (sanitizedAppIdentifier == null) {
                return null;
            }
            StringBuffer idBuf = new StringBuffer(sanitizedAppIdentifier);
            idBuf.insert(20, '-');
            idBuf.insert(16, '-');
            idBuf.insert(12, '-');
            idBuf.insert(8, '-');
            String guid = idBuf.toString();
            return guid;
        } catch (IllegalArgumentException e) {
            throw e;
        }
    }

    public static boolean isEmulator() {
        return Build.BRAND.equalsIgnoreCase("generic");
    }

    public static String dateToISO8601(Date date) {
        Date localDate = date;
        if (localDate == null) {
            localDate = new Date();
        }
        return DATE_FORMAT_THREAD_LOCAL.get().format(localDate);
    }

    public static boolean sessionTrackingSupported() {
        return Build.VERSION.SDK_INT >= 14;
    }
}
