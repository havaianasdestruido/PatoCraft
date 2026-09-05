.class public abstract Lcom/microsoft/xbox/service/model/ModelBase;
.super Lcom/microsoft/xbox/toolkit/XLEObservable;
.source "ModelBase.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/ModelData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/microsoft/xbox/toolkit/XLEObservable",
        "<",
        "Lcom/microsoft/xbox/service/model/UpdateData;",
        ">;",
        "Lcom/microsoft/xbox/toolkit/ModelData",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static final MilliSecondsInADay:J = 0x5265c00L

.field protected static final MilliSecondsInAnHour:J = 0x36ee80L

.field protected static final MilliSecondsInHalfHour:J = 0x1b7740L


# instance fields
.field protected isLoading:Z

.field protected lastInvalidatedTick:J

.field protected lastRefreshTime:Ljava/util/Date;

.field protected lifetime:J

.field protected loaderRunnable:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private loadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    .local p0, "this":Lcom/microsoft/xbox/service/model/ModelBase;, "Lcom/microsoft/xbox/service/model/ModelBase<TT;>;"
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/XLEObservable;-><init>()V

    .line 45
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lifetime:J

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->isLoading:Z

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastInvalidatedTick:J

    .line 53
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->loadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 54
    return-void
.end method


# virtual methods
.method public getIsLoading()Z
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lcom/microsoft/xbox/service/model/ModelBase;, "Lcom/microsoft/xbox/service/model/ModelBase<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->loadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->getIsLoading()Z

    move-result v0

    return v0
.end method

.method public hasValidData()Z
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/microsoft/xbox/service/model/ModelBase;, "Lcom/microsoft/xbox/service/model/ModelBase<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastRefreshTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateData()V
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lcom/microsoft/xbox/service/model/ModelBase;, "Lcom/microsoft/xbox/service/model/ModelBase<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastRefreshTime:Ljava/util/Date;

    .line 88
    return-void
.end method

.method protected isLoaded()Z
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/microsoft/xbox/service/model/ModelBase;, "Lcom/microsoft/xbox/service/model/ModelBase<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastRefreshTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadData(ZLcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable",
            "<TT;>;)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/microsoft/xbox/service/model/ModelBase;, "Lcom/microsoft/xbox/service/model/ModelBase<TT;>;"
    .local p2, "runnable":Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;, "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<TT;>;"
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 93
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lifetime:J

    iget-object v4, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastRefreshTime:Ljava/util/Date;

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ModelBase;->loadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    move v1, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method protected loadInternal(ZLcom/microsoft/xbox/service/model/UpdateType;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)V
    .locals 1
    .param p1, "forceRefresh"    # Z
    .param p2, "updateType"    # Lcom/microsoft/xbox/service/model/UpdateType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/microsoft/xbox/service/model/UpdateType;",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/microsoft/xbox/service/model/ModelBase;, "Lcom/microsoft/xbox/service/model/ModelBase<TT;>;"
    .local p3, "runnable":Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;, "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastRefreshTime:Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/xbox/service/model/ModelBase;->loadInternal(ZLcom/microsoft/xbox/service/model/UpdateType;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Ljava/util/Date;)V

    .line 98
    return-void
.end method

.method protected loadInternal(ZLcom/microsoft/xbox/service/model/UpdateType;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Ljava/util/Date;)V
    .locals 8
    .param p1, "forceRefresh"    # Z
    .param p2, "updateType"    # Lcom/microsoft/xbox/service/model/UpdateType;
    .param p4, "lastRefreshTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/microsoft/xbox/service/model/UpdateType;",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable",
            "<TT;>;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/microsoft/xbox/service/model/ModelBase;, "Lcom/microsoft/xbox/service/model/ModelBase<TT;>;"
    .local p3, "runnable":Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;, "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<TT;>;"
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 102
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    .line 105
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ModelBase;->getIsLoading()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0, p4}, Lcom/microsoft/xbox/service/model/ModelBase;->shouldRefresh(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lifetime:J

    iget-object v4, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastRefreshTime:Ljava/util/Date;

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ModelBase;->loadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    move v1, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->StartLoadFromUI(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    .line 107
    new-instance v1, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance v2, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-direct {v2, p2, v0}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    invoke-direct {v1, v2, p0, v7}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/service/model/ModelBase;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_1
    new-instance v1, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance v2, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ModelBase;->getIsLoading()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-direct {v2, p2, v0}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    invoke-direct {v1, v2, p0, v7}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/service/model/ModelBase;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    goto :goto_0
.end method

.method public shouldRefresh()Z
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lcom/microsoft/xbox/service/model/ModelBase;, "Lcom/microsoft/xbox/service/model/ModelBase<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastRefreshTime:Ljava/util/Date;

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/service/model/ModelBase;->shouldRefresh(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method protected shouldRefresh(Ljava/util/Date;)Z
    .locals 2
    .param p1, "lastRefreshTime"    # Ljava/util/Date;

    .prologue
    .line 65
    .local p0, "this":Lcom/microsoft/xbox/service/model/ModelBase;, "Lcom/microsoft/xbox/service/model/ModelBase<TT;>;"
    iget-wide v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lifetime:J

    invoke-static {p1, v0, v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->shouldRefresh(Ljava/util/Date;J)Z

    move-result v0

    return v0
.end method

.method public updateWithNewData(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/microsoft/xbox/service/model/ModelBase;, "Lcom/microsoft/xbox/service/model/ModelBase<TT;>;"
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->isLoading:Z

    .line 77
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_0

    .line 78
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastRefreshTime:Ljava/util/Date;

    .line 80
    :cond_0
    return-void
.end method
