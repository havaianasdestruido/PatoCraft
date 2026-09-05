.class public abstract Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.super Lcom/microsoft/xbox/toolkit/XLEAsyncTask;
.source "NetworkAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/microsoft/xbox/toolkit/XLEAsyncTask",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected forceLoad:Z

.field private shouldExecute:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;, "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask<TT;>;"
    const/4 v1, 0x1

    .line 11
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->networkOperationsThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;-><init>(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;)V

    .line 7
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->forceLoad:Z

    .line 8
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->shouldExecute:Z

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;)V
    .locals 2
    .param p1, "threadPool"    # Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    .prologue
    .local p0, "this":Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;, "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask<TT;>;"
    const/4 v1, 0x1

    .line 15
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->networkOperationsThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;-><init>(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;)V

    .line 7
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->forceLoad:Z

    .line 8
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->shouldExecute:Z

    .line 16
    return-void
.end method


# virtual methods
.method protected abstract checkShouldExecute()Z
.end method

.method protected final doInBackground()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;, "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->loadDataInBackground()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 36
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->onError()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public execute()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;, "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v3, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 44
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->cancelled:Z

    if-eqz v0, :cond_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->checkShouldExecute()Z

    move-result v0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->shouldExecute:Z

    .line 49
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->shouldExecute:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->forceLoad:Z

    if-eqz v0, :cond_3

    .line 50
    :cond_1
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->isBusy:Z

    .line 51
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->onPreExecute()V

    .line 52
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->executeBackground()V

    .line 58
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 42
    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->onNoAction()V

    .line 56
    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->isBusy:Z

    goto :goto_1
.end method

.method public load(Z)V
    .locals 0
    .param p1, "forceLoad"    # Z

    .prologue
    .line 19
    .local p0, "this":Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;, "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask<TT;>;"
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->forceLoad:Z

    .line 20
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->execute()V

    .line 21
    return-void
.end method

.method protected abstract loadDataInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract onError()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract onNoAction()V
.end method
