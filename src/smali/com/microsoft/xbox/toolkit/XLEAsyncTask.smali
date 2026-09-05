.class public abstract Lcom/microsoft/xbox/toolkit/XLEAsyncTask;
.super Ljava/lang/Object;
.source "XLEAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected cancelled:Z

.field private chainedTask:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

.field private doBackgroundAndPostExecuteRunnable:Ljava/lang/Runnable;

.field protected isBusy:Z

.field private threadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;)V
    .locals 2
    .param p1, "threadPool"    # Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    .prologue
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEAsyncTask;, "Lcom/microsoft/xbox/toolkit/XLEAsyncTask<TResult;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->doBackgroundAndPostExecuteRunnable:Ljava/lang/Runnable;

    .line 7
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->threadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    .line 8
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    .line 9
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->isBusy:Z

    .line 10
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->chainedTask:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    .line 13
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->threadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    .line 16
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;-><init>(Lcom/microsoft/xbox/toolkit/XLEAsyncTask;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->doBackgroundAndPostExecuteRunnable:Ljava/lang/Runnable;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/toolkit/XLEAsyncTask;)Lcom/microsoft/xbox/toolkit/XLEAsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    .prologue
    .line 5
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->chainedTask:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    return-object v0
.end method

.method public static varargs executeAll([Lcom/microsoft/xbox/toolkit/XLEAsyncTask;)V
    .locals 3
    .param p0, "tasks"    # [Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    .prologue
    .line 65
    array-length v1, p0

    if-lez v1, :cond_1

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 68
    aget-object v1, p0, v0

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    iput-object v2, v1, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->chainedTask:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->execute()V

    .line 73
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEAsyncTask;, "Lcom/microsoft/xbox/toolkit/XLEAsyncTask<TResult;>;"
    const/4 v1, 0x1

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v2, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 48
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    .line 49
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method public execute()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEAsyncTask;, "Lcom/microsoft/xbox/toolkit/XLEAsyncTask<TResult;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v3, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 53
    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    .line 54
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->isBusy:Z

    .line 55
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->onPreExecute()V

    .line 56
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->executeBackground()V

    .line 57
    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0
.end method

.method protected executeBackground()V
    .locals 2

    .prologue
    .line 76
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEAsyncTask;, "Lcom/microsoft/xbox/toolkit/XLEAsyncTask<TResult;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    .line 77
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->threadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->doBackgroundAndPostExecuteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->run(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method public getIsBusy()Z
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEAsyncTask;, "Lcom/microsoft/xbox/toolkit/XLEAsyncTask<TResult;>;"
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->isBusy:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onPostExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method protected abstract onPreExecute()V
.end method
