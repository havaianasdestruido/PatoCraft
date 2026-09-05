.class public Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;
.super Ljava/lang/Object;
.source "IUserProfileResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IUserProfileResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileUser"
.end annotation


# static fields
.field private static final FORCE_MATURITY_LEVEL_UPDATE_TIME:J = 0xa4cb80L


# instance fields
.field public canViewTVAdultContent:Z

.field public colors:Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;

.field public id:Ljava/lang/String;

.field private maturityLevel:I

.field private privileges:[I

.field public settings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$Settings;",
            ">;"
        }
    .end annotation
.end field

.field private updateMaturityLevelTimer:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->updateMaturityLevelTimer:J

    return-void
.end method

.method private fetchMaturityLevel()V
    .locals 6

    .prologue
    .line 39
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v2

    .line 40
    .local v2, "serviceManager":Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;
    iget-object v3, p0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->id:Ljava/lang/String;

    .line 41
    invoke-interface {v2, v3}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getFamilySettings(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/FamilySettings;

    move-result-object v0

    .line 43
    .local v0, "familySettings":Lcom/microsoft/xbox/service/network/managers/FamilySettings;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/microsoft/xbox/service/network/managers/FamilySettings;->familyUsers:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 45
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, v0, Lcom/microsoft/xbox/service/network/managers/FamilySettings;->familyUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 46
    iget-object v3, v0, Lcom/microsoft/xbox/service/network/managers/FamilySettings;->familyUsers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/service/network/managers/FamilyUser;

    iget-object v3, v3, Lcom/microsoft/xbox/service/network/managers/FamilyUser;->xuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->id:Ljava/lang/String;

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    iget-object v3, v0, Lcom/microsoft/xbox/service/network/managers/FamilySettings;->familyUsers:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/service/network/managers/FamilyUser;

    iget-boolean v3, v3, Lcom/microsoft/xbox/service/network/managers/FamilyUser;->canViewTVAdultContent:Z

    iput-boolean v3, p0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->canViewTVAdultContent:Z

    .line 50
    iget-object v3, v0, Lcom/microsoft/xbox/service/network/managers/FamilySettings;->familyUsers:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/service/network/managers/FamilyUser;

    iget v3, v3, Lcom/microsoft/xbox/service/network/managers/FamilyUser;->maturityLevel:I

    iput v3, p0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->maturityLevel:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "familySettings":Lcom/microsoft/xbox/service/network/managers/FamilySettings;
    .end local v1    # "i":I
    .end local v2    # "serviceManager":Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->updateMaturityLevelTimer:J

    .line 62
    return-void

    .line 45
    .restart local v0    # "familySettings":Lcom/microsoft/xbox/service/network/managers/FamilySettings;
    .restart local v1    # "i":I
    .restart local v2    # "serviceManager":Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "familySettings":Lcom/microsoft/xbox/service/network/managers/FamilySettings;
    .end local v1    # "i":I
    .end local v2    # "serviceManager":Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public getMaturityLevel()I
    .locals 4

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->updateMaturityLevelTimer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->updateMaturityLevelTimer:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->fetchMaturityLevel()V

    .line 70
    :cond_1
    iget v0, p0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->maturityLevel:I

    return v0
.end method

.method public getPrivileges()[I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->privileges:[I

    return-object v0
.end method

.method public getSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;
    .locals 4
    .param p1, "settingId"    # Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->settings:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->settings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$Settings;

    .line 89
    .local v0, "setting":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$Settings;
    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$Settings;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$Settings;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iget-object v1, v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$Settings;->value:Ljava/lang/String;

    .line 95
    .end local v0    # "setting":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$Settings;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPrivilieges([I)V
    .locals 0
    .param p1, "privileges"    # [I

    .prologue
    .line 83
    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->privileges:[I

    .line 84
    return-void
.end method

.method public setmaturityLevel(I)V
    .locals 2
    .param p1, "maturityLevel"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->maturityLevel:I

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->updateMaturityLevelTimer:J

    .line 76
    return-void
.end method
