.class public abstract Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.super Landroid/content/Loader;
.source "WorkerLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;,
        Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;,
        Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/Loader",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private final dispatcher:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private resultListener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field private final worker:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker",
            "<TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;, "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<TD;>;"
    .local p2, "worker":Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;, "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker<TD;>;"
    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->lock:Ljava/lang/Object;

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->dispatcher:Landroid/os/Handler;

    .line 22
    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->worker:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;

    .line 23
    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;)Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->resultListener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
    .param p1, "x1"    # Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->resultListener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->dispatcher:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelLoadCompat()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;, "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<TD;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->onCancelLoad()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->cancelLoad()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;, "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->releaseData(Ljava/lang/Object;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->result:Ljava/lang/Object;

    .line 81
    .local v0, "oldResult":Ljava/lang/Object;, "TD;"
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->result:Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    invoke-super {p0, p1}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 87
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->isDataReleased(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->releaseData(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract isDataReleased(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation
.end method

.method protected onCancelLoad()Z
    .locals 2

    .prologue
    .line 61
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;, "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<TD;>;"
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->resultListener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->worker:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;

    invoke-interface {v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;->cancel()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->resultListener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    .line 65
    const/4 v0, 0x1

    monitor-exit v1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;, "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->isDataReleased(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->releaseData(Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-void
.end method

.method protected onForceLoad()V
    .locals 3

    .prologue
    .line 51
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;, "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<TD;>;"
    invoke-super {p0}, Landroid/content/Loader;->onForceLoad()V

    .line 52
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->cancelLoadCompat()Z

    .line 53
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;-><init>(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$1;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->resultListener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->worker:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->resultListener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-interface {v0, v2}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;->start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V

    .line 56
    monitor-exit v1

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;, "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<TD;>;"
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->cancelLoadCompat()Z

    .line 96
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->result:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->isDataReleased(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->result:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->releaseData(Ljava/lang/Object;)V

    .line 99
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->result:Ljava/lang/Object;

    .line 100
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;, "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<TD;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->result:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->deliverResult(Ljava/lang/Object;)V

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->forceLoad()V

    .line 36
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 40
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;, "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<TD;>;"
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->cancelLoadCompat()Z

    .line 41
    return-void
.end method

.method protected abstract releaseData(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation
.end method
