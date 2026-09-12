package com.microsoft.xbox.idp.model.gcm;

import android.content.Intent;
import com.google.android.gms.iid.InstanceIDListenerService;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class NotificationInstanceIDListenerService extends InstanceIDListenerService {
    public static String REFRESH_FLAG = "isRefresh";
    private static final String TAG = "MyInstanceIDLS";

    @Override // com.google.android.gms.iid.InstanceIDListenerService
    public void onTokenRefresh() {
        Intent intent = new Intent(this, (Class<?>) RegistrationIntentService.class);
        intent.putExtra(REFRESH_FLAG, true);
        startService(intent);
    }
}
