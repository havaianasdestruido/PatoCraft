.class public Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;
.super Ljava/lang/Object;
.source "UserProfileRequest.java"


# instance fields
.field public settings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public userIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->userIds:Ljava/util/ArrayList;

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->setDefaultProfileSettingsRequest(Z)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;-><init>(Ljava/util/ArrayList;Z)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->userIds:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 1
    .param p2, "dataEssentialForLoginOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->userIds:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    .line 23
    invoke-direct {p0, p2}, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->setDefaultProfileSettingsRequest(Z)V

    .line 24
    return-void
.end method

.method public static getUserProfileRequestBody(Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "userProfileRequest"    # Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setDefaultProfileSettingsRequest(Z)V
    .locals 2
    .param p1, "dataEssentialForLoginOnly"    # Z

    .prologue
    .line 41
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamerscore:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamertag:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AccountTier:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->TenureLevel:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->XboxOneRep:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->PreferredColor:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Location:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Bio:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Watermarks:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    if-nez p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->RealName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    return-void
.end method
