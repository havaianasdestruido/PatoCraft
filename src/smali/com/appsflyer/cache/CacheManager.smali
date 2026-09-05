.class public Lcom/appsflyer/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field public static final AF_CACHE_DIR:Ljava/lang/String; = "AFRequestCache"

.field public static final CACHE_MAX_SIZE:I = 0x28

.field private static ourInstance:Lcom/appsflyer/cache/CacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/appsflyer/cache/CacheManager;

    invoke-direct {v0}, Lcom/appsflyer/cache/CacheManager;-><init>()V

    sput-object v0, Lcom/appsflyer/cache/CacheManager;->ourInstance:Lcom/appsflyer/cache/CacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "AFRequestCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/appsflyer/cache/CacheManager;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/appsflyer/cache/CacheManager;->ourInstance:Lcom/appsflyer/cache/CacheManager;

    return-object v0
.end method

.method private loadRequestData(Ljava/io/File;)Lcom/appsflyer/cache/RequestCacheData;
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 118
    const/4 v3, 0x0

    .line 120
    .local v3, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v3    # "reader":Ljava/io/FileReader;
    .local v4, "reader":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    new-array v1, v5, [C

    .line 122
    .local v1, "chars":[C
    invoke-virtual {v4, v1}, Ljava/io/FileReader;->read([C)I

    .line 123
    new-instance v0, Lcom/appsflyer/cache/RequestCacheData;

    invoke-direct {v0, v1}, Lcom/appsflyer/cache/RequestCacheData;-><init>([C)V

    .line 124
    .local v0, "cacheData":Lcom/appsflyer/cache/RequestCacheData;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/appsflyer/cache/RequestCacheData;->setCacheKey(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    if-eqz v4, :cond_0

    .line 131
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v3, v4

    .line 127
    .end local v0    # "cacheData":Lcom/appsflyer/cache/RequestCacheData;
    .end local v1    # "chars":[C
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-object v0

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    .line 130
    if-eqz v3, :cond_1

    .line 131
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 133
    :catch_1
    move-exception v5

    goto :goto_1

    .line 129
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 130
    :goto_3
    if-eqz v3, :cond_2

    .line 131
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 134
    :cond_2
    :goto_4
    throw v5

    .line 133
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v0    # "cacheData":Lcom/appsflyer/cache/RequestCacheData;
    .restart local v1    # "chars":[C
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v0    # "cacheData":Lcom/appsflyer/cache/RequestCacheData;
    .end local v1    # "chars":[C
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_3
    move-exception v6

    goto :goto_4

    .line 129
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .line 126
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_2
.end method


# virtual methods
.method public cacheRequest(Lcom/appsflyer/cache/RequestCacheData;Landroid/content/Context;)V
    .locals 10
    .param p1, "data"    # Lcom/appsflyer/cache/RequestCacheData;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v3, 0x0

    .line 55
    .local v3, "out":Ljava/io/OutputStreamWriter;
    :try_start_0
    invoke-direct {p0, p2}, Lcom/appsflyer/cache/CacheManager;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 56
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-eqz v3, :cond_0

    .line 89
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 94
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local v0    # "cacheDir":Ljava/io/File;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 62
    .local v1, "cacheFileList":[Ljava/io/File;
    if-eqz v1, :cond_2

    array-length v6, v1

    const/16 v7, 0x28

    if-le v6, v7, :cond_2

    .line 63
    const-string v6, "AppsFlyer_4.7.1"

    const-string v7, "reached cache limit, not caching request"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    if-eqz v3, :cond_0

    .line 89
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v6

    goto :goto_0

    .line 66
    :cond_2
    :try_start_4
    const-string v6, "AppsFlyer_4.7.1"

    const-string v7, "caching request..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v5, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/appsflyer/cache/CacheManager;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v5, "requestFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 69
    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 70
    .end local v3    # "out":Ljava/io/OutputStreamWriter;
    .local v4, "out":Ljava/io/OutputStreamWriter;
    :try_start_5
    const-string v6, "version="

    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/appsflyer/cache/RequestCacheData;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 72
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 74
    const-string v6, "url="

    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/appsflyer/cache/RequestCacheData;->getRequestURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 76
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 78
    const-string v6, "data="

    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/appsflyer/cache/RequestCacheData;->getPostData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 80
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 82
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 88
    if-eqz v4, :cond_3

    .line 89
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    move-object v3, v4

    .line 92
    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    .restart local v3    # "out":Ljava/io/OutputStreamWriter;
    goto/16 :goto_0

    .line 91
    .end local v3    # "out":Ljava/io/OutputStreamWriter;
    .restart local v4    # "out":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v6

    move-object v3, v4

    .line 93
    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    .restart local v3    # "out":Ljava/io/OutputStreamWriter;
    goto/16 :goto_0

    .line 84
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "cacheFileList":[Ljava/io/File;
    .end local v5    # "requestFile":Ljava/io/File;
    :catch_2
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_7
    const-string v6, "AppsFlyer_4.7.1"

    const-string v7, "Could not cache request"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 88
    if-eqz v3, :cond_0

    .line 89
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 91
    :catch_3
    move-exception v6

    goto/16 :goto_0

    .line 87
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 88
    :goto_2
    if-eqz v3, :cond_4

    .line 89
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 92
    :cond_4
    :goto_3
    throw v6

    .line 91
    .restart local v0    # "cacheDir":Ljava/io/File;
    :catch_4
    move-exception v6

    goto/16 :goto_0

    .end local v0    # "cacheDir":Ljava/io/File;
    :catch_5
    move-exception v7

    goto :goto_3

    .line 87
    .end local v3    # "out":Ljava/io/OutputStreamWriter;
    .restart local v0    # "cacheDir":Ljava/io/File;
    .restart local v1    # "cacheFileList":[Ljava/io/File;
    .restart local v4    # "out":Ljava/io/OutputStreamWriter;
    .restart local v5    # "requestFile":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    .restart local v3    # "out":Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 84
    .end local v3    # "out":Ljava/io/OutputStreamWriter;
    .restart local v4    # "out":Ljava/io/OutputStreamWriter;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    .restart local v3    # "out":Ljava/io/OutputStreamWriter;
    goto :goto_1
.end method

.method public deleteRequest(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-direct {p0, p2}, Lcom/appsflyer/cache/CacheManager;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .local v1, "cachedRequestFile":Ljava/io/File;
    const-string v3, "AppsFlyer_4.7.1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AppsFlyer_4.7.1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCachedRequests(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/appsflyer/cache/RequestCacheData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v4, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/appsflyer/cache/RequestCacheData;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/appsflyer/cache/CacheManager;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 101
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 114
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v4

    .line 104
    .restart local v0    # "cacheDir":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 105
    .local v3, "files":[Ljava/io/File;
    array-length v6, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v2, v3, v5

    .line 106
    .local v2, "file":Ljava/io/File;
    const-string v7, "AppsFlyer_4.7.1"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found cached request"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0, v2}, Lcom/appsflyer/cache/CacheManager;->loadRequestData(Ljava/io/File;)Lcom/appsflyer/cache/RequestCacheData;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "AppsFlyer_4.7.1"

    const-string v6, "Could not cache request"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    :try_start_0
    invoke-direct {p0, p1}, Lcom/appsflyer/cache/CacheManager;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-direct {p0, p1}, Lcom/appsflyer/cache/CacheManager;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppsFlyer_4.7.1"

    const-string v2, "Could not create cache directory"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
