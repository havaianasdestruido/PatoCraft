package com.appsflyer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SingleInstallBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            String newReferrer = intent.getStringExtra("referrer");
            if (newReferrer != null) {
                if (newReferrer.contains("AppsFlyer_Test") && intent.getStringExtra("TestIntegrationMode") != null) {
                    AppsFlyerLib.getInstance().onReceive(context, intent);
                    return;
                }
                SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
                if (sharedPreferences.getString("referrer", null) != null) {
                    AppsFlyerLib.getInstance().addReferrer(context, newReferrer);
                    return;
                }
            }
            String referrerTimestamp = AppsFlyerProperties.getInstance().getString("referrer_timestamp");
            long now = System.currentTimeMillis();
            if (referrerTimestamp == null || now - Long.valueOf(referrerTimestamp).longValue() >= 2000) {
                AFLogger.afLog("SingleInstallBroadcastReceiver called");
                AppsFlyerLib.getInstance().onReceive(context, intent);
                AppsFlyerProperties.getInstance().set("referrer_timestamp", String.valueOf(System.currentTimeMillis()));
            }
        }
    }
}
