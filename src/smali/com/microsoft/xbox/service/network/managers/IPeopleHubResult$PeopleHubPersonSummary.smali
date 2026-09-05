.class public Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;
.super Ljava/lang/Object;
.source "IPeopleHubResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeopleHubPersonSummary"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public displayPicRaw:Ljava/lang/String;

.field public follower:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$Follower;

.field public gamerScore:Ljava/lang/String;

.field public gamertag:Ljava/lang/String;

.field public isFavorite:Z

.field public isFollowedByCaller:Z

.field public isFollowingCaller:Z

.field public isIdentityShared:Z

.field public multiplayerSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$MultiplayerSummary;

.field public preferredColor:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPreferredColor;

.field public presenceState:Ljava/lang/String;

.field public presenceText:Ljava/lang/String;

.field public realName:Ljava/lang/String;

.field public recentPlayer:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecentPlayer;

.field public recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

.field public titleHistory:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitleHistory;

.field public titlePresence:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitlePresence;

.field public titleSummaries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitleSummary;",
            ">;"
        }
    .end annotation
.end field

.field public useAvatar:Z

.field public xboxOneRep:Ljava/lang/String;

.field public xuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRealNameFromRecommendationOrDefault()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->realName:Ljava/lang/String;

    .line 56
    .local v0, "realName":Ljava/lang/String;
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->Reasons:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->Reasons:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->Reasons:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "realName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 65
    .restart local v0    # "realName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
