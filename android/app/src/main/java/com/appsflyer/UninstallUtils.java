package com.appsflyer;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.google.android.gms.iid.InstanceIDListenerService;
import com.google.firebase.iid.FirebaseInstanceIdService;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class UninstallUtils {
    private static final String FIREBASE_INSTANCE_ID_INTENT_FILTER_ACTION = "com.google.firebase.INSTANCE_ID_EVENT";
    private static final String GCM_INSTANCE_ID_INTENT_FILTER_ACTION = "com.google.android.gms.iid.InstanceID";
    private static final String GCM_RECEIVER = "com.google.android.gms.gcm.GcmReceiver";
    private static final String GCM_RECEIVER_INTENT_FILTER_ACTION = "com.google.android.c2dm.intent.RECEIVE";
    private static final String PERMISSION_C2_D_MESSAGE = ".permission.C2D_MESSAGE";

    UninstallUtils() {
    }

    static boolean didConfigureTokenRefreshService(Context context) {
        boolean result = didConfigureGcmTokenRefreshService(context);
        return result | didConfigureFirebaseTokenRefreshService(context);
    }

    private static boolean didConfigureGcmTokenRefreshService(Context context) {
        try {
            Intent afGcmInstanceIdServiceIntent = new Intent(GCM_INSTANCE_ID_INTENT_FILTER_ACTION, null, context, GcmInstanceIdListener.class);
            Intent gcmInstanceIdServiceIntent = new Intent(GCM_INSTANCE_ID_INTENT_FILTER_ACTION, null, context, InstanceIDListenerService.class);
            if (AndroidUtils.isServiceAvailable(context, afGcmInstanceIdServiceIntent) || AndroidUtils.isServiceAvailable(context, gcmInstanceIdServiceIntent)) {
                Intent gcmReceiverIntent = new Intent(GCM_RECEIVER_INTENT_FILTER_ACTION, null, context, Class.forName(GCM_RECEIVER));
                if (AndroidUtils.isReceiverAvailable(context, gcmReceiverIntent)) {
                    String packageName = context.getPackageName();
                    if (AndroidUtils.isPermissionAvailable(context, packageName + PERMISSION_C2_D_MESSAGE)) {
                        return true;
                    }
                    AFLogger.afWarnLog(LogMessages.GCM_PERMISSION_MISSING_WARNING);
                } else {
                    AFLogger.afWarnLog(LogMessages.GCM_RECEIVER_MISSING_WARNING);
                }
            }
        } catch (Throwable e) {
            AFLogger.afLogE("An error occurred while trying to verify manifest declarations: ", e);
        }
        return false;
    }

    private static boolean didConfigureFirebaseTokenRefreshService(Context context) {
        try {
            Intent afFirebaseInstanceIdServiceIntent = new Intent(FIREBASE_INSTANCE_ID_INTENT_FILTER_ACTION, null, context, FirebaseInstanceIdListener.class);
            Intent firebaseInstanceIdServiceIntent = new Intent(FIREBASE_INSTANCE_ID_INTENT_FILTER_ACTION, null, context, FirebaseInstanceIdService.class);
            if (AndroidUtils.isServiceAvailable(context, afFirebaseInstanceIdServiceIntent) || AndroidUtils.isServiceAvailable(context, firebaseInstanceIdServiceIntent)) {
                return true;
            }
            AFLogger.afWarnLog(LogMessages.UNINSTALL_INSTANCE_ID_MISSING_WARNING);
        } catch (Throwable e) {
            AFLogger.afLogE("An error occurred while trying to verify manifest declarations: ", e);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AFUninstallToken getGCMToken(WeakReference<Context> context, String gcmProjectNumber) {
        AFUninstallToken aFUninstallToken = null;
        try {
            Class<?> gcmInstanceId = Class.forName(GCM_INSTANCE_ID_INTENT_FILTER_ACTION);
            Class.forName(GCM_RECEIVER);
            Method getInstance = gcmInstanceId.getDeclaredMethod("getInstance", Context.class);
            Object instance = getInstance.invoke(gcmInstanceId, context.get());
            Method getToken = gcmInstanceId.getDeclaredMethod("getToken", String.class, String.class);
            String token = (String) getToken.invoke(instance, gcmProjectNumber, GoogleCloudMessaging.INSTANCE_ID_SCOPE);
            if (token == null) {
                AFLogger.afWarnLog("Couldn't get token using reflection.");
            } else {
                aFUninstallToken = new AFUninstallToken(System.currentTimeMillis(), token);
            }
        } catch (ClassNotFoundException e) {
        } catch (Throwable t) {
            AFLogger.afLogE("Couldn't get token using GoogleCloudMessaging. ", t);
        }
        return aFUninstallToken;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.appsflyer.UninstallUtils$1] */
    static void registerDeviceForUninstalls(final WeakReference<Context> weakContext) {
        new AsyncTask<Void, Void, AFUninstallToken>() { // from class: com.appsflyer.UninstallUtils.1
            String gcmProjectNumber;

            @Override // android.os.AsyncTask
            protected void onPreExecute() {
                super.onPreExecute();
                this.gcmProjectNumber = AppsFlyerProperties.getInstance().getString("gcmProjectNumber");
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public AFUninstallToken doInBackground(Void... params) {
                try {
                    if (this.gcmProjectNumber != null) {
                        AFUninstallToken uninstallToken = UninstallUtils.getGCMToken(weakContext, this.gcmProjectNumber);
                        return uninstallToken;
                    }
                    return null;
                } catch (Throwable t) {
                    AFLogger.afLogE("Error registering for uninstall feature", t);
                    return null;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(AFUninstallToken newAFUninstallToken) {
                if (newAFUninstallToken != null && newAFUninstallToken.getToken() != null) {
                    String tokenObjectString = AppsFlyerProperties.getInstance().getString("afUninstallToken");
                    if (tokenObjectString == null) {
                        UninstallUtils.updateServerUninstallToken((Context) weakContext.get(), newAFUninstallToken);
                        return;
                    }
                    AFUninstallToken existingAFUninstallToken = AFUninstallToken.parse(tokenObjectString);
                    if (existingAFUninstallToken != null) {
                        boolean shouldUpdateServerWithNewToken = existingAFUninstallToken.testAndUpdate(newAFUninstallToken);
                        if (shouldUpdateServerWithNewToken) {
                            UninstallUtils.updateServerUninstallToken((Context) weakContext.get(), existingAFUninstallToken);
                        }
                    }
                }
            }
        }.execute(new Void[0]);
    }

    static void updateServerUninstallToken(Context context, AFUninstallToken token) {
        AFLogger.afLog("updateServerUninstallToken called with: " + token.toString());
        AppsFlyerProperties.getInstance().set("afUninstallToken", token.toString());
        AppsFlyerLib.getInstance().callRegisterBackground(context, token.getToken());
    }
}
