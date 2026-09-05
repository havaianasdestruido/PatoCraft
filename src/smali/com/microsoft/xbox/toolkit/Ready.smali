.class public Lcom/microsoft/xbox/toolkit/Ready;
.super Ljava/lang/Object;
.source "Ready.java"


# instance fields
.field private ready:Z

.field private syncObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/Ready;->ready:Z

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/Ready;->syncObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getIsReady()Z
    .locals 2

    .prologue
    .line 8
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/Ready;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_0
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/Ready;->ready:Z

    monitor-exit v1

    return v0

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 41
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/Ready;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/Ready;->ready:Z

    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setReady()V
    .locals 2

    .prologue
    .line 14
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/Ready;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/Ready;->ready:Z

    .line 16
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/Ready;->syncObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 17
    monitor-exit v1

    .line 18
    return-void

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForReady()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/Ready;->waitForReady(I)V

    .line 22
    return-void
.end method

.method public waitForReady(I)V
    .locals 6
    .param p1, "timeoutMs"    # I

    .prologue
    .line 25
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/Ready;->syncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 26
    :try_start_0
    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/Ready;->ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 28
    if-lez p1, :cond_1

    .line 29
    :try_start_1
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/Ready;->syncObj:Ljava/lang/Object;

    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    return-void

    .line 31
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/Ready;->syncObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 37
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
