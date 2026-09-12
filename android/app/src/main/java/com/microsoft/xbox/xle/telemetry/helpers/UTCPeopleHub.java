package com.microsoft.xbox.xle.telemetry.helpers;

import com.microsoft.xbox.idp.telemetry.helpers.UTCPageAction;
import com.microsoft.xbox.idp.telemetry.helpers.UTCPageView;
import com.microsoft.xbox.idp.telemetry.utc.model.UTCAdditionalInfoModel;
import com.microsoft.xbox.toolkit.XLEAssert;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UTCPeopleHub {
    private static String currentXUID = "";
    private static CharSequence currentActivityTitle = "";

    private static void verifyTrackedDefaults() {
        XLEAssert.assertFalse("Called trackPeopleHubView without set currentXUID", currentXUID.equals(""));
        XLEAssert.assertFalse("Called trackPeopleHubView without set activityTitle", currentActivityTitle.toString().equals(""));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static UTCAdditionalInfoModel getBaseInfoModel(String targetXUID) {
        UTCAdditionalInfoModel additionalInfoModel = new UTCAdditionalInfoModel();
        additionalInfoModel.addValue(UTCDeepLink.TARGET_XUID_KEY, "x:" + targetXUID);
        return additionalInfoModel;
    }

    public static void trackPeopleHubView(final CharSequence activityTitle, final String targetXUID, final boolean isMeView) {
        UTCEventTracker.callTrackWrapper(new UTCEventTracker.UTCEventDelegate() { // from class: com.microsoft.xbox.xle.telemetry.helpers.UTCPeopleHub.1
            @Override // com.microsoft.xbox.xle.telemetry.helpers.UTCEventTracker.UTCEventDelegate
            public void call() {
                String unused = UTCPeopleHub.currentXUID = targetXUID;
                CharSequence unused2 = UTCPeopleHub.currentActivityTitle = activityTitle;
                UTCPageView.track(isMeView ? "People Hub - ME View" : "People Hub - You View", UTCPeopleHub.currentActivityTitle, UTCPeopleHub.getBaseInfoModel(targetXUID));
            }
        });
    }

    public static void trackMute(boolean toBeMuted) {
        verifyTrackedDefaults();
        trackMute(currentActivityTitle, currentXUID, toBeMuted);
    }

    public static void trackMute(final CharSequence activityTitle, final String targetXUID, final boolean toBeMuted) {
        UTCEventTracker.callTrackWrapper(new UTCEventTracker.UTCEventDelegate() { // from class: com.microsoft.xbox.xle.telemetry.helpers.UTCPeopleHub.2
            @Override // com.microsoft.xbox.xle.telemetry.helpers.UTCEventTracker.UTCEventDelegate
            public void call() {
                UTCAdditionalInfoModel additionalInfo = UTCPeopleHub.getBaseInfoModel(targetXUID);
                additionalInfo.addValue("isMuted", Boolean.valueOf(toBeMuted));
                UTCPageAction.track("People Hub - Mute", activityTitle, additionalInfo);
            }
        });
    }

    public static void trackUnblock() {
        verifyTrackedDefaults();
        trackUnblock(currentActivityTitle, currentXUID);
    }

    public static void trackUnblock(final CharSequence activityTitle, final String targetXUID) {
        UTCEventTracker.callTrackWrapper(new UTCEventTracker.UTCEventDelegate() { // from class: com.microsoft.xbox.xle.telemetry.helpers.UTCPeopleHub.3
            @Override // com.microsoft.xbox.xle.telemetry.helpers.UTCEventTracker.UTCEventDelegate
            public void call() {
                UTCPageAction.track("People Hub - Unblock", activityTitle, UTCPeopleHub.getBaseInfoModel(targetXUID));
            }
        });
    }

    public static void trackBlock() {
        verifyTrackedDefaults();
        trackBlock(currentActivityTitle, currentXUID);
    }

    public static void trackBlock(final CharSequence activityTitle, final String targetXUID) {
        UTCEventTracker.callTrackWrapper(new UTCEventTracker.UTCEventDelegate() { // from class: com.microsoft.xbox.xle.telemetry.helpers.UTCPeopleHub.4
            @Override // com.microsoft.xbox.xle.telemetry.helpers.UTCEventTracker.UTCEventDelegate
            public void call() {
                UTCPageAction.track("People Hub - Block", activityTitle, UTCPeopleHub.getBaseInfoModel(targetXUID));
            }
        });
    }

    public static void trackBlockDialogComplete() {
        verifyTrackedDefaults();
        trackBlockDialogComplete(currentActivityTitle, currentXUID);
    }

    public static void trackBlockDialogComplete(final CharSequence activityTitle, final String targetXUID) {
        UTCEventTracker.callTrackWrapper(new UTCEventTracker.UTCEventDelegate() { // from class: com.microsoft.xbox.xle.telemetry.helpers.UTCPeopleHub.5
            @Override // com.microsoft.xbox.xle.telemetry.helpers.UTCEventTracker.UTCEventDelegate
            public void call() {
                UTCPageAction.track("People Hub - Block OK", activityTitle, UTCPeopleHub.getBaseInfoModel(targetXUID));
            }
        });
    }

    public static void trackReport() {
        verifyTrackedDefaults();
        trackReport(currentActivityTitle, currentXUID);
    }

    public static void trackReport(final CharSequence activityTitle, final String targetXUID) {
        UTCEventTracker.callTrackWrapper(new UTCEventTracker.UTCEventDelegate() { // from class: com.microsoft.xbox.xle.telemetry.helpers.UTCPeopleHub.6
            @Override // com.microsoft.xbox.xle.telemetry.helpers.UTCEventTracker.UTCEventDelegate
            public void call() {
                UTCPageAction.track("People Hub - Report", activityTitle, UTCPeopleHub.getBaseInfoModel(targetXUID));
            }
        });
    }

    public static void trackViewInXboxApp() {
        verifyTrackedDefaults();
        trackViewInXboxApp(currentActivityTitle, currentXUID);
    }

    public static void trackViewInXboxApp(final CharSequence activityTitle, final String targetXUID) {
        UTCEventTracker.callTrackWrapper(new UTCEventTracker.UTCEventDelegate() { // from class: com.microsoft.xbox.xle.telemetry.helpers.UTCPeopleHub.7
            @Override // com.microsoft.xbox.xle.telemetry.helpers.UTCEventTracker.UTCEventDelegate
            public void call() {
                UTCPageAction.track("People Hub - View in Xbox App", activityTitle, UTCPeopleHub.getBaseInfoModel(targetXUID));
            }
        });
    }

    public static void trackViewInXboxAppDialogComplete() {
        verifyTrackedDefaults();
        trackViewInXboxAppDialogComplete(currentActivityTitle, currentXUID);
    }

    public static void trackViewInXboxAppDialogComplete(final CharSequence activityTitle, final String targetXUID) {
        UTCEventTracker.callTrackWrapper(new UTCEventTracker.UTCEventDelegate() { // from class: com.microsoft.xbox.xle.telemetry.helpers.UTCPeopleHub.8
            @Override // com.microsoft.xbox.xle.telemetry.helpers.UTCEventTracker.UTCEventDelegate
            public void call() {
                UTCPageAction.track("People Hub - View in Xbox App OK", activityTitle, UTCPeopleHub.getBaseInfoModel(targetXUID));
            }
        });
    }
}
