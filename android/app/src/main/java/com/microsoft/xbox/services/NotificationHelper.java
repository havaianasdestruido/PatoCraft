package com.microsoft.xbox.services;

import android.content.Context;
import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class NotificationHelper {
    public static NotificationResult tryParseXboxLiveNotification(Bundle bundle, Context ctx) {
        return new NotificationResult(bundle, ctx);
    }
}
