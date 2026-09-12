package com.appsflyer;

import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.google.android.gms.iid.InstanceID;
import com.google.android.gms.iid.InstanceIDListenerService;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class GcmInstanceIdListener extends InstanceIDListenerService {
    @Override // com.google.android.gms.iid.InstanceIDListenerService
    public void onTokenRefresh() {
        super.onTokenRefresh();
        String gcmProjectNumber = AppsFlyerProperties.getInstance().getString("gcmProjectNumber");
        String refreshedToken = null;
        long tokenTimestamp = System.currentTimeMillis();
        try {
            refreshedToken = InstanceID.getInstance(getApplicationContext()).getToken(gcmProjectNumber, GoogleCloudMessaging.INSTANCE_ID_SCOPE, null);
        } catch (Throwable t) {
            AFLogger.afLogE("Error registering for uninstall tracking", t);
        }
        if (refreshedToken != null) {
            AFLogger.afLog("GCM Refreshed Token = " + refreshedToken);
            String tokenString = AppsFlyerProperties.getInstance().getString("afUninstallToken");
            AFUninstallToken existingAFUninstallToken = AFUninstallToken.parse(tokenString);
            AFUninstallToken newGcmToken = new AFUninstallToken(tokenTimestamp, refreshedToken);
            if (existingAFUninstallToken != null && existingAFUninstallToken.testAndUpdate(newGcmToken)) {
                UninstallUtils.updateServerUninstallToken(getApplicationContext(), newGcmToken);
            }
        }
    }
}
