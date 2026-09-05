.class public abstract Lcom/microsoft/xbox/toolkit/XLEObservable;
.super Ljava/lang/Object;
.source "XLEObservable.java"


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
.field private data:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/microsoft/xbox/toolkit/XLEObserver",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEObservable;, "Lcom/microsoft/xbox/toolkit/XLEObservable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEObservable;->data:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public declared-synchronized addObserver(Lcom/microsoft/xbox/toolkit/XLEObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/XLEObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEObservable;, "Lcom/microsoft/xbox/toolkit/XLEObservable<TT;>;"
    .local p1, "observer":Lcom/microsoft/xbox/toolkit/XLEObserver;, "Lcom/microsoft/xbox/toolkit/XLEObserver<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 21
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEObservable;->data:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addUniqueObserver(Lcom/microsoft/xbox/toolkit/XLEObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/XLEObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEObservable;, "Lcom/microsoft/xbox/toolkit/XLEObservable<TT;>;"
    .local p1, "observer":Lcom/microsoft/xbox/toolkit/XLEObserver;, "Lcom/microsoft/xbox/toolkit/XLEObserver<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEObservable;->data:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEObservable;->addObserver(Lcom/microsoft/xbox/toolkit/XLEObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_0
    monitor-exit p0

    return-void

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized clearObserver()V
    .locals 2

    .prologue
    .line 42
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEObservable;, "Lcom/microsoft/xbox/toolkit/XLEObservable<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 43
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEObservable;->data:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getObservers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/toolkit/XLEObserver",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEObservable;, "Lcom/microsoft/xbox/toolkit/XLEObservable<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEObservable;->data:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEObservable;, "Lcom/microsoft/xbox/toolkit/XLEObservable<TT;>;"
    .local p1, "asyncResult":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v4, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/XLEObservable;->data:Ljava/util/HashSet;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    .local v0, "dataCopy":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/xbox/toolkit/XLEObserver<TT;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/microsoft/xbox/toolkit/XLEObserver<TT;>;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/XLEObserver;

    .line 37
    .local v2, "observer":Lcom/microsoft/xbox/toolkit/XLEObserver;, "Lcom/microsoft/xbox/toolkit/XLEObserver<TT;>;"
    invoke-interface {v2, p1}, Lcom/microsoft/xbox/toolkit/XLEObserver;->update(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 30
    .end local v0    # "dataCopy":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/xbox/toolkit/XLEObserver<TT;>;>;"
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/microsoft/xbox/toolkit/XLEObserver<TT;>;>;"
    .end local v2    # "observer":Lcom/microsoft/xbox/toolkit/XLEObserver;, "Lcom/microsoft/xbox/toolkit/XLEObserver<TT;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 39
    .restart local v0    # "dataCopy":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/xbox/toolkit/XLEObserver<TT;>;>;"
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/microsoft/xbox/toolkit/XLEObserver<TT;>;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeObserver(Lcom/microsoft/xbox/toolkit/XLEObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/XLEObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEObservable;, "Lcom/microsoft/xbox/toolkit/XLEObservable<TT;>;"
    .local p1, "observer":Lcom/microsoft/xbox/toolkit/XLEObserver;, "Lcom/microsoft/xbox/toolkit/XLEObserver<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 26
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEObservable;->data:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
