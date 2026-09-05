.class public Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;
.super Ljava/lang/Object;
.source "TrieNode.java"


# instance fields
.field public IsWord:Z

.field public MoreNodes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Character;",
            "Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;",
            ">;"
        }
    .end annotation
.end field

.field public Words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->Words:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lcom/microsoft/xbox/toolkit/ui/Search/ITrieNodeVisitor;)V
    .locals 4
    .param p1, "visitor"    # Lcom/microsoft/xbox/toolkit/ui/Search/ITrieNodeVisitor;

    .prologue
    .line 22
    if-eqz p1, :cond_0

    .line 23
    invoke-interface {p1, p0}, Lcom/microsoft/xbox/toolkit/ui/Search/ITrieNodeVisitor;->visit(Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;)V

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    .line 27
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 29
    .local v1, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Character;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 31
    .local v0, "key":C
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    invoke-virtual {v2, p1}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->accept(Lcom/microsoft/xbox/toolkit/ui/Search/ITrieNodeVisitor;)V

    goto :goto_0

    .line 34
    .end local v0    # "key":C
    .end local v1    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Character;>;"
    :cond_1
    return-void
.end method
