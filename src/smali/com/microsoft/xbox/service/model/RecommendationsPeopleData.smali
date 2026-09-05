.class public Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;
.super Lcom/microsoft/xbox/service/model/FollowersData;
.source "RecommendationsPeopleData.java"


# instance fields
.field private recommendationInfo:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;)V
    .locals 1
    .param p1, "person"    # Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/FollowersData;-><init>(Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;)V

    .line 17
    iget-object v0, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 19
    iget-object v0, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;->recommendationInfo:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    .line 20
    return-void
.end method

.method public constructor <init>(ZLcom/microsoft/xbox/service/model/FollowersData$DummyType;)V
    .locals 0
    .param p1, "isDummy"    # Z
    .param p2, "type"    # Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/FollowersData;-><init>(ZLcom/microsoft/xbox/service/model/FollowersData$DummyType;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getIsFacebookFriend()Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;->recommendationInfo:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->getRecommendationType()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecommendationFirstReason()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;->recommendationInfo:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->Reasons:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/XLEUtil;->isNullOrEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;->recommendationInfo:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->Reasons:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRecommendationType()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;->recommendationInfo:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->getRecommendationType()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    move-result-object v0

    return-object v0
.end method
