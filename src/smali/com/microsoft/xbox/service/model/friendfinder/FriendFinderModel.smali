.class public Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;
.super Lcom/microsoft/xbox/service/model/ModelBase;
.source "FriendFinderModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$GetPeopleHubFriendFinderStateResultRunner;,
        Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/service/model/ModelBase",
        "<",
        "Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;


# instance fields
.field private callback:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;

.field private result:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->instance:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/microsoft/xbox/service/model/ModelBase;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->isLoading:Z

    return p1
.end method

.method public static getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->instance:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    return-object v0
.end method


# virtual methods
.method public getResult()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->result:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->isLoading:Z

    return v0
.end method

.method public loadAsync(Z)V
    .locals 2
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 63
    sget-object v0, Lcom/microsoft/xbox/service/model/UpdateType;->FriendFinderFacebook:Lcom/microsoft/xbox/service/model/UpdateType;

    new-instance v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$GetPeopleHubFriendFinderStateResultRunner;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$GetPeopleHubFriendFinderStateResultRunner;-><init>(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->loadInternal(ZLcom/microsoft/xbox/service/model/UpdateType;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)V

    .line 64
    return-void
.end method

.method public loadAsync(ZLcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;)V
    .locals 0
    .param p1, "forceRefresh"    # Z
    .param p2, "callback"    # Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;

    .prologue
    .line 58
    iput-object p2, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->callback:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;

    .line 59
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->loadAsync(Z)V

    .line 60
    return-void
.end method

.method public shouldRefresh()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->lastRefreshTime:Ljava/util/Date;

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->shouldRefresh(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public updateWithNewData(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;>;"
    const/4 v1, 0x1

    .line 39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v2, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 40
    invoke-super {p0, p1}, Lcom/microsoft/xbox/service/model/ModelBase;->updateWithNewData(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 41
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->result:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    .line 43
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->result:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->setFacebookFriendFinderState(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;)V

    .line 44
    new-instance v0, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance v2, Lcom/microsoft/xbox/service/model/UpdateData;

    sget-object v3, Lcom/microsoft/xbox/service/model/UpdateType;->FriendFinderFacebook:Lcom/microsoft/xbox/service/model/UpdateType;

    invoke-direct {v2, v3, v1}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v1

    invoke-direct {v0, v2, p0, v1}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 51
    :cond_0
    :goto_1
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->callback:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->callback:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;

    invoke-interface {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;->onFriendFinderLoadFailed()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->callback:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;

    goto :goto_1
.end method
