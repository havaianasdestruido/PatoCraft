.class public Lcom/microsoft/cll/android/CriticalEventHandler;
.super Lcom/microsoft/cll/android/AbstractHandler;
.source "CriticalEventHandler.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/ClientTelemetry;)V
    .locals 2
    .param p1, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "clientTelemetry"    # Lcom/microsoft/cll/android/ClientTelemetry;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/cll/android/AbstractHandler;-><init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/ClientTelemetry;)V

    .line 12
    const-string v0, "AndroidCll-CriticalEventHandler"

    iput-object v0, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/microsoft/cll/android/FileStorage;

    const-string v1, ".crit.cllevent"

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/microsoft/cll/android/FileStorage;-><init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/microsoft/cll/android/FileStorage$FileFullException;
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/microsoft/cll/android/Tuple;

    invoke-direct {v1, p1, p2}, Lcom/microsoft/cll/android/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .local v1, "tuple":Lcom/microsoft/cll/android/Tuple;, "Lcom/microsoft/cll/android/Tuple<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    sget-object v2, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceCritical:Lcom/microsoft/cll/android/EventEnums$Persistence;

    invoke-virtual {p0, v1, v2}, Lcom/microsoft/cll/android/CriticalEventHandler;->ensureCanAdd(Lcom/microsoft/cll/android/Tuple;Lcom/microsoft/cll/android/EventEnums$Persistence;)Z

    move-result v0

    .line 36
    .local v0, "canAddResult":Z
    if-nez v0, :cond_0

    .line 39
    iget-object v2, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {v2}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementEventsDroppedDueToQuota()V

    .line 40
    iget-object v2, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "AndroidCll-CriticalEventHandler"

    const-string v4, "Out of storage space for critical events. Logged event was dropped."

    invoke-interface {v2, v3, v4}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v2, v1}, Lcom/microsoft/cll/android/FileStorage;->canAdd(Lcom/microsoft/cll/android/Tuple;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "AndroidCll-CriticalEventHandler"

    const-string v4, "Closing full file and opening a new one"

    invoke-interface {v2, v3, v4}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v2}, Lcom/microsoft/cll/android/FileStorage;->close()V

    .line 48
    new-instance v2, Lcom/microsoft/cll/android/FileStorage;

    const-string v3, ".crit.cllevent"

    iget-object v4, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v5, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->filePath:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, p0}, Lcom/microsoft/cll/android/FileStorage;-><init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V

    iput-object v2, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v2, v1}, Lcom/microsoft/cll/android/FileStorage;->add(Lcom/microsoft/cll/android/Tuple;)V

    .line 52
    sget-object v2, Lcom/microsoft/cll/android/CriticalEventHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 53
    iget-object v2, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v2}, Lcom/microsoft/cll/android/FileStorage;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 33
    .end local v0    # "canAddResult":Z
    .end local v1    # "tuple":Lcom/microsoft/cll/android/Tuple;, "Lcom/microsoft/cll/android/Tuple<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public close()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-CriticalEventHandler"

    const-string v2, "Closing critical file"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/FileStorage;->close()V

    .line 87
    return-void
.end method

.method public dispose(Lcom/microsoft/cll/android/IStorage;)V
    .locals 6
    .param p1, "storage"    # Lcom/microsoft/cll/android/IStorage;

    .prologue
    .line 95
    sget-object v0, Lcom/microsoft/cll/android/CriticalEventHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-interface {p1}, Lcom/microsoft/cll/android/IStorage;->size()J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 96
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
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v1}, Lcom/microsoft/cll/android/FileStorage;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;

    invoke-virtual {v1}, Lcom/microsoft/cll/android/FileStorage;->close()V

    .line 70
    const-string v1, ".crit.cllevent"

    invoke-virtual {p0, v1}, Lcom/microsoft/cll/android/CriticalEventHandler;->getFilesByExtensionForDraining(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, "storageList":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/IStorage;>;"
    new-instance v1, Lcom/microsoft/cll/android/FileStorage;

    const-string v2, ".crit.cllevent"

    iget-object v3, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v4, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/microsoft/cll/android/FileStorage;-><init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V

    iput-object v1, p0, Lcom/microsoft/cll/android/CriticalEventHandler;->fileStorage:Lcom/microsoft/cll/android/FileStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    monitor-exit p0

    return-object v0

    .line 73
    .end local v0    # "storageList":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/IStorage;>;"
    :cond_0
    :try_start_1
    const-string v1, ".crit.cllevent"

    invoke-virtual {p0, v1}, Lcom/microsoft/cll/android/CriticalEventHandler;->getFilesByExtensionForDraining(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0    # "storageList":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/IStorage;>;"
    goto :goto_0

    .line 68
    .end local v0    # "storageList":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/IStorage;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
