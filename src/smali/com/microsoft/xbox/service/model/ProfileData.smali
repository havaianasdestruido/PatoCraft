.class public Lcom/microsoft/xbox/service/model/ProfileData;
.super Ljava/lang/Object;
.source "ProfileData.java"


# instance fields
.field private profileResult:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

.field private shareRealName:Z

.field private shareRealNameStatus:Ljava/lang/String;

.field private sharingRealNameTransitively:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;Z)V
    .locals 1
    .param p1, "profileResult"    # Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    .param p2, "shareRealName"    # Z

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileData;->profileResult:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    .line 13
    iput-boolean p2, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealName:Z

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealNameStatus:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;ZLjava/lang/String;Z)V
    .locals 0
    .param p1, "profileResult"    # Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    .param p2, "shareRealName"    # Z
    .param p3, "shareRealNameStatus"    # Ljava/lang/String;
    .param p4, "sharingRealNameTransitively"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileData;->profileResult:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    .line 19
    iput-boolean p2, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealName:Z

    .line 20
    iput-object p3, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealNameStatus:Ljava/lang/String;

    .line 21
    iput-boolean p4, p0, Lcom/microsoft/xbox/service/model/ProfileData;->sharingRealNameTransitively:Z

    .line 22
    return-void
.end method


# virtual methods
.method public getProfileResult()Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileData;->profileResult:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    return-object v0
.end method

.method public getShareRealName()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealName:Z

    return v0
.end method

.method public getShareRealNameStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealNameStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSharingRealNameTransitively()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/microsoft/xbox/service/model/ProfileData;->sharingRealNameTransitively:Z

    return v0
.end method
