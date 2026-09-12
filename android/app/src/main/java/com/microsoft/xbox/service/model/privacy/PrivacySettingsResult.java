package com.microsoft.xbox.service.model.privacy;

import com.microsoft.xbox.toolkit.GsonUtil;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class PrivacySettingsResult {
    public ArrayList<PrivacySettings.PrivacySetting> settings;

    public PrivacySettingsResult() {
    }

    public PrivacySettingsResult(ArrayList<PrivacySettings.PrivacySetting> settings) {
        this.settings = new ArrayList<>(settings);
    }

    public static PrivacySettingsResult deserialize(String input) {
        return (PrivacySettingsResult) GsonUtil.deserializeJson(input, PrivacySettingsResult.class);
    }

    public String getShareRealNameStatus() {
        for (PrivacySettings.PrivacySetting s : this.settings) {
            if (s.getPrivacySettingId() == PrivacySettings.PrivacySettingId.ShareIdentity) {
                return s.value;
            }
        }
        return PrivacySettings.PrivacySettingValue.PeopleOnMyList.name();
    }

    public boolean getSharingRealNameTransitively() {
        for (PrivacySettings.PrivacySetting s : this.settings) {
            if (s.getPrivacySettingId() == PrivacySettings.PrivacySettingId.ShareIdentityTransitively) {
                return s.value.equalsIgnoreCase(PrivacySettings.PrivacySettingValue.Everyone.name());
            }
        }
        return false;
    }

    public static String getPrivacySettingRequestBody(PrivacySettingsResult privacySettingsResult) {
        try {
            return GsonUtil.toJsonString(privacySettingsResult);
        } catch (Exception e) {
            return null;
        }
    }
}
