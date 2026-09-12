package com.microsoft.xbox.toolkit;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface IProjectSpecificDataProvider {
    boolean getAllowExplicitContent();

    String getAutoSuggestdDataSource();

    String getCombinedContentRating();

    String getConnectedLocale();

    String getConnectedLocale(boolean z);

    String getContentRestrictions();

    String getCurrentSandboxID();

    boolean getInitializeComplete();

    boolean getIsForXboxOne();

    boolean getIsFreeAccount();

    boolean getIsXboxMusicSupported();

    String getLegalLocale();

    String getMembershipLevel();

    String getPrivileges();

    String getRegion();

    String getSCDRpsTicket();

    String getVersionCheckUrl();

    int getVersionCode();

    String getWindowsLiveClientId();

    String getXuidString();

    boolean isDeviceLocaleKnown();

    void resetModels(boolean z);

    void setPrivileges(String str);

    void setSCDRpsTicket(String str);

    void setXuidString(String str);
}
