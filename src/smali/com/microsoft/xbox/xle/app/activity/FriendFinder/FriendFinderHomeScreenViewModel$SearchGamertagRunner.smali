.class Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$SearchGamertagRunner;
.super Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
.source "FriendFinderHomeScreenViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchGamertagRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable",
        "<",
        "Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;",
        ">;"
    }
.end annotation


# instance fields
.field private gamerXuid:Ljava/lang/String;

.field private gamertag:Ljava/lang/String;

.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;Ljava/lang/String;)V
    .locals 0
    .param p2, "gamertag"    # Ljava/lang/String;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$SearchGamertagRunner;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;-><init>()V

    .line 464
    iput-object p2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$SearchGamertagRunner;->gamertag:Ljava/lang/String;

    .line 465
    return-void
.end method


# virtual methods
.method public buildData()Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 469
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$SearchGamertagRunner;->gamertag:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->SearchGamertag(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    move-result-object v0

    .line 471
    .local v0, "userProfileResult":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    iget-object v1, v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;->profileUsers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$SearchGamertagRunner;->gamerXuid:Ljava/lang/String;

    .line 472
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$SearchGamertagRunner;->gamerXuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$SearchGamertagRunner;->getDefaultErrorCode()J

    move-result-wide v2

    const-string v4, "Invalid gamertag returned from search service"

    invoke-direct {v1, v2, v3, v4}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;)V

    throw v1

    .line 476
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
    .line 458
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$SearchGamertagRunner;->buildData()Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultErrorCode()J
    .locals 2

    .prologue
    .line 490
    const-wide/16 v0, 0xbba

    return-wide v0
.end method

.method public onPostExcute(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$SearchGamertagRunner;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$SearchGamertagRunner;->gamerXuid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->access$300(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 481
    return-void
.end method
