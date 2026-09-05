.class public Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;
.super Ljava/lang/Object;
.source "XLEFileCacheManager.java"


# static fields
.field public static emptyFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

.field private static sAllCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/xbox/toolkit/XLEFileCache;",
            ">;"
        }
    .end annotation
.end field

.field private static sCacheRootDirMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/microsoft/xbox/toolkit/XLEFileCache;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->sAllCaches:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->sCacheRootDirMap:Ljava/util/HashMap;

    .line 17
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEFileCache;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/XLEFileCache;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->emptyFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createCache(Ljava/lang/String;I)Lcom/microsoft/xbox/toolkit/XLEFileCache;
    .locals 2
    .param p0, "subDirectory"    # Ljava/lang/String;
    .param p1, "maxFileNumber"    # I

    .prologue
    .line 14
    const-class v0, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->createCache(Ljava/lang/String;IZ)Lcom/microsoft/xbox/toolkit/XLEFileCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized createCache(Ljava/lang/String;IZ)Lcom/microsoft/xbox/toolkit/XLEFileCache;
    .locals 5
    .param p0, "subDirectory"    # Ljava/lang/String;
    .param p1, "maxFileNumber"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 20
    const-class v3, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;

    monitor-enter v3

    if-gtz p1, :cond_0

    .line 21
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "maxFileNumber must be > 0"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 23
    :cond_0
    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 24
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "subDirectory must be not null and at least one character length"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 27
    :cond_2
    sget-object v2, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->sAllCaches:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/XLEFileCache;

    .line 28
    .local v0, "fileCache":Lcom/microsoft/xbox/toolkit/XLEFileCache;
    if-nez v0, :cond_7

    .line 30
    if-nez p2, :cond_3

    .line 31
    sget-object v2, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->emptyFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :goto_0
    monitor-exit v3

    return-object v2

    .line 34
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->isSDCardAvailable()Z

    move-result v2

    if-nez v2, :cond_4

    .line 35
    sget-object v2, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->emptyFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    goto :goto_0

    .line 38
    :cond_4
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEFileCache;

    .end local v0    # "fileCache":Lcom/microsoft/xbox/toolkit/XLEFileCache;
    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/toolkit/XLEFileCache;-><init>(Ljava/lang/String;I)V

    .line 41
    .restart local v0    # "fileCache":Lcom/microsoft/xbox/toolkit/XLEFileCache;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .local v1, "rootDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 47
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    iput v2, v0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    .line 49
    sget-object v2, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->sAllCaches:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v2, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->sCacheRootDirMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "rootDir":Ljava/io/File;
    :cond_6
    move-object v2, v0

    .line 56
    goto :goto_0

    .line 52
    :cond_7
    iget v2, v0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->maxFileNumber:I

    if-eq v2, p1, :cond_6

    .line 53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "The same subDirectory with different maxFileNumber already exist."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method static getCacheRootDir(Lcom/microsoft/xbox/toolkit/XLEFileCache;)Ljava/io/File;
    .locals 1
    .param p0, "cache"    # Lcom/microsoft/xbox/toolkit/XLEFileCache;

    .prologue
    .line 60
    sget-object v0, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->sCacheRootDirMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static getCacheStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->sAllCaches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
