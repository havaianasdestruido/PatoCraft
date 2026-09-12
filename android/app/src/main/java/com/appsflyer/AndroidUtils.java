package com.appsflyer;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.support.v4.content.ContextCompat;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class AndroidUtils {
    AndroidUtils() {
    }

    static boolean isReceiverAvailable(Context context, Intent intent) {
        PackageManager packageManager = context.getPackageManager();
        List<ResolveInfo> resolveInfo = packageManager.queryBroadcastReceivers(intent, 0);
        return resolveInfo.size() > 0;
    }

    static boolean isServiceAvailable(Context context, Intent intent) {
        PackageManager packageManager = context.getPackageManager();
        List<ResolveInfo> resolveInfo = packageManager.queryIntentServices(intent, 0);
        return resolveInfo.size() > 0;
    }

    static boolean isPermissionAvailable(Context context, String permissionString) {
        int res = ContextCompat.checkSelfPermission(context, permissionString);
        return res == 0;
    }
}
