package com.appsflyer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MultipleInstallBroadcastReceiver extends BroadcastReceiver {
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
            AFLogger.afLog("MultipleInstallBroadcastReceiver called");
            AppsFlyerLib.getInstance().onReceive(context, intent);
            List<ResolveInfo> receivers = context.getPackageManager().queryBroadcastReceivers(new Intent("com.android.vending.INSTALL_REFERRER"), 0);
            for (ResolveInfo resolveInfo : receivers) {
                String action = intent.getAction();
                if (resolveInfo.activityInfo.packageName.equals(context.getPackageName()) && "com.android.vending.INSTALL_REFERRER".equals(action) && !getClass().getName().equals(resolveInfo.activityInfo.name)) {
                    AFLogger.afLog("trigger onReceive: class: " + resolveInfo.activityInfo.name);
                    try {
                        BroadcastReceiver broadcastReceiver = (BroadcastReceiver) Class.forName(resolveInfo.activityInfo.name).newInstance();
                        broadcastReceiver.onReceive(context, intent);
                    } catch (Throwable e) {
                        AFLogger.afLogE("error in BroadcastReceiver " + resolveInfo.activityInfo.name, e);
                    }
                }
            }
        }
    }
}
