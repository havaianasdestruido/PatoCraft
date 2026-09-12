package com.appsflyer;

import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.FirebaseInstanceIdService;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FirebaseInstanceIdListener extends FirebaseInstanceIdService {
    public void onTokenRefresh() {
        super.onTokenRefresh();
        String refreshedToken = null;
        long tokenTimestamp = System.currentTimeMillis();
        try {
            refreshedToken = FirebaseInstanceId.getInstance().getToken();
        } catch (Throwable t) {
            AFLogger.afLogE("Error registering for uninstall tracking", t);
        }
        if (refreshedToken != null) {
            AFLogger.afLog("Firebase Refreshed Token = " + refreshedToken);
            String tokenString = AppsFlyerProperties.getInstance().getString("afUninstallToken");
            AFUninstallToken existingAFUninstallToken = AFUninstallToken.parse(tokenString);
            AFUninstallToken newFirebaseToken = new AFUninstallToken(tokenTimestamp, refreshedToken);
            if (existingAFUninstallToken != null && existingAFUninstallToken.testAndUpdate(newFirebaseToken)) {
                UninstallUtils.updateServerUninstallToken(getApplicationContext(), newFirebaseToken);
            }
        }
    }
}
