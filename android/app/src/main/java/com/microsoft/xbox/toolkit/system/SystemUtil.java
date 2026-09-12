package com.microsoft.xbox.toolkit.system;

import android.graphics.PixelFormat;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.WindowManager;
import com.appsflyer.ServerParameters;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SystemUtil {
    private static final int MAX_SD_SCREEN_PIXELS = 384000;

    public static int getSdkInt() {
        return Build.VERSION.SDK_INT;
    }

    public static int DIPtoPixels(float dip) {
        return (int) TypedValue.applyDimension(1, dip, XboxTcuiSdk.getResources().getDisplayMetrics());
    }

    public static int SPtoPixels(float sp) {
        return (int) TypedValue.applyDimension(2, sp, XboxTcuiSdk.getResources().getDisplayMetrics());
    }

    public static int getScreenWidth() {
        DisplayMetrics displayMetrics = XboxTcuiSdk.getResources().getDisplayMetrics();
        return displayMetrics.widthPixels;
    }

    public static int getScreenHeight() {
        DisplayMetrics displayMetrics = XboxTcuiSdk.getResources().getDisplayMetrics();
        return displayMetrics.heightPixels;
    }

    public static int getColorDepth() {
        PixelFormat info = null;
        PixelFormat.getPixelFormatInfo(1, null);
        return info.bitsPerPixel;
    }

    public static float getScreenWidthInches() {
        DisplayMetrics displayMetrics = XboxTcuiSdk.getResources().getDisplayMetrics();
        return getScreenWidth() / displayMetrics.xdpi;
    }

    public static float getScreenHeightInches() {
        DisplayMetrics displayMetrics = XboxTcuiSdk.getResources().getDisplayMetrics();
        return getScreenHeight() / displayMetrics.ydpi;
    }

    public static float getYDPI() {
        DisplayMetrics displayMetrics = XboxTcuiSdk.getResources().getDisplayMetrics();
        return displayMetrics.ydpi;
    }

    public static int getRotation() {
        return getDisplay().getRotation();
    }

    public static int getOrientation() {
        int rotation = getRotation();
        return (rotation == 0 || rotation == 2) ? 1 : 2;
    }

    public static boolean isHDScreen() {
        return getScreenHeight() * getScreenWidth() > MAX_SD_SCREEN_PIXELS;
    }

    public static boolean isSlate() {
        float width = getScreenWidthInches();
        float height = getScreenHeightInches();
        double screenSize = Math.sqrt(Math.pow(width, 2.0d) + Math.pow(height, 2.0d));
        return screenSize > 6.0d;
    }

    public static String getDeviceType() {
        XLEAssert.assertTrue(false);
        return "";
    }

    private static Display getDisplay() {
        return ((WindowManager) XboxTcuiSdk.getSystemService("window")).getDefaultDisplay();
    }

    public static boolean isSDCardAvailable() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static float getScreenWidthHeightAspectRatio() {
        int screenWidth = getScreenWidth();
        int screenHeight = getScreenHeight();
        if (screenWidth <= 0 || screenHeight <= 0) {
            return 0.0f;
        }
        if (screenWidth > screenHeight) {
            return screenWidth / screenHeight;
        }
        return screenHeight / screenWidth;
    }

    public static String getDeviceId() {
        return Settings.Secure.getString(XboxTcuiSdk.getContentResolver(), ServerParameters.ANDROID_ID);
    }

    public static String getDeviceModelName() {
        return Build.MODEL;
    }

    public static String getMACAddress(String interfaceName) {
        try {
            List<NetworkInterface> interfaces = Collections.list(NetworkInterface.getNetworkInterfaces());
            for (NetworkInterface intf : interfaces) {
                if (interfaceName == null || intf.getName().equalsIgnoreCase(interfaceName)) {
                    byte[] mac = intf.getHardwareAddress();
                    if (mac == null) {
                        return "";
                    }
                    StringBuilder buf = new StringBuilder();
                    for (byte b : mac) {
                        buf.append(String.format("%02X:", Byte.valueOf(b)));
                    }
                    if (buf.length() > 0) {
                        buf.deleteCharAt(buf.length() - 1);
                    }
                    return buf.toString();
                }
            }
        } catch (Exception e) {
        }
        return "";
    }

    public static void TEST_randomSleep(int maxSeconds) {
        XLEAssert.assertTrue(false);
    }

    public static boolean TEST_randomFalseOutOf(int max) {
        XLEAssert.assertTrue(false);
        return true;
    }

    public static boolean isKindle() {
        String manufecturer = Build.MANUFACTURER;
        return manufecturer != null && "AMAZON".compareToIgnoreCase(manufecturer) == 0;
    }
}
