.class public Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;
.super Ljava/lang/Object;
.source "FriendFinderSuggestionModel.java"


# instance fields
.field public gamerTag:Ljava/lang/String;

.field public imageUri:Ljava/net/URI;

.field public presence:Ljava/lang/String;

.field public realName:Ljava/lang/String;

.field public recommendationType:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromPeopleHubSummary(Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;)Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;
    .locals 2
    .param p0, "summary"    # Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    .prologue
    .line 15
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;-><init>()V

    .line 16
    .local v0, "model":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->displayPicRaw:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->imageUri:Ljava/net/URI;

    .line 17
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->gamertag:Ljava/lang/String;

    iput-object v1, v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->gamerTag:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->getRealNameFromRecommendationOrDefault()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->realName:Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    .line 21
    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->getRecommendationType()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->recommendationType:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    .line 24
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->presenceText:Ljava/lang/String;

    iput-object v1, v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->presence:Ljava/lang/String;

    .line 26
    return-object v0

    .line 21
    :cond_0
    sget-object v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Unknown:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    goto :goto_0
.end method
