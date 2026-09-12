package quack.mc.patocraft;

import android.os.Bundle;
import com.google.android.gms.gcm.GcmListenerService;
import com.microsoft.xbox.services.NotificationHelper;
import com.microsoft.xbox.services.NotificationResult;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class NotificationListenerService extends GcmListenerService {
    native void nativePushNotificationReceived(int i, String str, String str2, String str3);

    @Override // com.google.android.gms.gcm.GcmListenerService
    public void onMessageReceived(String from, Bundle data) {
        NotificationResult result = NotificationHelper.tryParseXboxLiveNotification(data, this);
        nativePushNotificationReceived(result.notificationType.ordinal(), result.title, result.body, result.data);
    }
}
