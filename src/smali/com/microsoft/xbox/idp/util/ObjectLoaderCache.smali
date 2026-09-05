.class public Lcom/microsoft/xbox/idp/util/ObjectLoaderCache;
.super Ljava/lang/Object;
.source "ObjectLoaderCache.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;


# instance fields
.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/util/ObjectLoaderCache;->map:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/ObjectLoaderCache;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 31
    return-void
.end method

.method public get(Ljava/lang/Object;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/ObjectLoaderCache;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<TT;>;)",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "value":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/ObjectLoaderCache;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/ObjectLoaderCache;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    return-object v0
.end method
