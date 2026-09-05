.class public final Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;
.super Lcom/microsoft/xbox/service/model/FollowersData;
.source "FriendSelectorItem.java"


# static fields
.field private static final serialVersionUID:J = 0x507b6988af949efeL


# instance fields
.field private selected:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/model/FollowersData;)V
    .locals 1
    .param p1, "friend"    # Lcom/microsoft/xbox/service/model/FollowersData;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/FollowersData;-><init>(Lcom/microsoft/xbox/service/model/FollowersData;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->selected:Z

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;)V
    .locals 2
    .param p1, "profileModel"    # Lcom/microsoft/xbox/service/model/ProfileModel;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/microsoft/xbox/service/model/FollowersData;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->xuid:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-direct {v0}, Lcom/microsoft/xbox/service/model/UserProfileData;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    .line 42
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->xuid:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerPicImageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->profileImageUrl:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerScore()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerScore:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAppDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->appDisplayName:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAccountTier()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->accountTier:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getRealName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerRealName:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    if-ne p0, p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 82
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 83
    check-cast v0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;

    .line 84
    .local v0, "other":Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;
    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-object v3, v3, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 85
    :cond_4
    iget-object v3, v0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-object v3, v3, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_5
    move v1, v2

    .line 86
    goto :goto_0

    .line 87
    :cond_6
    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-object v3, v3, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    iget-object v4, v0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-object v4, v4, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 88
    goto :goto_0
.end method

.method public getIsSelected()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->selected:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 68
    const/16 v0, 0x1f

    .line 69
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 70
    .local v1, "result":I
    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-object v2, v2, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 71
    return v1

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-object v2, v2, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->selected:Z

    .line 64
    return-void
.end method

.method public toggleSelection()V
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->selected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->selected:Z

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
