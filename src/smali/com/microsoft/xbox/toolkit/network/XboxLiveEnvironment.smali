.class public Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;
.super Ljava/lang/Object;
.source "XboxLiveEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;
    }
.end annotation


# static fields
.field public static final NEVER_LIST_CONTRACT_VERSION:Ljava/lang/String; = "1"

.field public static final SHARE_IDENTITY_CONTRACT_VERSION:Ljava/lang/String; = "4"

.field public static final SOCIAL_SERVICE_GENERAL_CONTRACT_VERSION:Ljava/lang/String; = "1"

.field public static final USER_PROFILE_CONTRACT_VERSION:Ljava/lang/String; = "2"

.field public static final USER_PROFILE_PRIVACY_SETTINGS_CONTRACT_VERSION:Ljava/lang/String; = "4"

.field private static instance:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;


# instance fields
.field private environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

.field private final useProxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->instance:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->PROD:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->useProxy:Z

    return-void
.end method

.method public static Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->instance:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    return-object v0
.end method


# virtual methods
.method public getAddFriendsToShareIdentityUrlFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 48
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 44
    :pswitch_1
    const-string v0, "https://social.dnet.xboxlive.com/users/xuid(%s)/people/identityshared/xuids?method=add"

    .line 46
    :goto_0
    return-object v0

    :pswitch_2
    const-string v0, "https://social.xboxlive.com/users/xuid(%s)/people/identityshared/xuids?method=add"

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getEnvironment()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    return-object v0
.end method

.method public getFriendFinderSettingsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string v0, "https://settings.xboxlive.com/settings/feature/friendfinder/settings"

    return-object v0
.end method

.method public getGamertagSearchUrlFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 211
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 205
    :pswitch_0
    const-string v0, "https://profile.dnet.xboxlive.com/users/gt(%s)/profile/settings?settings=AppDisplayName,DisplayPic,Gamerscore,Gamertag,PublicGamerpic,XboxOneRep"

    .line 209
    :goto_0
    return-object v0

    .line 207
    :pswitch_1
    const-string v0, "https://profile.dnet.xboxlive.com/users/gt(%s)/profile/settings?settings=AppDisplayName,DisplayPic,Gamerscore,Gamertag,PublicGamerpic,XboxOneRep"

    goto :goto_0

    .line 209
    :pswitch_2
    const-string v0, "https://profile.xboxlive.com/users/gt(%s)/profile/settings?settings=AppDisplayName,DisplayPic,Gamerscore,Gamertag,PublicGamerpic,XboxOneRep"

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMutedServiceUrlFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "https://privacy.xboxlive.com/users/xuid(%s)/people/mute"

    return-object v0
.end method

.method public getPeopleHubFriendFinderStateUrlFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "https://peoplehub.xboxlive.com/users/me/friendfinder"

    return-object v0
.end method

.method public getPeopleHubRecommendationsUrlFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string v0, "https://peoplehub.xboxlive.com/users/me/people/recommendations"

    return-object v0
.end method

.method public getProfileFavoriteListUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 82
    :pswitch_0
    const-string v0, "https://social.dnet.xboxlive.com/users/me/people/favorites/xuids?method=%s"

    .line 86
    :goto_0
    return-object v0

    .line 84
    :pswitch_1
    const-string v0, "https://social.dnet.xboxlive.com/users/me/people/favorites/xuids?method=%s"

    goto :goto_0

    .line 86
    :pswitch_2
    const-string v0, "https://social.xboxlive.com/users/me/people/favorites/xuids?method=%s"

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getProfileNeverListUrlFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 68
    :pswitch_0
    const-string v0, "https://privacy.dnet.xboxlive.com/users/xuid(%s)/people/never"

    .line 72
    :goto_0
    return-object v0

    .line 70
    :pswitch_1
    const-string v0, "https://privacy.dnet.xboxlive.com/users/xuid(%s)/people/never"

    goto :goto_0

    .line 72
    :pswitch_2
    const-string v0, "https://privacy.xboxlive.com/users/xuid(%s)/people/never"

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getProfileSettingUrlFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "https://privacy.xboxlive.com/users/me/privacy/settings/%s"

    return-object v0
.end method

.method public getProfileSummaryUrlFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 110
    :pswitch_1
    const-string v0, "https://social.dnet.xboxlive.com/users/xuid(%s)/summary"

    .line 112
    :goto_0
    return-object v0

    :pswitch_2
    const-string v0, "https://social.xboxlive.com/users/xuid(%s)/summary"

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getProxyEnabled()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public getRemoveUsersFromShareIdentityUrlFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 60
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 56
    :pswitch_1
    const-string v0, "https://social.dnet.xboxlive.com/users/xuid(%s)/people/identityshared/xuids?method=remove"

    .line 58
    :goto_0
    return-object v0

    :pswitch_2
    const-string v0, "https://social.xboxlive.com/users/xuid(%s)/people/identityshared/xuids?method=remove"

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getSetFriendFinderOptInStatusUrlFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const-string v0, "https://friendfinder.xboxlive.com/users/me/networks/%s/optin"

    return-object v0
.end method

.method public getShortCircuitProfileUrlFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "https://pf.directory.live.com/profile/mine/System.ShortCircuitProfile.json"

    return-object v0
.end method

.method public getSubmitFeedbackUrlFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "https://reputation.xboxlive.com/users/xuid(%s)/feedback"

    return-object v0
.end method

.method public getTenureWatermarkUrlFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/tenure/%s.png"

    return-object v0
.end method

.method public getUpdateThirdPartyTokenUrlFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string v0, "https://thirdpartytokens.xboxlive.com/users/me/networks/%s/token"

    return-object v0
.end method

.method public getUploadingPhoneContactsUrlFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const-string v0, "https://people.directory.live.com/people/ExternalSCDLookup"

    return-object v0
.end method

.method public getUserProfileInfoUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 30
    :pswitch_0
    const-string v0, "https://profile.dnet.xboxlive.com/users/batch/profile/settings"

    .line 34
    :goto_0
    return-object v0

    .line 32
    :pswitch_1
    const-string v0, "https://profile.dnet.xboxlive.com/users/batch/profile/settings"

    goto :goto_0

    .line 34
    :pswitch_2
    const-string v0, "https://profile.xboxlive.com/users/batch/profile/settings"

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getUserProfileSettingUrlFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, "https://privacy.xboxlive.com/users/me/privacy/settings"

    return-object v0
.end method

.method public getWatermarkUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "watermark"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported watermark value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->fail(Ljava/lang/String;)V

    .line 154
    const-string v0, ""

    :goto_1
    return-object v0

    .line 135
    :sswitch_0
    const-string v2, "cheater"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "xboxoriginalteam"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "xboxlivelaunchteam"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "launchteam"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "nxeteam"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "kinectteam"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "xboxoneteam"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "xboxnxoeteam"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    .line 137
    :pswitch_0
    const-string v0, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/cheater.png"

    goto :goto_1

    .line 139
    :pswitch_1
    const-string v0, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/xboxoriginalteam.png"

    goto :goto_1

    .line 141
    :pswitch_2
    const-string v0, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/xboxlivelaunchteam.png"

    goto :goto_1

    .line 143
    :pswitch_3
    const-string v0, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/launchteam.png"

    goto :goto_1

    .line 145
    :pswitch_4
    const-string v0, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/nxeteam.png"

    goto :goto_1

    .line 147
    :pswitch_5
    const-string v0, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/kinectteam.png"

    goto :goto_1

    .line 149
    :pswitch_6
    const-string v0, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/xboxoneteam.png"

    goto :goto_1

    .line 151
    :pswitch_7
    const-string v0, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/xboxnxoeteam.png"

    goto :goto_1

    .line 135
    :sswitch_data_0
    .sparse-switch
        -0x72877748 -> :sswitch_4
        -0x4276ff0 -> :sswitch_6
        0x1be32623 -> :sswitch_5
        0x20a05490 -> :sswitch_3
        0x2c3e08c0 -> :sswitch_0
        0x389a8ad0 -> :sswitch_7
        0x5e71a181 -> :sswitch_1
        0x7a8dcb8f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setEnvironment(Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;)V
    .locals 0
    .param p1, "environment"    # Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    .line 120
    return-void
.end method

.method public updateProfileFollowingListUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 96
    :pswitch_0
    const-string v0, "https://social.dnet.xboxlive.com/users/me/people/xuids?method=%s"

    .line 100
    :goto_0
    return-object v0

    .line 98
    :pswitch_1
    const-string v0, "https://social.dnet.xboxlive.com/users/me/people/xuids?method=%s"

    goto :goto_0

    .line 100
    :pswitch_2
    const-string v0, "https://social.xboxlive.com/users/me/people/xuids?method=%s"

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
