package com.microsoft.onlineid.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class PackageInfoHelper {
    public static final String AuthenticatorPackageName = "com.microsoft.msa.authenticator";

    public static int getCurrentAppVersionCode(Context applicationContext) {
        try {
            return applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Assertion.check(false);
            return 0;
        }
    }

    public static String getCurrentAppVersionName(Context applicationContext) {
        try {
            return applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            Assertion.check(false);
            return "";
        }
    }

    public static String getAppVersionName(Context applicationContext, String packageName) {
        try {
            PackageInfo packageInfo = applicationContext.getPackageManager().getPackageInfo(packageName, 0);
            return packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public static boolean isAuthenticatorApp(String packageName) {
        return AuthenticatorPackageName.equalsIgnoreCase(packageName);
    }

    public static boolean isRunningInAuthenticatorApp(Context applicationContext) {
        return isAuthenticatorApp(applicationContext.getPackageName());
    }

    public static boolean isAuthenticatorAppInstalled(Context applicationContext) {
        try {
            applicationContext.getPackageManager().getPackageInfo(AuthenticatorPackageName, 128);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static boolean isCurrentApp(String packageName, Context applicationContext) {
        return applicationContext.getPackageName().equalsIgnoreCase(packageName);
    }

    public static Signature[] getCurrentAppSignatures(Context applicationContext) {
        return getAppSignatures(applicationContext, applicationContext.getPackageName());
    }

    public static Signature[] getAppSignatures(Context applicationContext, String packageName) {
        try {
            return applicationContext.getPackageManager().getPackageInfo(packageName, 64).signatures;
        } catch (PackageManager.NameNotFoundException e) {
            Assertion.check(false);
            return new Signature[0];
        }
    }
}
