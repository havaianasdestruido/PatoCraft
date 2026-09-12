package com.microsoft.onlineid.internal;

import android.app.PendingIntent;
import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface IUserInteractionCallback {
    void onUINeeded(PendingIntent pendingIntent, Bundle bundle);

    void onUserCancel(Bundle bundle);
}
