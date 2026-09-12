package com.microsoft.xbox.service.model.sls;

import com.microsoft.xbox.toolkit.GsonUtil;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UserProfileRequest {
    public ArrayList<String> settings;
    public ArrayList<String> userIds;

    public UserProfileRequest() {
        this.settings = new ArrayList<>();
        this.userIds = new ArrayList<>();
        setDefaultProfileSettingsRequest(false);
    }

    public UserProfileRequest(ArrayList<String> userIds, boolean dataEssentialForLoginOnly) {
        this.userIds = userIds;
        this.settings = new ArrayList<>();
        setDefaultProfileSettingsRequest(dataEssentialForLoginOnly);
    }

    public UserProfileRequest(ArrayList<String> userIds) {
        this(userIds, false);
    }

    public UserProfileRequest(ArrayList<String> userIds, ArrayList<String> settings) {
        this.userIds = userIds;
        this.settings = settings;
    }

    public static String getUserProfileRequestBody(UserProfileRequest userProfileRequest) {
        return GsonUtil.toJsonString(userProfileRequest);
    }

    private void setDefaultProfileSettingsRequest(boolean dataEssentialForLoginOnly) {
        if (this.settings != null) {
            this.settings.add(UserProfileSetting.GameDisplayName.toString());
            this.settings.add(UserProfileSetting.AppDisplayName.toString());
            this.settings.add(UserProfileSetting.AppDisplayPicRaw.toString());
            this.settings.add(UserProfileSetting.Gamerscore.toString());
            this.settings.add(UserProfileSetting.Gamertag.toString());
            this.settings.add(UserProfileSetting.GameDisplayPicRaw.toString());
            this.settings.add(UserProfileSetting.AccountTier.toString());
            this.settings.add(UserProfileSetting.TenureLevel.toString());
            this.settings.add(UserProfileSetting.XboxOneRep.toString());
            this.settings.add(UserProfileSetting.PreferredColor.toString());
            this.settings.add(UserProfileSetting.Location.toString());
            this.settings.add(UserProfileSetting.Bio.toString());
            this.settings.add(UserProfileSetting.Watermarks.toString());
            if (!dataEssentialForLoginOnly) {
                this.settings.add(UserProfileSetting.RealName.toString());
            }
        }
    }
}
