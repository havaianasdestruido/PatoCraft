.class public abstract Lcom/microsoft/cll/android/AbstractHandler;
.super Ljava/lang/Object;
.source "AbstractHandler.java"


# static fields
.field protected static final criticalEventFileExtension:Ljava/lang/String; = ".crit.cllevent"

.field protected static final normalEventFileExtension:Ljava/lang/String; = ".norm.cllevent"

.field protected static totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected final clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

.field protected filePath:Ljava/lang/String;

.field protected fileStorage:Lcom/microsoft/cll/android/FileStorage;

.field protected final logger:Lcom/microsoft/cll/android/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/microsoft/cll/android/AbstractHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/ClientTelemetry;)V
    .locals 1
    .param p1, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "clientTelemetry"    # Lcom/microsoft/cll/android/ClientTelemetry;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "AndroidCll-AbstractHandler"

    iput-object v0, p0, Lcom/microsoft/cll/android/AbstractHandler;->TAG:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/microsoft/cll/android/AbstractHandler;->filePath:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 27
    iput-object p3, p0, Lcom/microsoft/cll/android/AbstractHandler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    .line 29
    invoke-direct {p0}, Lcom/microsoft/cll/android/AbstractHandler;->setFileStorageUsed()V

    .line 30
    return-void
.end method

.method private deleteFile(Ljava/io/File;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 189
    .local v1, "result":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 196
    :goto_0
    return v1

    .line 191
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "AndroidCll-AbstractHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while deleting the file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFileStorageUsed()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 101
    sget-object v2, Lcom/microsoft/cll/android/AbstractHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 104
    const-string v2, ".crit.cllevent"

    invoke-virtual {p0, v2}, Lcom/microsoft/cll/android/AbstractHandler;->findExistingFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 105
    .local v0, "file":Ljava/io/File;
    sget-object v5, Lcom/microsoft/cll/android/AbstractHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    const-string v2, ".norm.cllevent"

    invoke-virtual {p0, v2}, Lcom/microsoft/cll/android/AbstractHandler;->findExistingFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 110
    .restart local v0    # "file":Ljava/io/File;
    sget-object v4, Lcom/microsoft/cll/android/AbstractHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract add(Ljava/lang/String;Ljava/util/List;)V
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
.end method

.method public canAdd(Lcom/microsoft/cll/android/Tuple;)Z
    .locals 4
    .param p1, "serializedEvent"    # Lcom/microsoft/cll/android/Tuple;

    .prologue
    .line 46
    sget-object v0, Lcom/microsoft/cll/android/AbstractHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v0, p1, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXFILESSPACE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract close()V
.end method

.method public abstract dispose(Lcom/microsoft/cll/android/IStorage;)V
.end method

.method protected dropOldestFile(Z)Z
    .locals 12
    .param p1, "includingCritical"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 142
    const-string v8, ".norm.cllevent"

    invoke-virtual {p0, v8}, Lcom/microsoft/cll/android/AbstractHandler;->findExistingFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 146
    .local v1, "files":[Ljava/io/File;
    array-length v8, v1

    if-gt v8, v9, :cond_0

    .line 148
    if-eqz p1, :cond_0

    .line 150
    const-string v8, ".crit.cllevent"

    invoke-virtual {p0, v8}, Lcom/microsoft/cll/android/AbstractHandler;->findExistingFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 154
    :cond_0
    array-length v8, v1

    if-gt v8, v9, :cond_2

    .line 156
    iget-object v8, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v9, "AndroidCll-AbstractHandler"

    const-string v10, "There are no files to delete"

    invoke-interface {v8, v9, v10}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_1
    :goto_0
    return v7

    .line 160
    :cond_2
    aget-object v8, v1, v7

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 161
    .local v4, "lastModified":J
    aget-object v6, v1, v7

    .line 162
    .local v6, "lastModifiedFile":Ljava/io/File;
    array-length v8, v1

    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v0, v1, v7

    .line 165
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v9, v10, v4

    if-gez v9, :cond_3

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 168
    move-object v6, v0

    .line 162
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 172
    .end local v0    # "file":Ljava/io/File;
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 173
    .local v2, "fileLength":J
    invoke-direct {p0, v6}, Lcom/microsoft/cll/android/AbstractHandler;->deleteFile(Ljava/io/File;)Z

    move-result v7

    .line 175
    .local v7, "result":Z
    if-eqz v7, :cond_1

    .line 177
    sget-object v8, Lcom/microsoft/cll/android/AbstractHandler;->totalStorageUsed:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v10, v2

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    goto :goto_0
.end method

.method protected ensureCanAdd(Lcom/microsoft/cll/android/Tuple;Lcom/microsoft/cll/android/EventEnums$Persistence;)Z
    .locals 8
    .param p2, "persistence"    # Lcom/microsoft/cll/android/EventEnums$Persistence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/Tuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/microsoft/cll/android/EventEnums$Persistence;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "tuple":Lcom/microsoft/cll/android/Tuple;, "Lcom/microsoft/cll/android/Tuple<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    sget-object v5, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCRITICALCANADDATTEMPTS:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v5}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v4

    .line 117
    .local v4, "maxAttempts":I
    sget-object v5, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceCritical:Lcom/microsoft/cll/android/EventEnums$Persistence;

    if-ne p2, v5, :cond_0

    const/4 v2, 0x1

    .line 119
    .local v2, "considerCritical":Z
    :goto_0
    const/4 v0, 0x0

    .line 120
    .local v0, "attempts":I
    const/4 v3, 0x1

    .line 121
    .local v3, "dropFileResult":Z
    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/AbstractHandler;->canAdd(Lcom/microsoft/cll/android/Tuple;)Z

    move-result v1

    .line 123
    .local v1, "canAddResult":Z
    :goto_1
    if-nez v1, :cond_1

    if-ge v0, v4, :cond_1

    if-eqz v3, :cond_1

    .line 125
    iget-object v5, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "AndroidCll-AbstractHandler"

    const-string v7, "Out of storage space. Attempting to drop one oldest file."

    invoke-interface {v5, v6, v7}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/microsoft/cll/android/AbstractHandler;->dropOldestFile(Z)Z

    move-result v3

    .line 130
    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/AbstractHandler;->canAdd(Lcom/microsoft/cll/android/Tuple;)Z

    move-result v1

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    .end local v0    # "attempts":I
    .end local v1    # "canAddResult":Z
    .end local v2    # "considerCritical":Z
    .end local v3    # "dropFileResult":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 134
    .restart local v0    # "attempts":I
    .restart local v1    # "canAddResult":Z
    .restart local v2    # "considerCritical":Z
    .restart local v3    # "dropFileResult":Z
    :cond_1
    return v1
.end method

.method protected findExistingFiles(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "fileExtension"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v1, Lcom/microsoft/cll/android/AbstractHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/cll/android/AbstractHandler$1;-><init>(Lcom/microsoft/cll/android/AbstractHandler;Ljava/lang/String;)V

    .line 89
    .local v1, "filter":Ljava/io/FilenameFilter;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/microsoft/cll/android/AbstractHandler;->filePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 90
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 91
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/io/File;

    .line 94
    :cond_0
    return-object v0
.end method

.method protected getFilesByExtensionForDraining(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "fileExtension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/cll/android/IStorage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v2, "fullFiles":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/IStorage;>;"
    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/AbstractHandler;->findExistingFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v1, v5, v4

    .line 61
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Lcom/microsoft/cll/android/FileStorage;

    iget-object v7, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v7, v8, p0}, Lcom/microsoft/cll/android/FileStorage;-><init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V

    .line 62
    .local v3, "storage":Lcom/microsoft/cll/android/IStorage;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-interface {v3}, Lcom/microsoft/cll/android/IStorage;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v3    # "storage":Lcom/microsoft/cll/android/IStorage;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/microsoft/cll/android/AbstractHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v8, "AndroidCll-AbstractHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is in use still"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-object v2
.end method

.method public abstract getFilesForDraining()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/cll/android/IStorage;",
            ">;"
        }
    .end annotation
.end method
