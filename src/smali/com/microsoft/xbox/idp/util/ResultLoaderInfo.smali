.class public Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;
.super Ljava/lang/Object;
.source "ResultLoaderInfo.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;"
    }
.end annotation


# instance fields
.field private final callbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<*>;"
        }
    .end annotation
.end field

.field private final cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/app/LoaderManager$LoaderCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TR;>;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;, "Lcom/microsoft/xbox/idp/util/ResultLoaderInfo<TR;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p2, "callbacks":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;->cls:Ljava/lang/Class;

    .line 17
    iput-object p2, p0, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;->callbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 18
    return-void
.end method


# virtual methods
.method public clearCache(Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;, "Lcom/microsoft/xbox/idp/util/ResultLoaderInfo<TR;>;"
    iget-object v1, p0, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;->cls:Ljava/lang/Class;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getResultCache(Ljava/lang/Class;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v0

    .line 28
    .local v0, "cache":Lcom/microsoft/xbox/idp/util/ResultCache;, "Lcom/microsoft/xbox/idp/util/ResultCache<TR;>;"
    monitor-enter v0

    .line 29
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/ResultCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 30
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
    .line 22
    .local p0, "this":Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;, "Lcom/microsoft/xbox/idp/util/ResultLoaderInfo<TR;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;->callbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method public hasCachedData(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;, "Lcom/microsoft/xbox/idp/util/ResultLoaderInfo<TR;>;"
    iget-object v1, p0, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;->cls:Ljava/lang/Class;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getResultCache(Ljava/lang/Class;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v0

    .line 36
    .local v0, "cache":Lcom/microsoft/xbox/idp/util/ResultCache;, "Lcom/microsoft/xbox/idp/util/ResultCache<TR;>;"
    monitor-enter v0

    .line 37
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/ResultCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
