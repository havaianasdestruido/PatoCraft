package com.microsoft.onlineid.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class NetworkConnectivity {

    public enum NetworkType {
        None,
        WiFi,
        Ethernet,
        Bluetooth,
        Mobile2G,
        Mobile3G,
        Mobile4G,
        Unknown
    }

    public static boolean hasInternetConnectivity(Context applicationContext) {
        NetworkInfo networkInfo = getActiveNetworkInfo(applicationContext);
        return networkInfo != null && networkInfo.isConnected();
    }

    @TargetApi(17)
    public static boolean isAirplaneModeOn(Context applicationContext) {
        if (Build.VERSION.SDK_INT < 17) {
            return Settings.System.getInt(applicationContext.getContentResolver(), "airplane_mode_on", 0) != 0;
        }
        return Settings.Global.getInt(applicationContext.getContentResolver(), "airplane_mode_on", 0) != 0;
    }

    private static NetworkType getNetworkType(Context applicationContext) {
        NetworkInfo network = getActiveNetworkInfo(applicationContext);
        if (network == null || !network.isConnected()) {
            return NetworkType.None;
        }
        switch (network.getType()) {
            case 0:
            case 2:
            case 3:
            case 4:
            case 5:
                return getMobileNetworkType(applicationContext);
            case 1:
                return NetworkType.WiFi;
            case 6:
            case 8:
            default:
                return NetworkType.Unknown;
            case 7:
                return NetworkType.Bluetooth;
            case 9:
                return NetworkType.Ethernet;
        }
    }

    private static NetworkType getMobileNetworkType(Context applicationContext) {
        TelephonyManager telephonyManager = getTelephonyManager(applicationContext);
        switch (telephonyManager.getNetworkType()) {
            case 2:
            case 3:
            case 4:
            case 7:
            case 11:
            case 14:
                return NetworkType.Mobile2G;
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 15:
                return NetworkType.Mobile3G;
            case 13:
            default:
                return NetworkType.Mobile4G;
        }
    }

    public static String getNetworkTypeForAnalytics(Context applicationContext) {
        switch (getNetworkType(applicationContext)) {
            case None:
                return "Not connected";
            case WiFi:
                return "WiFi";
            case Mobile2G:
            case Mobile3G:
            case Mobile4G:
                return "Mobile";
            case Ethernet:
                return "Ethernet";
            case Bluetooth:
                return "Bluetooth";
            default:
                return "Unknown";
        }
    }

    public static String getNetworkTypeForServerTelemetry(Context applicationContext) {
        switch (getNetworkType(applicationContext)) {
            case None:
                return "NONE";
            case WiFi:
                return "WIFI";
            case Mobile2G:
                return "2G";
            case Mobile3G:
                return "3G";
            case Mobile4G:
                return "4G";
            default:
                return "UNKNOWN";
        }
    }

    private static NetworkInfo getActiveNetworkInfo(Context applicationContext) {
        return ((ConnectivityManager) applicationContext.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    private static TelephonyManager getTelephonyManager(Context applicationContext) {
        return (TelephonyManager) applicationContext.getSystemService("phone");
    }
}
