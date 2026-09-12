package com.microsoft.xbox.services;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.facebook.share.internal.ShareConstants;
import com.microsoft.xbox.idp.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class NotificationResult {
    public String body;
    public String data;
    public NotificationType notificationType;
    public String title;

    public enum NotificationType {
        Achievement,
        Invite,
        Unknown
    }

    public NotificationResult(Bundle bundle, Context ctx) {
        String type = bundle.getString(ShareConstants.MEDIA_TYPE);
        if (type == null) {
            this.notificationType = NotificationType.Unknown;
        } else if (type.equals("xbox_live_game_invite")) {
            this.title = ctx.getString(R.string.xbox_live_game_invite_title);
            String invitePartialBody = ctx.getString(R.string.xbox_live_game_invite_body);
            Bundle bundleNoti = bundle.getBundle("notification");
            if (bundleNoti != null) {
                String bodyStrArr = bundleNoti.getString("body_loc_args");
                if (bodyStrArr != null) {
                    String[] strArr = bodyStrArr.replace("[", "").replace("]", "").split(",");
                    this.body = String.format(invitePartialBody, strArr[0], strArr[1]);
                }
            } else {
                Log.i("XSAPI.Android", "could not parse notification");
            }
            this.notificationType = NotificationType.Invite;
        } else if (type.equals("xbox_live_achievement_unlock")) {
            this.notificationType = NotificationType.Achievement;
            Bundle bundleNoti2 = bundle.getBundle("notification");
            if (bundleNoti2 != null) {
                this.title = bundleNoti2.getString(ShareConstants.WEB_DIALOG_PARAM_TITLE);
                this.body = bundleNoti2.getString("body");
            }
        } else {
            this.notificationType = NotificationType.Unknown;
        }
        this.data = bundle.getString("xbl");
    }
}
