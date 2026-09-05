.class public Lcom/microsoft/cll/android/BondJsonSerializer;
.super Ljava/lang/Object;
.source "BondJsonSerializer.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final logger:Lcom/microsoft/cll/android/ILogger;

.field private final resultString:Ljava/lang/StringBuilder;

.field private final writer:Lcom/microsoft/bond/ProtocolWriter;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;)V
    .locals 2
    .param p1, "logger"    # Lcom/microsoft/cll/android/ILogger;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "AndroidCll-EventSerializer"

    iput-object v0, p0, Lcom/microsoft/cll/android/BondJsonSerializer;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/BondJsonSerializer;->resultString:Ljava/lang/StringBuilder;

    .line 19
    new-instance v0, Lcom/microsoft/cll/android/JsonProtocol;

    iget-object v1, p0, Lcom/microsoft/cll/android/BondJsonSerializer;->resultString:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Lcom/microsoft/cll/android/JsonProtocol;-><init>(Ljava/lang/StringBuilder;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/BondJsonSerializer;->writer:Lcom/microsoft/bond/ProtocolWriter;

    .line 20
    iput-object p1, p0, Lcom/microsoft/cll/android/BondJsonSerializer;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized serialize(Lcom/microsoft/bond/BondSerializable;)Ljava/lang/String;
    .locals 5
    .param p1, "event"    # Lcom/microsoft/bond/BondSerializable;

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/microsoft/cll/android/BondJsonSerializer;->writer:Lcom/microsoft/bond/ProtocolWriter;

    invoke-interface {p1, v2}, Lcom/microsoft/bond/BondSerializable;->write(Lcom/microsoft/bond/ProtocolWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/microsoft/cll/android/BondJsonSerializer;->writer:Lcom/microsoft/bond/ProtocolWriter;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "serialized":Ljava/lang/String;
    iget-object v2, p0, Lcom/microsoft/cll/android/BondJsonSerializer;->resultString:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit p0

    return-object v1

    .line 29
    .end local v1    # "serialized":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v2, p0, Lcom/microsoft/cll/android/BondJsonSerializer;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "AndroidCll-EventSerializer"

    const-string v4, "IOException when serializing"

    invoke-interface {v2, v3, v4}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 28
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
