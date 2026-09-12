package net.hockeyapp.android;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;
import android.text.TextUtils;
import com.appsflyer.ServerParameters;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;
import net.hockeyapp.android.utils.HockeyLog;
import net.hockeyapp.android.utils.HttpURLConnectionBuilder;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Constants {
    public static final String BASE_URL = "https://sdk.hockeyapp.net/";
    private static final String BUNDLE_BUILD_NUMBER = "buildNumber";
    public static final String FILES_DIRECTORY_NAME = "HockeyApp";
    public static final String SDK_NAME = "HockeySDK";
    public static final String SDK_USER_AGENT = "HockeySDK/Android 4.1.4";
    public static final String SDK_VERSION = "4.1.4";
    public static final int UPDATE_PERMISSIONS_REQUEST = 1;
    public static String FILES_PATH = null;
    public static String APP_VERSION = null;
    public static String APP_VERSION_NAME = null;
    public static String APP_PACKAGE = null;
    public static String ANDROID_VERSION = null;
    public static String ANDROID_BUILD = null;
    public static String PHONE_MODEL = null;
    public static String PHONE_MANUFACTURER = null;
    public static String CRASH_IDENTIFIER = null;
    public static String DEVICE_IDENTIFIER = null;

    public static void loadFromContext(Context context) {
        ANDROID_VERSION = Build.VERSION.RELEASE;
        ANDROID_BUILD = Build.DISPLAY;
        PHONE_MODEL = Build.MODEL;
        PHONE_MANUFACTURER = Build.MANUFACTURER;
        loadFilesPath(context);
        loadPackageData(context);
        loadCrashIdentifier(context);
        loadDeviceIdentifier(context);
    }

    public static File getHockeyAppStorageDir() {
        File externalStorage = Environment.getExternalStorageDirectory();
        File dir = new File(externalStorage.getAbsolutePath() + "/HockeyApp");
        boolean success = dir.exists() || dir.mkdirs();
        if (!success) {
            HockeyLog.warn("Couldn't create HockeyApp Storage dir");
        }
        return dir;
    }

    private static void loadFilesPath(Context context) {
        if (context != null) {
            try {
                File file = context.getFilesDir();
                if (file != null) {
                    FILES_PATH = file.getAbsolutePath();
                }
            } catch (Exception e) {
                HockeyLog.error("Exception thrown when accessing the files dir:");
                e.printStackTrace();
            }
        }
    }

    private static void loadPackageData(Context context) {
        if (context != null) {
            try {
                PackageManager packageManager = context.getPackageManager();
                PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
                APP_PACKAGE = packageInfo.packageName;
                APP_VERSION = "" + packageInfo.versionCode;
                APP_VERSION_NAME = packageInfo.versionName;
                int buildNumber = loadBuildNumber(context, packageManager);
                if (buildNumber != 0 && buildNumber > packageInfo.versionCode) {
                    APP_VERSION = "" + buildNumber;
                }
            } catch (PackageManager.NameNotFoundException e) {
                HockeyLog.error("Exception thrown when accessing the package info:");
                e.printStackTrace();
            }
        }
    }

    private static int loadBuildNumber(Context context, PackageManager packageManager) {
        try {
            ApplicationInfo appInfo = packageManager.getApplicationInfo(context.getPackageName(), 128);
            Bundle metaData = appInfo.metaData;
            if (metaData != null) {
                return metaData.getInt(BUNDLE_BUILD_NUMBER, 0);
            }
            return 0;
        } catch (PackageManager.NameNotFoundException e) {
            HockeyLog.error("Exception thrown when accessing the application info:");
            e.printStackTrace();
            return 0;
        }
    }

    private static void loadCrashIdentifier(Context context) {
        String deviceIdentifier = Settings.Secure.getString(context.getContentResolver(), ServerParameters.ANDROID_ID);
        if (!TextUtils.isEmpty(APP_PACKAGE) && !TextUtils.isEmpty(deviceIdentifier)) {
            String combined = APP_PACKAGE + ":" + deviceIdentifier + ":" + createSalt(context);
            try {
                MessageDigest digest = MessageDigest.getInstance("SHA-1");
                byte[] bytes = combined.getBytes(HttpURLConnectionBuilder.DEFAULT_CHARSET);
                digest.update(bytes, 0, bytes.length);
                CRASH_IDENTIFIER = bytesToHex(digest.digest());
            } catch (Throwable e) {
                HockeyLog.error("Couldn't create CrashIdentifier with Exception:" + e.toString());
            }
        }
    }

    private static void loadDeviceIdentifier(Context context) {
        ContentResolver resolver = context.getContentResolver();
        String deviceIdentifier = Settings.Secure.getString(resolver, ServerParameters.ANDROID_ID);
        if (deviceIdentifier != null) {
            String deviceIdentifierAnonymized = tryHashStringSha256(context, deviceIdentifier);
            if (deviceIdentifierAnonymized == null) {
                deviceIdentifierAnonymized = UUID.randomUUID().toString();
            }
            DEVICE_IDENTIFIER = deviceIdentifierAnonymized;
        }
    }

    private static String tryHashStringSha256(Context context, String input) {
        String salt = createSalt(context);
        try {
            MessageDigest hash = MessageDigest.getInstance("SHA-256");
            hash.reset();
            hash.update(input.getBytes());
            hash.update(salt.getBytes());
            byte[] hashedBytes = hash.digest();
            return bytesToHex(hashedBytes);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    @SuppressLint({"InlinedApi"})
    private static String createSalt(Context context) {
        String abiString;
        if (Build.VERSION.SDK_INT >= 21) {
            abiString = Build.SUPPORTED_ABIS[0];
        } else {
            abiString = Build.CPU_ABI;
        }
        String fingerprint = "HA" + (Build.BOARD.length() % 10) + (Build.BRAND.length() % 10) + (abiString.length() % 10) + (Build.PRODUCT.length() % 10);
        String serial = "";
        try {
            serial = Build.class.getField("SERIAL").get(null).toString();
        } catch (Throwable th) {
        }
        return fingerprint + ":" + serial;
    }

    private static String bytesToHex(byte[] bytes) {
        char[] HEX_ARRAY = "0123456789ABCDEF".toCharArray();
        char[] hex = new char[bytes.length * 2];
        for (int index = 0; index < bytes.length; index++) {
            int value = bytes[index] & 255;
            hex[index * 2] = HEX_ARRAY[value >>> 4];
            hex[(index * 2) + 1] = HEX_ARRAY[value & 15];
        }
        String result = new String(hex);
        return result.replaceAll("(\\w{8})(\\w{4})(\\w{4})(\\w{4})(\\w{12})", "$1-$2-$3-$4-$5");
    }
}
