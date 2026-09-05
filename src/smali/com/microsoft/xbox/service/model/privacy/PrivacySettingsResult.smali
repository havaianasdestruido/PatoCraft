.class public Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
.super Ljava/lang/Object;
.source "PrivacySettingsResult.java"


# instance fields
.field public settings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;->settings:Ljava/util/ArrayList;

    .line 15
    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;

    invoke-static {p0, v0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->deserializeJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;

    return-object v0
.end method

.method public static getPrivacySettingRequestBody(Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;)Ljava/lang/String;
    .locals 1
    .param p0, "privacySettingsResult"    # Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;

    .prologue
    .line 42
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 45
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getShareRealNameStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 22
    iget-object v1, p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;->settings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;

    .line 23
    .local v0, "s":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->getPrivacySettingId()Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    if-ne v2, v3, :cond_0

    .line 24
    iget-object v1, v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->value:Ljava/lang/String;

    .line 27
    .end local v0    # "s":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;
    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->PeopleOnMyList:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSharingRealNameTransitively()Z
    .locals 4

    .prologue
    .line 31
    iget-object v1, p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;->settings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;

    .line 32
    .local v0, "s":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->getPrivacySettingId()Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentityTransitively:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    if-ne v2, v3, :cond_0

    .line 33
    iget-object v1, v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->value:Ljava/lang/String;

    sget-object v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->Everyone:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 36
    .end local v0    # "s":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
