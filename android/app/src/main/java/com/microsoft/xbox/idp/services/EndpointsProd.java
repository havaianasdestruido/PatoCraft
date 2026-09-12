package com.microsoft.xbox.idp.services;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class EndpointsProd implements Endpoints {
    EndpointsProd() {
    }

    @Override // com.microsoft.xbox.idp.services.Endpoints
    public String profile() {
        return "https://profile.xboxlive.com";
    }

    @Override // com.microsoft.xbox.idp.services.Endpoints
    public String accounts() {
        return "https://accounts.xboxlive.com";
    }

    @Override // com.microsoft.xbox.idp.services.Endpoints
    public String userAccount() {
        return "https://accountstroubleshooter.xboxlive.com";
    }

    @Override // com.microsoft.xbox.idp.services.Endpoints
    public String userManagement() {
        return "https://user.mgt.xboxlive.com";
    }

    @Override // com.microsoft.xbox.idp.services.Endpoints
    public String privacy() {
        return "https://privacy.xboxlive.com";
    }
}
