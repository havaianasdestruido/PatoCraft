.class public Lcom/microsoft/cll/android/NormalEventHandler;
.super Lcom/microsoft/cll/android/AbstractHandler;
.source "NormalEventHandler.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final queueSize:I

.field private queueStorage:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/microsoft/cll/android/Tuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/ClientTelemetry;)V
    .locals 2
    .param p1, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "clientTelemetry"    # Lcom/microsoft/cll/android/ClientTelemetry;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/cll/android/AbstractHandler;-><init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/ClientTelemetry;)V

    .line 11
    const-string v0, "AndroidCll-NormalEventHandler"

    iput-object v0, p0, Lcom/microsoft/cll/android/NormalEventHandler;->TAG:Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->NORMALEVENTMEMORYQUEUESIZE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    iput v0, p0, Lcom/microsoft/cll/android/NormalEventHandler;->queueSize:I

    .line 17
    new-instance v0, Lcom/microsoft/cll/android/FileStorage;

    const-string v1, ".norm.cllevent"

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/microsoft/cll/android/FileStorage;-><init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/NormalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    .line 18
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v1, p0, Lcom/microsoft/cll/android/NormalEventHandler;->queueSize:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/cll/android/NormalEventHandler;->queueStorage:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 19
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/microsoft/cll/android/Tuple;

    invoke-direct {v0, p1, p2}, Lcom/microsoft/cll/android/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .local v0, "tuple":Lcom/microsoft/cll/android/Tuple;, "Lcom/microsoft/cll/android/Tuple<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/microsoft/cll/android/NormalEventHandler;->queueStorage:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/microsoft/cll/android/NormalEventHandler;->writeQueueToDisk()V

    .line 32
    iget-object v1, p0, Lcom/microsoft/cll/android/NormalEventHandler;->queueStorage:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    monitor-exit p0

    return-void

    .line 28
    .end local v0    # "tuple":Lcom/microsoft/cll/android/Tuple;, "Lcom/microsoft/cll/android/Tuple<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public close()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/microsoft/cll/android/NormalEventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-NormalEventHandler"

    const-string v2, "Closing normal file"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/microsoft/cll/android/NormalEventHandler;->writeQueueToDisk()V

    .line 44
    iget-object v0, p0, Lcom/microsoft/cll/android/NormalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/FileStorage;->close()V

    .line 45
    return-void
.end method

.method public dispose(Lcom/microsoft/cll/android/IStorage;)V
    .locals 6
    .param p1, "storage"    # Lcom/microsoft/cll/android/IStorage;

    .prologue
    .line 49
    sget-object v0, Lcom/microsoft/cll/android/NormalEventHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-interface {p1}, Lcom/microsoft/cll/android/IStorage;->size()J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 50
    return-void
.end method

.method public declared-synchronized getFilesForDraining()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/cll/android/IStorage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/cll/android/NormalEventHandler;->queueStorage:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/microsoft/cll/android/NormalEventHandler;->writeQueueToDisk()V

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/microsoft/cll/android/NormalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v1}, Lcom/microsoft/cll/android/FileStorage;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/microsoft/cll/android/NormalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v1}, Lcom/microsoft/cll/android/FileStorage;->close()V

    .line 69
    const-string v1, ".norm.cllevent"

    invoke-virtual {p0, v1}, Lcom/microsoft/cll/android/NormalEventHandler;->getFilesByExtensionForDraining(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "storageList":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/IStorage;>;"
    new-instance v1, Lcom/microsoft/cll/android/FileStorage;

    const-string v2, ".norm.cllevent"

    iget-object v3, p0, Lcom/microsoft/cll/android/NormalEventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v4, p0, Lcom/microsoft/cll/android/NormalEventHandler;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/microsoft/cll/android/FileStorage;-><init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V

    iput-object v1, p0, Lcom/microsoft/cll/android/NormalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    monitor-exit p0

    return-object v0

    .line 72
    .end local v0    # "storageList":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/IStorage;>;"
    :cond_1
    :try_start_1
    const-string v1, ".norm.cllevent"

    invoke-virtual {p0, v1}, Lcom/microsoft/cll/android/NormalEventHandler;->getFilesByExtensionForDraining(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0    # "storageList":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/IStorage;>;"
    goto :goto_0

    .line 60
    .end local v0    # "storageList":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/IStorage;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized writeQueueToDisk()V
    .locals 10

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget v4, p0, Lcom/microsoft/cll/android/NormalEventHandler;->queueSize:I

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/Tuple<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    iget-object v4, p0, Lcom/microsoft/cll/android/NormalEventHandler;->queueStorage:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 88
    iget-object v4, p0, Lcom/microsoft/cll/android/NormalEventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v5, "AndroidCll-NormalEventHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Writing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " events to disk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/cll/android/Tuple;

    .line 92
    .local v3, "serializedEvent":Lcom/microsoft/cll/android/Tuple;
    sget-object v4, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceNormal:Lcom/microsoft/cll/android/EventEnums$Persistence;

    invoke-virtual {p0, v3, v4}, Lcom/microsoft/cll/android/NormalEventHandler;->ensureCanAdd(Lcom/microsoft/cll/android/Tuple;Lcom/microsoft/cll/android/EventEnums$Persistence;)Z

    move-result v0

    .line 93
    .local v0, "canAddResult":Z
    if-nez v0, :cond_1

    .line 96
    iget-object v4, p0, Lcom/microsoft/cll/android/NormalEventHandler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {v4}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementEventsDroppedDueToQuota()V

    .line 97
    iget-object v4, p0, Lcom/microsoft/cll/android/NormalEventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "AndroidCll-NormalEventHandler"

    const-string v7, "Out of storage space for normal events. Logged event was dropped."

    invoke-interface {v4, v6, v7}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 113
    .end local v0    # "canAddResult":Z
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/Tuple<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v3    # "serializedEvent":Lcom/microsoft/cll/android/Tuple;
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Lcom/microsoft/cll/android/NormalEventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v5, "AndroidCll-NormalEventHandler"

    const-string v6, "Could not write events to disk"

    invoke-interface {v4, v5, v6}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/microsoft/cll/android/NormalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v4}, Lcom/microsoft/cll/android/FileStorage;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 102
    .restart local v0    # "canAddResult":Z
    .restart local v2    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/Tuple<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v3    # "serializedEvent":Lcom/microsoft/cll/android/Tuple;
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/microsoft/cll/android/NormalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v4, v3}, Lcom/microsoft/cll/android/FileStorage;->canAdd(Lcom/microsoft/cll/android/Tuple;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 104
    iget-object v4, p0, Lcom/microsoft/cll/android/NormalEventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "AndroidCll-NormalEventHandler"

    const-string v7, "Closing full file and opening a new one"

    invoke-interface {v4, v6, v7}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v4, p0, Lcom/microsoft/cll/android/NormalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v4}, Lcom/microsoft/cll/android/FileStorage;->close()V

    .line 106
    new-instance v4, Lcom/microsoft/cll/android/FileStorage;

    const-string v6, ".norm.cllevent"

    iget-object v7, p0, Lcom/microsoft/cll/android/NormalEventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v8, p0, Lcom/microsoft/cll/android/NormalEventHandler;->filePath:Ljava/lang/String;

    invoke-direct {v4, v6, v7, v8, p0}, Lcom/microsoft/cll/android/FileStorage;-><init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V

    iput-object v4, p0, Lcom/microsoft/cll/android/NormalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    .line 109
    :cond_2
    iget-object v4, p0, Lcom/microsoft/cll/android/NormalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v4, v3}, Lcom/microsoft/cll/android/FileStorage;->add(Lcom/microsoft/cll/android/Tuple;)V

    .line 110
    sget-object v6, Lcom/microsoft/cll/android/NormalEventHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v4, v3, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 86
    .end local v0    # "canAddResult":Z
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/Tuple<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v3    # "serializedEvent":Lcom/microsoft/cll/android/Tuple;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
