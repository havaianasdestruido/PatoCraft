package com.microsoft.xbox.idp.services;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class EndpointsDnet implements Endpoints {
    EndpointsDnet() {
    }

    @Override // com.microsoft.xbox.idp.services.Endpoints
    public String profile() {
        return "https://profile.dnet.xboxlive.com";
    }

    @Override // com.microsoft.xbox.idp.services.Endpoints
    public String accounts() {
        return "https://accounts.dnet.xboxlive.com";
    }

    @Override // com.microsoft.xbox.idp.services.Endpoints
    public String userAccount() {
        return "https://accountstroubleshooter.dnet.xboxlive.com";
    }

    @Override // com.microsoft.xbox.idp.services.Endpoints
    public String userManagement() {
        return "https://user.mgt.dnet.xboxlive.com";
    }

    @Override // com.microsoft.xbox.idp.services.Endpoints
    public String privacy() {
        return "https://privacy.dnet.xboxlive.com";
    }
}
