.class public Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;
.super Ljava/lang/Object;
.source "ObjectLoaderInfo.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;


# instance fields
.field private final callbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/LoaderManager$LoaderCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "callbacks":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;->callbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 15
    return-void
.end method


# virtual methods
.method public clearCache(Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getObjectLoaderCache()Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v0

    .line 25
    .local v0, "cache":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;
    monitor-enter v0

    .line 26
    :try_start_0
    invoke-interface {v0, p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->remove(Ljava/lang/Object;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLoaderCallbacks()Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;->callbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method public hasCachedData(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getObjectLoaderCache()Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v0

    .line 33
    .local v0, "cache":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;
    monitor-enter v0

    .line 34
    :try_start_0
    invoke-interface {v0, p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->get(Ljava/lang/Object;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
