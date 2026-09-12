package com.microsoft.xbox.idp.telemetry.helpers;

import com.microsoft.xbox.idp.model.Profile;
import com.microsoft.xbox.idp.telemetry.utc.model.UTCCommonDataModel;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UTCWelcome {
    public static void trackDone(Profile.User user, CharSequence activityTitle) {
        if (user != null) {
            try {
                UTCCommonDataModel.setUserId(user.id);
            } catch (Exception e) {
                UTCLog.log(e.getMessage(), new Object[0]);
                return;
            }
        }
        UTCPageAction.track("Welcome - Done", activityTitle);
    }

    public static void trackChangeUser(Profile.User user, CharSequence activityTitle) {
        if (user != null) {
            try {
                UTCCommonDataModel.setUserId(user.id);
            } catch (Exception e) {
                UTCLog.log(e.getMessage(), new Object[0]);
                return;
            }
        }
        UTCPageAction.track("Welcome - Change user", activityTitle);
    }

    public static void trackPageView(Profile.User user, CharSequence activityTitle) {
        if (user != null) {
            try {
                UTCCommonDataModel.setUserId(user.id);
            } catch (Exception e) {
                UTCLog.log(e.getMessage(), new Object[0]);
                return;
            }
        }
        UTCPageView.track("Welcome view", activityTitle);
    }
}
