.class public Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;
.super Ljava/lang/Object;
.source "ThreadSafePriorityQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private hashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation
.end field

.field private queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private syncObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    .local p0, "this":Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;, "Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;->syncObject:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;->queue:Ljava/util/PriorityQueue;

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;->hashSet:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public pop()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;, "Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue<TT;>;"
    const/4 v0, 0x0

    .line 27
    .local v0, "rv":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;->syncObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;->syncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 34
    .end local v0    # "rv":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 35
    :catch_0
    move-exception v1

    .line 39
    :goto_1
    return-object v0

    .line 32
    .restart local v0    # "rv":Ljava/lang/Object;, "TT;"
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;->hashSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 34
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public push(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;, "Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;->hashSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;->hashSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;->syncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 18
    :cond_0
    monitor-exit v1

    .line 19
    return-void

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
