.class public final Lcom/microsoft/xbox/idp/util/CacheUtil;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final bitmapCache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

.field private static final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/microsoft/xbox/idp/util/ResultCache",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final objectLoaderCache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-class v0, Lcom/microsoft/xbox/idp/util/CacheUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->map:Ljava/util/HashMap;

    .line 24
    new-instance v0, Lcom/microsoft/xbox/idp/util/ObjectLoaderCache;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/util/ObjectLoaderCache;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->objectLoaderCache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    .line 25
    new-instance v0, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;-><init>(I)V

    sput-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->bitmapCache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    .line 28
    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->map:Ljava/util/HashMap;

    const-class v1, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultCache;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/util/ResultCache;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->map:Ljava/util/HashMap;

    const-class v1, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultCache;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/util/ResultCache;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->map:Ljava/util/HashMap;

    const-class v1, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultCache;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/util/ResultCache;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->map:Ljava/util/HashMap;

    const-class v1, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultCache;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/util/ResultCache;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->map:Ljava/util/HashMap;

    const-class v1, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultCache;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/util/ResultCache;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->map:Ljava/util/HashMap;

    const-class v1, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultCache;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/util/ResultCache;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static clearCaches()V
    .locals 3

    .prologue
    .line 52
    sget-object v1, Lcom/microsoft/xbox/idp/util/CacheUtil;->TAG:Ljava/lang/String;

    const-string v2, "clearCaches"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget-object v2, Lcom/microsoft/xbox/idp/util/CacheUtil;->objectLoaderCache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    monitor-enter v2

    .line 54
    :try_start_0
    sget-object v1, Lcom/microsoft/xbox/idp/util/CacheUtil;->objectLoaderCache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    invoke-interface {v1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->clear()V

    .line 55
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    sget-object v2, Lcom/microsoft/xbox/idp/util/CacheUtil;->bitmapCache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    monitor-enter v2

    .line 57
    :try_start_1
    sget-object v1, Lcom/microsoft/xbox/idp/util/CacheUtil;->bitmapCache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    invoke-interface {v1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;->clear()V

    .line 58
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 59
    sget-object v1, Lcom/microsoft/xbox/idp/util/CacheUtil;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "cache":Lcom/microsoft/xbox/idp/util/ResultCache;, "Lcom/microsoft/xbox/idp/util/ResultCache<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cache":Lcom/microsoft/xbox/idp/util/ResultCache;, "Lcom/microsoft/xbox/idp/util/ResultCache<*>;"
    check-cast v0, Lcom/microsoft/xbox/idp/util/ResultCache;

    .line 60
    .restart local v0    # "cache":Lcom/microsoft/xbox/idp/util/ResultCache;, "Lcom/microsoft/xbox/idp/util/ResultCache<*>;"
    monitor-enter v0

    .line 61
    :try_start_2
    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/util/ResultCache;->clear()V

    .line 62
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 55
    .end local v0    # "cache":Lcom/microsoft/xbox/idp/util/ResultCache;, "Lcom/microsoft/xbox/idp/util/ResultCache<*>;"
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 58
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 64
    .restart local v0    # "cache":Lcom/microsoft/xbox/idp/util/ResultCache;, "Lcom/microsoft/xbox/idp/util/ResultCache<*>;"
    :cond_0
    return-void
.end method

.method public static getBitmapCache()Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->bitmapCache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    return-object v0
.end method

.method public static getObjectLoaderCache()Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->objectLoaderCache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    return-object v0
.end method

.method public static getResultCache(Ljava/lang/Class;)Lcom/microsoft/xbox/idp/util/ResultCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/microsoft/xbox/idp/util/ResultCache",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/util/ResultCache;

    return-object v0
.end method
