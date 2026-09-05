.class public Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;
.super Ljava/lang/Object;
.source "SingleEntryLoadingStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;
    }
.end annotation


# instance fields
.field private isLoading:Z

.field private lastError:Lcom/microsoft/xbox/toolkit/XLEException;

.field private syncObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->isLoading:Z

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->lastError:Lcom/microsoft/xbox/toolkit/XLEException;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method private setDone(Lcom/microsoft/xbox/toolkit/XLEException;)V
    .locals 2
    .param p1, "ex"    # Lcom/microsoft/xbox/toolkit/XLEException;

    .prologue
    .line 37
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->isLoading:Z

    .line 39
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->lastError:Lcom/microsoft/xbox/toolkit/XLEException;

    .line 40
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->syncObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 41
    monitor-exit v1

    .line 42
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getIsLoading()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->isLoading:Z

    return v0
.end method

.method public getLastError()Lcom/microsoft/xbox/toolkit/XLEException;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->lastError:Lcom/microsoft/xbox/toolkit/XLEException;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->isLoading:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->lastError:Lcom/microsoft/xbox/toolkit/XLEException;

    .line 64
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->syncObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFailed(Lcom/microsoft/xbox/toolkit/XLEException;)V
    .locals 0
    .param p1, "ex"    # Lcom/microsoft/xbox/toolkit/XLEException;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->setDone(Lcom/microsoft/xbox/toolkit/XLEException;)V

    .line 34
    return-void
.end method

.method public setSuccess()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->setDone(Lcom/microsoft/xbox/toolkit/XLEException;)V

    .line 30
    return-void
.end method

.method public waitForNotLoading()Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;
    .locals 5

    .prologue
    .line 45
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->syncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 46
    :try_start_0
    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->isLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 48
    :try_start_1
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->syncObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :goto_0
    :try_start_2
    new-instance v1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->lastError:Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {v1, p0, v3, v4}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;-><init>(Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;ZLcom/microsoft/xbox/toolkit/XLEException;)V

    monitor-exit v2

    .line 55
    :goto_1
    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 54
    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->isLoading:Z

    .line 55
    new-instance v1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;-><init>(Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;ZLcom/microsoft/xbox/toolkit/XLEException;)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
