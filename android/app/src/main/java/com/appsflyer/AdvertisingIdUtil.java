package com.appsflyer;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import com.google.android.gms.common.GoogleApiAvailability;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class AdvertisingIdUtil {
    public static final String AMAZON_MANUFACTURER = "Amazon";
    private static final String AMAZON_SETTING_ADVERTISING_ID = "advertising_id";
    private static final String AMAZON_SETTING_LIMIT_AD_TRACKING = "limit_ad_tracking";

    AdvertisingIdUtil() {
    }

    static AdvertisingIdObject getAmazonAID(ContentResolver contentResolver) {
        if (contentResolver == null) {
            return null;
        }
        String advertisingIdObjectString = AppsFlyerProperties.getInstance().getString(ServerParameters.AMAZON_AID);
        if (advertisingIdObjectString != null || !AMAZON_MANUFACTURER.equals(Build.MANUFACTURER)) {
            return null;
        }
        int limitAdTrackingInt = Settings.Secure.getInt(contentResolver, AMAZON_SETTING_LIMIT_AD_TRACKING, 2);
        if (limitAdTrackingInt == 0) {
            String advertisingID = Settings.Secure.getString(contentResolver, AMAZON_SETTING_ADVERTISING_ID);
            return new AdvertisingIdObject(AdvertisingIdObject.IdType.AMAZON, advertisingID, false);
        }
        if (limitAdTrackingInt == 2) {
            return null;
        }
        String advertisingID2 = "";
        try {
            advertisingID2 = Settings.Secure.getString(contentResolver, AMAZON_SETTING_ADVERTISING_ID);
        } catch (Throwable t) {
            AFLogger.afLogE("Couldn't fetch Amazon Advertising ID (Ad-Tracking is limited!)", t);
        }
        return new AdvertisingIdObject(AdvertisingIdObject.IdType.AMAZON, advertisingID2, true);
    }

    static void addGoogleAID(Context context, Map<String, Object> params) {
        AFLogger.afLog("Trying to fetch GAID..");
        String advertisingId = null;
        String advertisingIdEnabled = null;
        boolean advertisingIdWithGps = false;
        String gaidError = null;
        int statusCode = -1;
        try {
            Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
            com.google.android.gms.ads.identifier.AdvertisingIdClient.Info gpsAdInfo = com.google.android.gms.ads.identifier.AdvertisingIdClient.getAdvertisingIdInfo(context);
            if (gpsAdInfo != null) {
                advertisingId = gpsAdInfo.getId();
                advertisingIdEnabled = Boolean.toString(!gpsAdInfo.isLimitAdTrackingEnabled());
                advertisingIdWithGps = true;
                if (advertisingId == null || advertisingId.length() == 0) {
                    gaidError = "emptyOrNull";
                }
            } else {
                gaidError = "gpsAdInfo-null";
            }
        } catch (Throwable t1) {
            AFLogger.afLogE(t1.getMessage(), t1);
            try {
                statusCode = GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context);
            } catch (Throwable t) {
                AFLogger.afLogE(t.getMessage(), t);
            }
            gaidError = t1.getClass().getSimpleName();
            AFLogger.afLog("WARNING: Google Play Services is missing.");
            if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.ENABLE_GPS_FALLBACK, true)) {
                try {
                    AdvertisingIdClient.AdInfo internalAdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
                    if (internalAdInfo != null) {
                        advertisingId = internalAdInfo.getId();
                        advertisingIdEnabled = Boolean.toString(internalAdInfo.isLimitAdTrackingEnabled() ? false : true);
                        if (advertisingId == null || advertisingId.length() == 0) {
                            gaidError = "emptyOrNull (bypass)";
                        }
                    } else {
                        gaidError = "gpsAdInfo-null (bypass)";
                    }
                } catch (Throwable t2) {
                    AFLogger.afLogE(t2.getMessage(), t2);
                    gaidError = gaidError + "/" + t2.getClass().getSimpleName();
                    advertisingId = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
                    advertisingIdEnabled = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_ENABLED_PARAM);
                    if (t2.getLocalizedMessage() != null) {
                        AFLogger.afLog(t2.getLocalizedMessage());
                    } else {
                        AFLogger.afLog(t2.toString());
                    }
                }
            }
        }
        if (context.getClass().getName().equals("android.app.ReceiverRestrictedContext")) {
            advertisingId = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
            advertisingIdEnabled = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_ENABLED_PARAM);
            gaidError = "context = android.app.ReceiverRestrictedContext";
        }
        if (gaidError != null) {
            params.put("gaidError", statusCode + ": " + gaidError);
        }
        if (advertisingId != null && advertisingIdEnabled != null) {
            params.put(ServerParameters.ADVERTISING_ID_PARAM, advertisingId);
            params.put(ServerParameters.ADVERTISING_ID_ENABLED_PARAM, advertisingIdEnabled);
            AppsFlyerProperties.getInstance().set(ServerParameters.ADVERTISING_ID_PARAM, advertisingId);
            AppsFlyerProperties.getInstance().set(ServerParameters.ADVERTISING_ID_ENABLED_PARAM, advertisingIdEnabled);
            params.put(ServerParameters.ADVERTISING_ID_WITH_GPS, String.valueOf(advertisingIdWithGps));
        }
    }
}
