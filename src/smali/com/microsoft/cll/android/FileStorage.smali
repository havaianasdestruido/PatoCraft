.class public Lcom/microsoft/cll/android/FileStorage;
.super Ljava/lang/Object;
.source "FileStorage.java"

# interfaces
.implements Lcom/microsoft/cll/android/IStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/cll/android/FileStorage$FileFullException;
    }
.end annotation


# static fields
.field protected static final fileLockList:Lcom/microsoft/cll/android/SynchronizedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/cll/android/SynchronizedArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private eventsWritten:I

.field private filePathAndName:Ljava/lang/String;

.field private fileSize:J

.field private inputFile:Ljava/io/FileReader;

.field private isOpen:Z

.field private isWritable:Z

.field private final logger:Lcom/microsoft/cll/android/ILogger;

.field private outputFile:Ljava/io/FileWriter;

.field private parent:Lcom/microsoft/cll/android/AbstractHandler;

.field private reader:Ljava/io/BufferedReader;

.field private final serializer:Lcom/microsoft/cll/android/EventSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/microsoft/cll/android/SynchronizedArrayList;

    invoke-direct {v0}, Lcom/microsoft/cll/android/SynchronizedArrayList;-><init>()V

    sput-object v0, Lcom/microsoft/cll/android/FileStorage;->fileLockList:Lcom/microsoft/cll/android/SynchronizedArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V
    .locals 2
    .param p1, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p2, "filePathAndName"    # Ljava/lang/String;
    .param p3, "parent"    # Lcom/microsoft/cll/android/AbstractHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "AndroidCll-FileStorage"

    iput-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->TAG:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 64
    new-instance v0, Lcom/microsoft/cll/android/EventSerializer;

    invoke-direct {v0, p1}, Lcom/microsoft/cll/android/EventSerializer;-><init>(Lcom/microsoft/cll/android/ILogger;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/FileStorage;->serializer:Lcom/microsoft/cll/android/EventSerializer;

    .line 65
    iput-object p2, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/microsoft/cll/android/FileStorage;->parent:Lcom/microsoft/cll/android/AbstractHandler;

    .line 68
    sget-object v0, Lcom/microsoft/cll/android/FileStorage;->fileLockList:Lcom/microsoft/cll/android/SynchronizedArrayList;

    invoke-virtual {v0, p2}, Lcom/microsoft/cll/android/SynchronizedArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Could not get lock for file"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/AbstractHandler;)V
    .locals 4
    .param p1, "fileExtension"    # Ljava/lang/String;
    .param p2, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "parent"    # Lcom/microsoft/cll/android/AbstractHandler;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v1, "AndroidCll-FileStorage"

    iput-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->TAG:Ljava/lang/String;

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/microsoft/cll/android/FileStorage;->eventsWritten:I

    .line 38
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/microsoft/cll/android/FileStorage;->fileSize:J

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 41
    new-instance v1, Lcom/microsoft/cll/android/EventSerializer;

    invoke-direct {v1, p2}, Lcom/microsoft/cll/android/EventSerializer;-><init>(Lcom/microsoft/cll/android/ILogger;)V

    iput-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->serializer:Lcom/microsoft/cll/android/EventSerializer;

    .line 42
    iput-object p4, p0, Lcom/microsoft/cll/android/FileStorage;->parent:Lcom/microsoft/cll/android/AbstractHandler;

    .line 44
    const/4 v0, 0x1

    .line 46
    .local v0, "tries":I
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/cll/android/FileStorage;->openFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 50
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 51
    const-string v1, "AndroidCll-FileStorage"

    const-string v2, "Could not create a file"

    invoke-interface {p2, v1, v2}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    return-void
.end method

.method private getLock()Z
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lcom/microsoft/cll/android/FileStorage;->fileLockList:Lcom/microsoft/cll/android/SynchronizedArrayList;

    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/cll/android/SynchronizedArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private openFile()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 239
    invoke-direct {p0}, Lcom/microsoft/cll/android/FileStorage;->getLock()Z

    move-result v3

    .line 241
    .local v3, "lockResult":Z
    if-nez v3, :cond_0

    .line 242
    iget-object v5, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "AndroidCll-FileStorage"

    const-string v7, "Could not get lock for file"

    invoke-interface {v5, v6, v7}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_0
    return v4

    .line 246
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 250
    .local v0, "doesFileExist":Z
    if-eqz v0, :cond_1

    .line 251
    iput-boolean v4, p0, Lcom/microsoft/cll/android/FileStorage;->isWritable:Z

    .line 253
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/microsoft/cll/android/FileStorage;->inputFile:Ljava/io/FileReader;

    .line 254
    new-instance v6, Ljava/io/BufferedReader;

    iget-object v7, p0, Lcom/microsoft/cll/android/FileStorage;->inputFile:Ljava/io/FileReader;

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v6, p0, Lcom/microsoft/cll/android/FileStorage;->reader:Ljava/io/BufferedReader;

    .line 255
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/microsoft/cll/android/FileStorage;->fileSize:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_1
    iput-boolean v5, p0, Lcom/microsoft/cll/android/FileStorage;->isOpen:Z

    move v4, v5

    .line 273
    goto :goto_0

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "AndroidCll-FileStorage"

    const-string v7, "Event file was not found"

    invoke-interface {v5, v6, v7}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    iput-boolean v5, p0, Lcom/microsoft/cll/android/FileStorage;->isWritable:Z

    .line 262
    iget-object v6, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v7, "AndroidCll-FileStorage"

    const-string v8, "Creating new file"

    invoke-interface {v6, v7, v8}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :try_start_1
    new-instance v6, Ljava/io/FileWriter;

    iget-object v7, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/microsoft/cll/android/FileStorage;->outputFile:Ljava/io/FileWriter;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 266
    :catch_1
    move-exception v1

    .line 267
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "AndroidCll-FileStorage"

    const-string v7, "Error opening file"

    invoke-interface {v5, v6, v7}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/microsoft/cll/android/Tuple;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/Tuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/cll/android/FileStorage$FileFullException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "serializedEvent":Lcom/microsoft/cll/android/Tuple;, "Lcom/microsoft/cll/android/Tuple<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-boolean v1, p0, Lcom/microsoft/cll/android/FileStorage;->isOpen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/microsoft/cll/android/FileStorage;->isWritable:Z

    if-nez v1, :cond_1

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "AndroidCll-FileStorage"

    const-string v3, "This file is not open or not writable"

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/FileStorage;->canAdd(Lcom/microsoft/cll/android/Tuple;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 87
    new-instance v1, Lcom/microsoft/cll/android/FileStorage$FileFullException;

    const-string v2, "The file is already full!"

    invoke-direct {v1, p0, v2}, Lcom/microsoft/cll/android/FileStorage$FileFullException;-><init>(Lcom/microsoft/cll/android/FileStorage;Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_2
    iget-object v1, p1, Lcom/microsoft/cll/android/Tuple;->b:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 92
    iget-object v1, p1, Lcom/microsoft/cll/android/Tuple;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/microsoft/cll/android/FileStorage;->outputFile:Ljava/io/FileWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    .end local v0    # "id":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/microsoft/cll/android/FileStorage;->outputFile:Ljava/io/FileWriter;

    iget-object v1, p1, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 98
    iget v1, p0, Lcom/microsoft/cll/android/FileStorage;->eventsWritten:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/microsoft/cll/android/FileStorage;->eventsWritten:I

    .line 99
    iget-wide v2, p0, Lcom/microsoft/cll/android/FileStorage;->fileSize:J

    iget-object v1, p1, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/microsoft/cll/android/FileStorage;->fileSize:J

    goto :goto_0
.end method

.method public add(Lcom/microsoft/telemetry/IJsonSerializable;)V
    .locals 3
    .param p1, "event"    # Lcom/microsoft/telemetry/IJsonSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/cll/android/FileStorage$FileFullException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->serializer:Lcom/microsoft/cll/android/EventSerializer;

    invoke-virtual {v1, p1}, Lcom/microsoft/cll/android/EventSerializer;->serialize(Lcom/microsoft/telemetry/IJsonSerializable;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "serializedEvent":Ljava/lang/String;
    new-instance v1, Lcom/microsoft/cll/android/Tuple;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/microsoft/cll/android/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/microsoft/cll/android/FileStorage;->add(Lcom/microsoft/cll/android/Tuple;)V

    .line 77
    return-void
.end method

.method public canAdd(Lcom/microsoft/cll/android/Tuple;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/Tuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "event":Lcom/microsoft/cll/android/Tuple;, "Lcom/microsoft/cll/android/Tuple<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 110
    iget-boolean v1, p0, Lcom/microsoft/cll/android/FileStorage;->isOpen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/microsoft/cll/android/FileStorage;->isWritable:Z

    if-nez v1, :cond_1

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "AndroidCll-FileStorage"

    const-string v4, "This file is not open or not writable"

    invoke-interface {v1, v3, v4}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 116
    :goto_0
    return v1

    .line 115
    :cond_1
    iget-object v1, p1, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 116
    .local v0, "serializedSize":I
    iget v1, p0, Lcom/microsoft/cll/android/FileStorage;->eventsWritten:I

    sget-object v3, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSPERPOST:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v3}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v3

    if-ge v1, v3, :cond_2

    int-to-long v4, v0

    iget-wide v6, p0, Lcom/microsoft/cll/android/FileStorage;->fileSize:J

    add-long/2addr v4, v6

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v1}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public canAdd(Lcom/microsoft/telemetry/IJsonSerializable;)Z
    .locals 3
    .param p1, "event"    # Lcom/microsoft/telemetry/IJsonSerializable;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->serializer:Lcom/microsoft/cll/android/EventSerializer;

    invoke-virtual {v1, p1}, Lcom/microsoft/cll/android/EventSerializer;->serialize(Lcom/microsoft/telemetry/IJsonSerializable;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "serializedEvent":Ljava/lang/String;
    new-instance v1, Lcom/microsoft/cll/android/Tuple;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/microsoft/cll/android/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/microsoft/cll/android/FileStorage;->canAdd(Lcom/microsoft/cll/android/Tuple;)Z

    move-result v1

    return v1
.end method

.method public close()V
    .locals 4

    .prologue
    .line 213
    iget-boolean v1, p0, Lcom/microsoft/cll/android/FileStorage;->isOpen:Z

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/microsoft/cll/android/FileStorage;->flush()V

    .line 216
    sget-object v1, Lcom/microsoft/cll/android/FileStorage;->fileLockList:Lcom/microsoft/cll/android/SynchronizedArrayList;

    iget-object v2, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/microsoft/cll/android/SynchronizedArrayList;->remove(Ljava/lang/Object;)Z

    .line 219
    :try_start_0
    iget-boolean v1, p0, Lcom/microsoft/cll/android/FileStorage;->isWritable:Z

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->outputFile:Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 227
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/microsoft/cll/android/FileStorage;->isOpen:Z

    .line 233
    :cond_0
    :goto_1
    return-void

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->inputFile:Ljava/io/FileReader;

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 224
    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "AndroidCll-FileStorage"

    const-string v3, "Error when closing file"

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public discard()V
    .locals 4

    .prologue
    .line 183
    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "AndroidCll-FileStorage"

    const-string v3, "Discarding file"

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/microsoft/cll/android/FileStorage;->close()V

    .line 187
    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->parent:Lcom/microsoft/cll/android/AbstractHandler;

    invoke-virtual {v1, p0}, Lcom/microsoft/cll/android/AbstractHandler;->dispose(Lcom/microsoft/cll/android/IStorage;)V

    .line 189
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 191
    return-void
.end method

.method public drain()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
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

    .prologue
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "drainedQueue":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/Tuple<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    iget-boolean v4, p0, Lcom/microsoft/cll/android/FileStorage;->isOpen:Z

    if-nez v4, :cond_0

    .line 125
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/cll/android/FileStorage;->openFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 160
    :goto_0
    return-object v0

    .line 130
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v5, "AndroidCll-FileStorage"

    const-string v6, "Error opening file"

    invoke-interface {v4, v5, v6}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/microsoft/cll/android/FileStorage;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "input":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v2, "ids":Ljava/util/List;
    :goto_1
    if-eqz v3, :cond_3

    .line 142
    const-string v4, "x:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :goto_2
    iget-object v4, p0, Lcom/microsoft/cll/android/FileStorage;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 145
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 146
    new-instance v4, Lcom/microsoft/cll/android/Tuple;

    invoke-direct {v4, v3, v2}, Lcom/microsoft/cll/android/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "ids":Ljava/util/List;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "ids":Ljava/util/List;
    goto :goto_2

    .line 149
    :cond_2
    new-instance v4, Lcom/microsoft/cll/android/Tuple;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/microsoft/cll/android/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 155
    .end local v2    # "ids":Ljava/util/List;
    .end local v3    # "input":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 156
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v5, "AndroidCll-FileStorage"

    const-string v6, "Error reading from input file"

    invoke-interface {v4, v5, v6}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v4, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v5, "AndroidCll-FileStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " events from file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 4

    .prologue
    .line 197
    iget-boolean v1, p0, Lcom/microsoft/cll/android/FileStorage;->isOpen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/microsoft/cll/android/FileStorage;->isWritable:Z

    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->outputFile:Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "AndroidCll-FileStorage"

    const-string v3, "Could not flush file"

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public size()J
    .locals 4

    .prologue
    .line 169
    iget-boolean v1, p0, Lcom/microsoft/cll/android/FileStorage;->isOpen:Z

    if-nez v1, :cond_0

    .line 170
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/microsoft/cll/android/FileStorage;->filePathAndName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 174
    .end local v0    # "f":Ljava/io/File;
    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/microsoft/cll/android/FileStorage;->fileSize:J

    goto :goto_0
.end method
