.class public Lcom/microsoft/xbox/toolkit/MultiSelection;
.super Ljava/lang/Object;
.source "MultiSelection.java"


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
.field private selection:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiSelection;, "Lcom/microsoft/xbox/toolkit/MultiSelection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiSelection;->selection:Ljava/util/HashSet;

    .line 12
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiSelection;, "Lcom/microsoft/xbox/toolkit/MultiSelection<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiSelection;->selection:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiSelection;, "Lcom/microsoft/xbox/toolkit/MultiSelection<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiSelection;->selection:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiSelection;, "Lcom/microsoft/xbox/toolkit/MultiSelection<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiSelection;->selection:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiSelection;, "Lcom/microsoft/xbox/toolkit/MultiSelection<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiSelection;->selection:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiSelection;, "Lcom/microsoft/xbox/toolkit/MultiSelection<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiSelection;->selection:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 36
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiSelection;, "Lcom/microsoft/xbox/toolkit/MultiSelection<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/MultiSelection;->selection:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public toArrayList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/microsoft/xbox/toolkit/MultiSelection;, "Lcom/microsoft/xbox/toolkit/MultiSelection<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/MultiSelection;->selection:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
