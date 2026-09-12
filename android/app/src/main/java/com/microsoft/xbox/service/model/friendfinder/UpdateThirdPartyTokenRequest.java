package com.microsoft.xbox.service.model.friendfinder;

import com.microsoft.xbox.toolkit.GsonUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UpdateThirdPartyTokenRequest {
    public String accessToken;

    public UpdateThirdPartyTokenRequest(String token) {
        this.accessToken = token;
    }

    public static String getUpdateThirdPartyTokenRequestBody(UpdateThirdPartyTokenRequest updateThirdPartyTokenRequest) {
        try {
            return GsonUtil.toJsonString(updateThirdPartyTokenRequest);
        } catch (Exception e) {
            return null;
        }
    }
}
