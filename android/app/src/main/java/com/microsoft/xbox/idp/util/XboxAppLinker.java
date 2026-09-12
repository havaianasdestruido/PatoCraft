package com.microsoft.xbox.idp.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.util.Log;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XboxAppLinker {
    private static final String AMAZON_STORE_URI = "amzn://apps/android?p=";
    private static final String AMAZON_TABLET_STORE_PACKAGE = "com.amazon.venezia";
    private static final String AMAZON_UNDERGROUND_PACKAGE = "com.amazon.mShop.android";
    private static final String OCULUS_STORE_WEB_URI = "oculus.store://link/products?referrer=manual&item_id=";
    private static final String OCULUS_XBOXAPP_APP_ID = "1193603937358048";
    private static final String PLAY_STORE_PACKAGE = "com.android.vending";
    private static final String PLAY_STORE_URI = "market://details?id=";
    private static final String PLAY_STORE_WEB_URI = "https://play.google.com/store/apps/details?id=";
    private static final String TAG = XboxAppLinker.class.getSimpleName();
    public static final String XBOXAPP_BETA_PACKAGE = "com.microsoft.xboxone.smartglass.beta";
    public static final String XBOXAPP_PACKAGE = "com.microsoft.xboxone.smartglass";
    public static boolean betaAppInstalled;
    public static boolean mainAppInstalled;

    public static void launchXboxAppStorePage(Context context) {
        Intent storePageIntent = getXboxAppInAnyMarketIntent(context);
        context.startActivity(storePageIntent);
    }

    public static boolean isInstalled(Context context, String packageName) {
        try {
            context.getPackageManager().getPackageInfo(packageName, 1);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static boolean isServiceInstalled(String packageName, Context context, String serviceName) {
        try {
            ComponentName component = new ComponentName(packageName, serviceName);
            context.getPackageManager().getServiceInfo(component, 0);
            return true;
        } catch (PackageManager.NameNotFoundException ex) {
            Log.i(TAG, ex.getClass().toString());
            Log.i(TAG, ex.getMessage());
            return false;
        }
    }

    public static boolean xboxAppIsInstalled(Context context) {
        if (isInstalled(context, XBOXAPP_PACKAGE)) {
            mainAppInstalled = true;
        } else {
            mainAppInstalled = false;
        }
        if (isInstalled(context, XBOXAPP_BETA_PACKAGE)) {
            betaAppInstalled = true;
        } else {
            betaAppInstalled = false;
        }
        return mainAppInstalled || betaAppInstalled;
    }

    public static Intent getXboxAppInOculusMarketIntent(Context context) {
        Intent storeIntent = new Intent("android.intent.action.VIEW", Uri.parse("oculus.store://link/products?referrer=manual&item_id=1193603937358048"));
        storeIntent.setFlags(270565376);
        return storeIntent;
    }

    public static Intent getXboxAppInAnyMarketIntent(Context context) {
        Intent storeIntent = getXboxAppInMarketIntent(context, PLAY_STORE_URI, PLAY_STORE_PACKAGE);
        if (storeIntent == null) {
            storeIntent = getXboxAppInMarketIntent(context, AMAZON_STORE_URI, AMAZON_UNDERGROUND_PACKAGE);
        }
        if (storeIntent == null) {
            storeIntent = getXboxAppInMarketIntent(context, AMAZON_STORE_URI, AMAZON_TABLET_STORE_PACKAGE);
        }
        if (storeIntent == null) {
            storeIntent = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=com.microsoft.xboxone.smartglass"));
        }
        storeIntent.setFlags(270565376);
        return storeIntent;
    }

    public static Intent getXboxAppInMarketIntent(Context context, String storeUri, String expectedStorePackage) {
        Intent marketIntent = new Intent("android.intent.action.VIEW", Uri.parse(storeUri + XBOXAPP_PACKAGE));
        List<ResolveInfo> appsAbleToHandleIntent = context.getPackageManager().queryIntentActivities(marketIntent, 0);
        for (ResolveInfo app : appsAbleToHandleIntent) {
            if (app.activityInfo.applicationInfo.packageName.equals(expectedStorePackage)) {
                ActivityInfo otherAppActivity = app.activityInfo;
                ComponentName componentName = new ComponentName(otherAppActivity.applicationInfo.packageName, otherAppActivity.name);
                marketIntent.setFlags(270532608);
                marketIntent.setComponent(componentName);
                return marketIntent;
            }
        }
        return null;
    }

    public static Intent getAppIntent(Context context, String intentString) {
        return context.getPackageManager().getLaunchIntentForPackage(intentString);
    }

    public static Intent getXboxAppLaunchIntent(Context context) {
        if (betaAppInstalled) {
            return context.getPackageManager().getLaunchIntentForPackage(XBOXAPP_BETA_PACKAGE);
        }
        return context.getPackageManager().getLaunchIntentForPackage(XBOXAPP_PACKAGE);
    }
}
