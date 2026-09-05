.class public Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;
.super Ljava/lang/Object;
.source "BackgroundThreadWaitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;,
        Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$BackgroundThreadWaitorChangedCallback;,
        Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
    }
.end annotation


# static fields
.field private static instance:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;


# instance fields
.field private blockingChangedCallback:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$BackgroundThreadWaitorChangedCallback;

.field private blockingTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;",
            "Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;",
            ">;"
        }
    .end annotation
.end field

.field private waitReady:Lcom/microsoft/xbox/toolkit/Ready;

.field private waitingRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->instance:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/microsoft/xbox/toolkit/Ready;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/Ready;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitReady:Lcom/microsoft/xbox/toolkit/Ready;

    .line 32
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingTable:Ljava/util/Hashtable;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingChangedCallback:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$BackgroundThreadWaitorChangedCallback;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitingRunnables:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->updateWaitReady()V

    return-void
.end method

.method private drainWaitingRunnables()V
    .locals 3

    .prologue
    .line 124
    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 126
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 127
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 124
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 131
    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->instance:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->instance:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    .line 28
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->instance:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    return-object v0
.end method

.method private updateWaitReady()V
    .locals 8

    .prologue
    .line 72
    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 74
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 75
    .local v5, "waitTypesToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;>;"
    const-class v6, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 76
    .local v1, "blockingTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;>;"
    iget-object v6, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingTable:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 77
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;

    .line 78
    .local v4, "waitObject":Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;
    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;->isExpired()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;->access$100(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;)Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    .end local v1    # "blockingTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;>;"
    .end local v2    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;>;"
    .end local v4    # "waitObject":Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;
    .end local v5    # "waitTypesToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;>;"
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 81
    .restart local v1    # "blockingTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;>;"
    .restart local v2    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;>;"
    .restart local v4    # "waitObject":Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;
    .restart local v5    # "waitTypesToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;>;"
    :cond_1
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;->access$100(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;)Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    .end local v4    # "waitObject":Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;
    :cond_2
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    .line 86
    .local v3, "type":Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingTable:Ljava/util/Hashtable;

    invoke-virtual {v7, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 89
    .end local v3    # "type":Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
    :cond_3
    const/4 v0, 0x0

    .line 91
    .local v0, "blocking":Z
    iget-object v6, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingTable:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 92
    iget-object v6, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitReady:Lcom/microsoft/xbox/toolkit/Ready;

    invoke-virtual {v6}, Lcom/microsoft/xbox/toolkit/Ready;->setReady()V

    .line 93
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->drainWaitingRunnables()V

    .line 94
    const/4 v0, 0x0

    .line 100
    :goto_3
    iget-object v6, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingChangedCallback:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$BackgroundThreadWaitorChangedCallback;

    if-eqz v6, :cond_4

    .line 101
    iget-object v6, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingChangedCallback:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$BackgroundThreadWaitorChangedCallback;

    invoke-interface {v6, v1, v0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$BackgroundThreadWaitorChangedCallback;->run(Ljava/util/EnumSet;Z)V

    .line 103
    :cond_4
    return-void

    .line 96
    :cond_5
    iget-object v6, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitReady:Lcom/microsoft/xbox/toolkit/Ready;

    invoke-virtual {v6}, Lcom/microsoft/xbox/toolkit/Ready;->reset()V

    .line 97
    const/4 v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public clearBlocking(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;)V
    .locals 2
    .param p1, "type"    # Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    .prologue
    .line 57
    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 58
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->updateWaitReady()V

    .line 61
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitReady:Lcom/microsoft/xbox/toolkit/Ready;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->getIsReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRunnableAfterReady(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 108
    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 110
    if-nez p1, :cond_1

    .line 121
    :goto_1
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setBlocking(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;I)V
    .locals 4
    .param p1, "type"    # Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
    .param p2, "expireMs"    # I

    .prologue
    .line 50
    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 51
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingTable:Ljava/util/Hashtable;

    new-instance v1, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;

    int-to-long v2, p2

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;-><init>(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;J)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->updateWaitReady()V

    .line 54
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChangedCallback(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$BackgroundThreadWaitorChangedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$BackgroundThreadWaitorChangedCallback;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingChangedCallback:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$BackgroundThreadWaitorChangedCallback;

    .line 65
    return-void
.end method

.method public waitForReady(I)V
    .locals 2
    .param p1, "timeoutMs"    # I

    .prologue
    .line 36
    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 39
    new-instance v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$1;-><init>(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;)V

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    .line 46
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitReady:Lcom/microsoft/xbox/toolkit/Ready;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/Ready;->waitForReady(I)V

    .line 47
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
