package com.microsoft.xbox.xle.telemetry.helpers;

import com.microsoft.xbox.idp.telemetry.helpers.UTCPageAction;
import com.microsoft.xbox.idp.telemetry.utc.CommonData;
import com.microsoft.xbox.idp.telemetry.utc.model.UTCAdditionalInfoModel;
import com.microsoft.xbox.idp.telemetry.utc.model.UTCCommonDataModel;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UTCDeepLink {
    public static final String CALLING_APP_KEY = "deepLinkCaller";
    public static final String DEEPLINK_KEY_NAME = "deepLinkId";
    public static final String INTENDED_ACTION_KEY = "intendedAction";
    public static final String TARGET_TITLE_KEY = "targetTitleId";
    public static final String TARGET_XUID_KEY = "targetXUID";

    private static String generateCorrelationId() {
        CommonData commonData = UTCCommonDataModel.getCommonData(1);
        return commonData.getAppSessionId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static UTCAdditionalInfoModel getBaseModelInfo(String packageName) {
        UTCAdditionalInfoModel model = new UTCAdditionalInfoModel();
        model.addValue(DEEPLINK_KEY_NAME, generateCorrelationId());
        model.addValue(CALLING_APP_KEY, packageName);
        return model;
    }

    public static String trackUserProfileLink(final CharSequence activityTitle, final String packageName, final String targetXuid) {
        return UTCEventTracker.callStringTrackWrapper(new UTCEventTracker.UTCStringEventDelegate() { // from class: com.microsoft.xbox.xle.telemetry.helpers.UTCDeepLink.1
            @Override // com.microsoft.xbox.xle.telemetry.helpers.UTCEventTracker.UTCStringEventDelegate
            public String call() {
                UTCAdditionalInfoModel model = UTCDeepLink.getBaseModelInfo(packageName);
                model.addValue(UTCDeepLink.TARGET_XUID_KEY, "x:" + targetXuid);
                UTCPageAction.track("DeepLink - User Profile", activityTitle, model);
                return model.getAdditionalInfo().get(UTCDeepLink.DEEPLINK_KEY_NAME).toString();
            }
        });
    }

    public static String trackGameHubLink(final CharSequence activityTitle, final String packageName, final String titleId) {
        return UTCEventTracker.callStringTrackWrapper(new UTCEventTracker.UTCStringEventDelegate() { // from class: com.microsoft.xbox.xle.telemetry.helpers.UTCDeepLink.2
            @Override // com.microsoft.xbox.xle.telemetry.helpers.UTCEventTracker.UTCStringEventDelegate
            public String call() {
                UTCAdditionalInfoModel model = UTCDeepLink.getBaseModelInfo(packageName);
                model.addValue(UTCDeepLink.TARGET_XUID_KEY, titleId);
                UTCPageAction.track("DeepLink - GameHub", activityTitle, model);
                return model.getAdditionalInfo().get(UTCDeepLink.DEEPLINK_KEY_NAME).toString();
            }
        });
    }

    public static String trackGameHubAchievementsLink(final CharSequence activityTitle, final String packageName, final String titleId) {
        return UTCEventTracker.callStringTrackWrapper(new UTCEventTracker.UTCStringEventDelegate() { // from class: com.microsoft.xbox.xle.telemetry.helpers.UTCDeepLink.3
            @Override // com.microsoft.xbox.xle.telemetry.helpers.UTCEventTracker.UTCStringEventDelegate
            public String call() {
                UTCAdditionalInfoModel model = UTCDeepLink.getBaseModelInfo(packageName);
                model.addValue(UTCDeepLink.TARGET_TITLE_KEY, titleId);
                UTCPageAction.track("DeepLink - GameHub", activityTitle, model);
                return model.getAdditionalInfo().get(UTCDeepLink.DEEPLINK_KEY_NAME).toString();
            }
        });
    }

    public static String trackUserSettingsLink(final CharSequence activityTitle, final String packageName) {
        return UTCEventTracker.callStringTrackWrapper(new UTCEventTracker.UTCStringEventDelegate() { // from class: com.microsoft.xbox.xle.telemetry.helpers.UTCDeepLink.4
            @Override // com.microsoft.xbox.xle.telemetry.helpers.UTCEventTracker.UTCStringEventDelegate
            public String call() {
                UTCAdditionalInfoModel model = UTCDeepLink.getBaseModelInfo(packageName);
                UTCPageAction.track("DeepLink - User Settings", activityTitle, model);
                return model.getAdditionalInfo().get(UTCDeepLink.DEEPLINK_KEY_NAME).toString();
            }
        });
    }

    public static void trackUserSendToStore(final CharSequence activityTitle, final String packageName, final String intendedAction) {
        UTCEventTracker.callTrackWrapper(new UTCEventTracker.UTCEventDelegate() { // from class: com.microsoft.xbox.xle.telemetry.helpers.UTCDeepLink.5
            @Override // com.microsoft.xbox.xle.telemetry.helpers.UTCEventTracker.UTCEventDelegate
            public void call() {
                UTCAdditionalInfoModel model = UTCDeepLink.getBaseModelInfo(packageName);
                model.addValue(UTCDeepLink.INTENDED_ACTION_KEY, intendedAction);
                UTCPageAction.track("DeepLink - Store Redirect", activityTitle, model);
            }
        });
    }

    public static String trackFriendSuggestionsLink(final CharSequence activityTitle, final String packageName) {
        return UTCEventTracker.callStringTrackWrapper(new UTCEventTracker.UTCStringEventDelegate() { // from class: com.microsoft.xbox.xle.telemetry.helpers.UTCDeepLink.6
            @Override // com.microsoft.xbox.xle.telemetry.helpers.UTCEventTracker.UTCStringEventDelegate
            public String call() {
                UTCAdditionalInfoModel additionalInfoModel = UTCDeepLink.getBaseModelInfo(packageName);
                UTCPageAction.track("DeepLink - Friend Suggestions", activityTitle, additionalInfoModel);
                return additionalInfoModel.getAdditionalInfo().get(UTCDeepLink.DEEPLINK_KEY_NAME).toString();
            }
        });
    }
}
