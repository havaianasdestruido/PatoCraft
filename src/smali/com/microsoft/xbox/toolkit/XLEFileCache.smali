.class public Lcom/microsoft/xbox/toolkit/XLEFileCache;
.super Ljava/lang/Object;
.source "XLEFileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;,
        Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private enabled:Z

.field private final expiredTimer:J

.field final maxFileNumber:I

.field private readAccessCnt:I

.field private readSuccessfulCnt:I

.field size:I

.field private writeAccessCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/microsoft/xbox/toolkit/XLEFileCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->enabled:Z

    .line 21
    iput v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readAccessCnt:I

    .line 22
    iput v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->writeAccessCnt:I

    .line 23
    iput v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readSuccessfulCnt:I

    .line 29
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->expiredTimer:J

    .line 30
    iput v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->maxFileNumber:I

    .line 31
    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->enabled:Z

    .line 32
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "maxFileNumber"    # I

    .prologue
    .line 35
    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/microsoft/xbox/toolkit/XLEFileCache;-><init>(Ljava/lang/String;IJ)V

    .line 36
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IJ)V
    .locals 3
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "maxFileNumber"    # I
    .param p3, "expiredDurationInSeconds"    # J

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->enabled:Z

    .line 21
    iput v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readAccessCnt:I

    .line 22
    iput v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->writeAccessCnt:I

    .line 23
    iput v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readSuccessfulCnt:I

    .line 39
    iput p2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->maxFileNumber:I

    .line 40
    iput-wide p3, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->expiredTimer:J

    .line 41
    return-void
.end method

.method static synthetic access$000(Ljava/io/InputStream;)I
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readInt(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method private checkAndEnsureCapacity()V
    .locals 4

    .prologue
    .line 137
    iget v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    iget v3, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->maxFileNumber:I

    if-lt v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->enabled:Z

    if-eqz v2, :cond_0

    .line 139
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->getCacheRootDir(Lcom/microsoft/xbox/toolkit/XLEFileCache;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, "files":[Ljava/io/File;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 141
    .local v1, "randomFileIndex":I
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 142
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    .line 144
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "randomFileIndex":I
    :cond_0
    return-void
.end method

.method private getCachedItemFileName(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/lang/String;
    .locals 1
    .param p1, "fileItem"    # Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;

    .prologue
    .line 147
    invoke-interface {p1}, Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;->getKeyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readInt(Ljava/io/InputStream;)I
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 267
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 268
    .local v1, "ch2":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 269
    .local v2, "ch3":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 270
    .local v3, "ch4":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_0

    .line 271
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 272
    :cond_0
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x0

    add-int/2addr v4, v5

    return v4
.end method


# virtual methods
.method public declared-synchronized contains(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Z
    .locals 3
    .param p1, "cachedItem"    # Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 49
    const/4 v1, 0x0

    .line 52
    :goto_0
    monitor-exit p0

    return v1

    .line 51
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->getCacheRootDir(Lcom/microsoft/xbox/toolkit/XLEFileCache;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->getCachedItemFileName(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .local v0, "cachedFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 48
    .end local v0    # "cachedFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getInputStreamForRead(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/io/InputStream;
    .locals 10
    .param p1, "cachedItem"    # Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;

    .prologue
    const/4 v3, 0x0

    .line 92
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    move-object v1, v3

    .line 113
    :goto_0
    monitor-exit p0

    return-object v1

    .line 95
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    sget-object v5, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 96
    iget v4, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readAccessCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readAccessCnt:I

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->getCacheRootDir(Lcom/microsoft/xbox/toolkit/XLEFileCache;)Ljava/io/File;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->getCachedItemFileName(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->expiredTimer:J

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 101
    iget v4, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 102
    goto :goto_0

    .line 95
    .end local v0    # "cacheFile":Ljava/io/File;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 106
    .restart local v0    # "cacheFile":Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v2, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;

    invoke-direct {v2, p0, p1, v0}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;-><init>(Lcom/microsoft/xbox/toolkit/XLEFileCache;Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;Ljava/io/File;)V

    .line 107
    .local v2, "item":Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;
    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->getContentInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 108
    .local v1, "is":Ljava/io/InputStream;
    iget v4, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readSuccessfulCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readSuccessfulCnt:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 110
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "item":Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;
    :catch_0
    move-exception v4

    :cond_3
    move-object v1, v3

    .line 113
    goto :goto_0

    .line 92
    .end local v0    # "cacheFile":Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getItemsInCache()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    return v0
.end method

.method public declared-synchronized getOuputStreamForSave(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "cachedItem"    # Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->enabled:Z

    if-nez v2, :cond_0

    .line 57
    new-instance v2, Lcom/microsoft/xbox/toolkit/XLEFileCache$1;

    invoke-direct {v2, p0}, Lcom/microsoft/xbox/toolkit/XLEFileCache$1;-><init>(Lcom/microsoft/xbox/toolkit/XLEFileCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    monitor-exit p0

    return-object v2

    .line 65
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 66
    iget v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->writeAccessCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->writeAccessCnt:I

    .line 67
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->checkAndEnsureCapacity()V

    .line 69
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->getCacheRootDir(Lcom/microsoft/xbox/toolkit/XLEFileCache;)Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->getCachedItemFileName(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v0, "outputFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 72
    iget v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    .line 74
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    .line 75
    .local v1, "result":Z
    if-eqz v1, :cond_2

    .line 76
    iget v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    .line 78
    :cond_2
    new-instance v2, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;

    invoke-direct {v2, p0, p1, v0}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;-><init>(Lcom/microsoft/xbox/toolkit/XLEFileCache;Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    .end local v0    # "outputFile":Ljava/io/File;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 65
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public declared-synchronized save(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "fileItem"    # Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;
    .param p2, "is"    # Ljava/io/InputStream;

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->getOuputStreamForSave(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/io/OutputStream;

    move-result-object v0

    .line 85
    .local v0, "os":Ljava/io/OutputStream;
    invoke-static {v0, p2}, Lcom/microsoft/xbox/toolkit/StreamUtil;->CopyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v0    # "os":Ljava/io/OutputStream;
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 87
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "\tRootDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->getCacheRootDir(Lcom/microsoft/xbox/toolkit/XLEFileCache;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "\tMaxFileNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->maxFileNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "\tExpiredTimerInSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-wide v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->expiredTimer:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "\tWriteAccessCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->writeAccessCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "\tReadAccessCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readAccessCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "\tReadSuccessfulCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readSuccessfulCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
