.class public Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;
.super Ljava/lang/Object;
.source "ProjectSpecificDataProvider.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;


# static fields
.field private static instance:Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;


# instance fields
.field private provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->instance:Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkProvider()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->instance:Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    return-object v0
.end method


# virtual methods
.method public getAllowExplicitContent()Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 99
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getAllowExplicitContent()Z

    move-result v0

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAutoSuggestdDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 108
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getAutoSuggestdDataSource()Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCombinedContentRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 28
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getCombinedContentRating()Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectedLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 208
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getConnectedLocale()Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectedLocale(Z)Ljava/lang/String;
    .locals 1
    .param p1, "fromEdsCall"    # Z

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 217
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getConnectedLocale(Z)Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentRestrictions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 236
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getContentRestrictions()Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentSandboxID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 189
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getCurrentSandboxID()Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInitializeComplete()Z
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 117
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getInitializeComplete()Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsForXboxOne()Z
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 179
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getIsForXboxOne()Z

    move-result v0

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsFreeAccount()Z
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 128
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getIsFreeAccount()Z

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getIsXboxMusicSupported()Z
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 141
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getIsXboxMusicSupported()Z

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLegalLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 19
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getLegalLocale()Ljava/lang/String;

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMembershipLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 37
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getMembershipLevel()Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrivileges()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 82
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getPrivileges()Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 245
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSCDRpsTicket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 64
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getSCDRpsTicket()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersionCheckUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 161
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getVersionCheckUrl()Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 226
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getVersionCode()I

    move-result v0

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowsLiveClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 151
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getWindowsLiveClientId()Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXuidString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 46
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceLocaleKnown()Z
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 199
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->isDeviceLocaleKnown()Z

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resetModels(Z)V
    .locals 1
    .param p1, "clearEverything"    # Z

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 171
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->resetModels(Z)V

    .line 174
    :cond_0
    return-void
.end method

.method public setPrivileges(Ljava/lang/String;)V
    .locals 1
    .param p1, "privileges"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 92
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->setPrivileges(Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method public setProvider(Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    .line 15
    return-void
.end method

.method public setSCDRpsTicket(Ljava/lang/String;)V
    .locals 1
    .param p1, "rpsTicket"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 74
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->setSCDRpsTicket(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method public setXuidString(Ljava/lang/String;)V
    .locals 1
    .param p1, "xuid"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 56
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->setXuidString(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method
