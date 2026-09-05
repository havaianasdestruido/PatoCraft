.class public Lcom/microsoft/xbox/toolkit/MultiMap;
.super Ljava/lang/Object;
.source "MultiMap.java"


# annotations
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
.field private data:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<TK;",
            "Ljava/util/HashSet",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private dataInverse:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiMap;, "Lcom/microsoft/xbox/toolkit/MultiMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->data:Ljava/util/Hashtable;

    .line 10
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->dataInverse:Ljava/util/Hashtable;

    return-void
.end method

.method private removeKeyIfEmpty(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiMap;, "Lcom/microsoft/xbox/toolkit/MultiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/MultiMap;->get(Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 90
    .local v0, "vset":Ljava/util/HashSet;, "Ljava/util/HashSet<TV;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->data:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public TESTsizeDegenerate()I
    .locals 4

    .prologue
    .line 21
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiMap;, "Lcom/microsoft/xbox/toolkit/MultiMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 23
    .local v0, "count":I
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->data:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 24
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->data:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiMap;, "Lcom/microsoft/xbox/toolkit/MultiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->data:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 34
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->dataInverse:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 35
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiMap;, "Lcom/microsoft/xbox/toolkit/MultiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->data:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiMap;, "Lcom/microsoft/xbox/toolkit/MultiMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/MultiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/HashSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiMap;, "Lcom/microsoft/xbox/toolkit/MultiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->data:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TK;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiMap;, "Lcom/microsoft/xbox/toolkit/MultiMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->dataInverse:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keyValueMatches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiMap;, "Lcom/microsoft/xbox/toolkit/MultiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/MultiMap;->get(Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 81
    .local v0, "vset":Ljava/util/HashSet;, "Ljava/util/HashSet<TV;>;"
    if-nez v0, :cond_0

    .line 82
    const/4 v1, 0x0

    .line 84
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiMap;, "Lcom/microsoft/xbox/toolkit/MultiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->data:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->data:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->dataInverse:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 74
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->data:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->dataInverse:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeKey(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiMap;, "Lcom/microsoft/xbox/toolkit/MultiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->data:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->dataInverse:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 61
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->dataInverse:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->data:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public removeValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiMap;, "Lcom/microsoft/xbox/toolkit/MultiMap<TK;TV;>;"
    .local p1, "view":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/MultiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->data:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 52
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->dataInverse:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-direct {p0, v0}, Lcom/microsoft/xbox/toolkit/MultiMap;->removeKeyIfEmpty(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiMap;, "Lcom/microsoft/xbox/toolkit/MultiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiMap;->data:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method
