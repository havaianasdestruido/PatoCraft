.class Lcom/microsoft/xbox/service/model/ProfileModel$GetPeopleHubRecommendationRunner;
.super Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
.source "ProfileModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/ProfileModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPeopleHubRecommendationRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable",
        "<",
        "Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;",
        ">;"
    }
.end annotation


# instance fields
.field private caller:Lcom/microsoft/xbox/service/model/ProfileModel;

.field final synthetic this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private xuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V
    .locals 0
    .param p2, "caller"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p3, "xuid"    # Ljava/lang/String;

    .prologue
    .line 1481
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetPeopleHubRecommendationRunner;->this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;-><init>()V

    .line 1482
    iput-object p2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetPeopleHubRecommendationRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 1483
    iput-object p3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetPeopleHubRecommendationRunner;->xuid:Ljava/lang/String;

    .line 1484
    return-void
.end method


# virtual methods
.method public buildData()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 1488
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    invoke-direct {v0}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;-><init>()V

    .line 1489
    .local v0, "result":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetPeopleHubRecommendationRunner;->xuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1490
    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetPeopleHubRecommendationRunner;->xuid:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1491
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getPeopleHubRecommendations()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    move-result-object v0

    .line 1494
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 1477
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ProfileModel$GetPeopleHubRecommendationRunner;->buildData()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultErrorCode()J
    .locals 2

    .prologue
    .line 1508
    const-wide/16 v0, 0xb

    return-wide v0
.end method

.method public onPostExcute(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1503
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetPeopleHubRecommendationRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->access$1900(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 1504
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 1499
    return-void
.end method
