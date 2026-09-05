.class public Lcom/microsoft/cll/android/EventSerializer;
.super Ljava/lang/Object;
.source "EventSerializer.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final logger:Lcom/microsoft/cll/android/ILogger;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;)V
    .locals 1
    .param p1, "logger"    # Lcom/microsoft/cll/android/ILogger;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "EventSerializer"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventSerializer;->TAG:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/microsoft/cll/android/EventSerializer;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 21
    return-void
.end method


# virtual methods
.method public serialize(Lcom/microsoft/telemetry/IJsonSerializable;)Ljava/lang/String;
    .locals 6
    .param p1, "event"    # Lcom/microsoft/telemetry/IJsonSerializable;

    .prologue
    .line 27
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 30
    .local v2, "writer":Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {p1, v2}, Lcom/microsoft/telemetry/IJsonSerializable;->serialize(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "serialized":Ljava/lang/String;
    iget-object v3, p0, Lcom/microsoft/cll/android/EventSerializer;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v4, "EventSerializer"

    invoke-interface {v3, v4, v1}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-object v1

    .line 31
    .end local v1    # "serialized":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/microsoft/cll/android/EventSerializer;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v4, "EventSerializer"

    const-string v5, "IOException when serializing"

    invoke-interface {v3, v4, v5}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
