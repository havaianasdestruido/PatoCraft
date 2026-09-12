package com.microsoft.xbox.idp.telemetry.helpers;

import com.facebook.share.internal.ShareConstants;
import com.microsoft.xbox.idp.telemetry.utc.model.UTCAdditionalInfoModel;
import com.microsoft.xbox.idp.telemetry.utc.model.UTCNames;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UTCUser {
    private static final boolean DEFAULT = true;
    private static boolean isSilent = true;

    public static void setIsSilent(boolean silent) {
        isSilent = silent;
    }

    public static void trackSignout(CharSequence activityTitle) {
        UTCAdditionalInfoModel model = new UTCAdditionalInfoModel();
        model.addValue("isSilent", Boolean.valueOf(isSilent));
        UTCPageAction.track("Signout - User signed out", activityTitle, model);
        isSilent = true;
    }

    public static void trackCancel(CharSequence activityTitle) {
        UTCAdditionalInfoModel model = new UTCAdditionalInfoModel();
        String curr = UTCPageView.getCurrentPage();
        try {
            if (curr != null) {
                model.addValue("canceledPage", curr);
                UTCPageAction.track("UserCancel - User canceled", activityTitle, model);
            } else {
                UTCPageAction.track("UserCancel - User canceled", activityTitle);
            }
        } catch (Exception e) {
            UTCError.trackException(e, "UTCUser.trackCancel");
            UTCLog.log(e.getMessage(), new Object[0]);
        }
    }

    public static void trackMSACancel(CharSequence activityTitle, String MSAJobName, boolean isSilent2, UTCTelemetry.CallBackSources source) {
        try {
            UTCAdditionalInfoModel model = new UTCAdditionalInfoModel();
            model.addValue("isSilent", Boolean.valueOf(isSilent2));
            model.addValue("job", MSAJobName);
            model.addValue(ShareConstants.FEED_SOURCE_PARAM, source);
            UTCPageAction.track(UTCNames.PageAction.MSA.Cancel, activityTitle, model);
        } catch (Exception e) {
            UTCError.trackException(e, "UTCUser.trackMSACancel");
            UTCLog.log(e.getMessage(), new Object[0]);
        }
    }
}
