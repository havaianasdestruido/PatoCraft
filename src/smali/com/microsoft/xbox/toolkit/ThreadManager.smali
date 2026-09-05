.class public Lcom/microsoft/xbox/toolkit/ThreadManager;
.super Ljava/lang/Object;
.source "ThreadManager.java"


# static fields
.field public static Handler:Landroid/os/Handler;

.field public static UIThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UIThreadPost(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 10
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPostDelayed(Ljava/lang/Runnable;J)V

    .line 11
    return-void
.end method

.method public static UIThreadPostDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delayMS"    # J

    .prologue
    .line 14
    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->Handler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    return-void
.end method

.method public static UIThreadSend(Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 18
    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 19
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 35
    :goto_0
    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/toolkit/Ready;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/Ready;-><init>()V

    .line 25
    .local v0, "actionComplete":Lcom/microsoft/xbox/toolkit/Ready;
    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->Handler:Landroid/os/Handler;

    new-instance v2, Lcom/microsoft/xbox/toolkit/ThreadManager$1;

    invoke-direct {v2, p0, v0}, Lcom/microsoft/xbox/toolkit/ThreadManager$1;-><init>(Ljava/lang/Runnable;Lcom/microsoft/xbox/toolkit/Ready;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->waitForReady()V

    goto :goto_0
.end method
