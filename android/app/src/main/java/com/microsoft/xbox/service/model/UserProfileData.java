package com.microsoft.xbox.service.model;

import com.microsoft.xbox.service.network.managers.IPeopleHubResult;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UserProfileData {
    public String TenureLevel;
    public String accountTier;
    public String appDisplayName;
    public String gamerRealName;
    public String gamerScore;
    public String gamerTag;
    public String profileImageUrl;
    public String xuid;

    public UserProfileData() {
    }

    public UserProfileData(IPeopleHubResult.PeopleHubPersonSummary person) {
        this.xuid = person.xuid;
        this.profileImageUrl = person.displayPicRaw;
        this.gamerTag = person.gamertag;
        this.appDisplayName = person.displayName;
        this.gamerRealName = person.realName;
        this.gamerScore = person.gamerScore;
        this.accountTier = person.xboxOneRep;
    }
}
