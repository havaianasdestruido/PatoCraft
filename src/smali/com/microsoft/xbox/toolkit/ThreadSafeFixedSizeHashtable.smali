.class public Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;
.super Ljava/lang/Object;
.source "ThreadSafeFixedSizeHashtable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private count:I

.field private fifo:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable",
            "<TK;TV;>.KeyTuple;>;"
        }
    .end annotation
.end field

.field private hashtable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final maxSize:I

.field private syncObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 33
    .local p0, "this":Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;, "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->fifo:Ljava/util/PriorityQueue;

    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->hashtable:Ljava/util/Hashtable;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->syncObject:Ljava/lang/Object;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->count:I

    .line 35
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->maxSize:I

    .line 37
    if-gtz p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 40
    :cond_0
    return-void
.end method

.method private cleanupIfNecessary()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;, "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 114
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->hashtable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->fifo:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 116
    :goto_1
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->hashtable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iget v4, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->maxSize:I

    if-le v1, v4, :cond_2

    .line 118
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->fifo:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;

    .line 119
    .local v0, "oldest":Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;, "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<TK;TV;>.KeyTuple;"
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->hashtable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->hashtable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->fifo:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    goto :goto_1

    .end local v0    # "oldest":Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;, "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<TK;TV;>.KeyTuple;"
    :cond_0
    move v1, v3

    .line 114
    goto :goto_0

    .restart local v0    # "oldest":Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;, "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<TK;TV;>.KeyTuple;"
    :cond_1
    move v1, v3

    .line 121
    goto :goto_2

    .line 123
    .end local v0    # "oldest":Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;, "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<TK;TV;>.KeyTuple;"
    :cond_2
    return-void
.end method


# virtual methods
.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;, "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<TK;TV;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->hashtable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;, "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->hashtable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

.method public keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;, "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<TK;TV;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->hashtable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;, "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->hashtable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    monitor-exit v1

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 53
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->count:I

    .line 54
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->fifo:Ljava/util/PriorityQueue;

    new-instance v2, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;

    iget v3, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->count:I

    invoke-direct {v2, p0, p1, v3}, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;-><init>(Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->hashtable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->cleanupIfNecessary()V

    .line 58
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;, "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->syncObject:Ljava/lang/Object;

    monitor-enter v4

    .line 78
    :try_start_0
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->hashtable:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    monitor-exit v4

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 82
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->hashtable:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "keyTuple":Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;, "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<TK;TV;>.KeyTuple;"
    const/4 v1, 0x0

    .line 87
    .local v1, "matchKeyTuple":Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;, "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<TK;TV;>.KeyTuple;"
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->fifo:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 89
    .local v2, "queueIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<TK;TV;>.KeyTuple;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "keyTuple":Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;, "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<TK;TV;>.KeyTuple;"
    check-cast v0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;

    .line 91
    .restart local v0    # "keyTuple":Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;, "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<TK;TV;>.KeyTuple;"
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;->access$000(Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    move-object v1, v0

    .line 97
    :cond_3
    if-eqz v1, :cond_4

    .line 99
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->fifo:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 102
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
