package com.google.android.gms.gcm;

import android.app.Service;
import android.os.Bundle;

public abstract class GcmListenerService extends Service {
    @Override
    public android.os.IBinder onBind(android.content.Intent intent) {
        return null;
    }

    public abstract void onMessageReceived(String from, Bundle data);
}