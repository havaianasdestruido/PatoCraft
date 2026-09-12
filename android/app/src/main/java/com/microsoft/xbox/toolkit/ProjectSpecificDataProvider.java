package com.microsoft.xbox.toolkit;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ProjectSpecificDataProvider implements IProjectSpecificDataProvider {
    private static ProjectSpecificDataProvider instance = new ProjectSpecificDataProvider();
    private IProjectSpecificDataProvider provider;

    public static ProjectSpecificDataProvider getInstance() {
        return instance;
    }

    public void setProvider(IProjectSpecificDataProvider provider) {
        this.provider = provider;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getLegalLocale() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getLegalLocale();
        }
        return null;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getCombinedContentRating() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getCombinedContentRating();
        }
        return null;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getMembershipLevel() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getMembershipLevel();
        }
        return null;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getXuidString() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getXuidString();
        }
        return null;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public void setXuidString(String xuid) {
        checkProvider();
        if (this.provider != null) {
            this.provider.setXuidString(xuid);
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getSCDRpsTicket() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getSCDRpsTicket();
        }
        return null;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public void setSCDRpsTicket(String rpsTicket) {
        checkProvider();
        if (this.provider != null) {
            this.provider.setSCDRpsTicket(rpsTicket);
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getPrivileges() {
        checkProvider();
        return this.provider != null ? this.provider.getPrivileges() : "";
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public void setPrivileges(String privileges) {
        checkProvider();
        if (this.provider != null) {
            this.provider.setPrivileges(privileges);
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public boolean getAllowExplicitContent() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getAllowExplicitContent();
        }
        return false;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getAutoSuggestdDataSource() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getAutoSuggestdDataSource();
        }
        return null;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public boolean getInitializeComplete() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getInitializeComplete();
        }
        return false;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public boolean getIsFreeAccount() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getIsFreeAccount();
        }
        return true;
    }

    private void checkProvider() {
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public boolean getIsXboxMusicSupported() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getIsXboxMusicSupported();
        }
        return false;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getWindowsLiveClientId() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getWindowsLiveClientId();
        }
        return null;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getVersionCheckUrl() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getVersionCheckUrl();
        }
        return null;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public void resetModels(boolean clearEverything) {
        checkProvider();
        if (this.provider != null) {
            this.provider.resetModels(clearEverything);
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public boolean getIsForXboxOne() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getIsForXboxOne();
        }
        return false;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getCurrentSandboxID() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getCurrentSandboxID();
        }
        return null;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public boolean isDeviceLocaleKnown() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.isDeviceLocaleKnown();
        }
        return true;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getConnectedLocale() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getConnectedLocale();
        }
        return null;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getConnectedLocale(boolean fromEdsCall) {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getConnectedLocale(fromEdsCall);
        }
        return null;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public int getVersionCode() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getVersionCode();
        }
        return 0;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getContentRestrictions() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getContentRestrictions();
        }
        return null;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getRegion() {
        checkProvider();
        if (this.provider != null) {
            return this.provider.getRegion();
        }
        return null;
    }
}
