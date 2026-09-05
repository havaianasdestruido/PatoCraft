.class public Lcom/microsoft/cll/android/EventHandler;
.super Lcom/microsoft/cll/android/ScheduledWorker;
.source "EventHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

.field private final cllEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/cll/android/ICllEvents;",
            ">;"
        }
    .end annotation
.end field

.field final criticalHandler:Lcom/microsoft/cll/android/AbstractHandler;

.field private endpoint:Ljava/net/URL;

.field private final logger:Lcom/microsoft/cll/android/ILogger;

.field final normalHandler:Lcom/microsoft/cll/android/AbstractHandler;

.field private sampleId:D

.field private sender:Lcom/microsoft/cll/android/EventSender;

.field private ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/microsoft/cll/android/EventHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/microsoft/cll/android/EventHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/microsoft/cll/android/ClientTelemetry;Ljava/util/List;Lcom/microsoft/cll/android/ILogger;Lcom/microsoft/cll/android/AbstractHandler;Lcom/microsoft/cll/android/AbstractHandler;)V
    .locals 2
    .param p1, "clientTelemetry"    # Lcom/microsoft/cll/android/ClientTelemetry;
    .param p3, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p4, "normalEventHandler"    # Lcom/microsoft/cll/android/AbstractHandler;
    .param p5, "criticalEventAbstractHandler"    # Lcom/microsoft/cll/android/AbstractHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/ClientTelemetry;",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/cll/android/ICllEvents;",
            ">;",
            "Lcom/microsoft/cll/android/ILogger;",
            "Lcom/microsoft/cll/android/AbstractHandler;",
            "Lcom/microsoft/cll/android/AbstractHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "cllEvents":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/ICllEvents;>;"
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->QUEUEDRAININTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/microsoft/cll/android/ScheduledWorker;-><init>(J)V

    .line 18
    const-string v0, "AndroidCll-EventHandler"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->TAG:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    .line 35
    iput-object p2, p0, Lcom/microsoft/cll/android/EventHandler;->cllEvents:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 37
    iput-object p4, p0, Lcom/microsoft/cll/android/EventHandler;->normalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    .line 38
    iput-object p5, p0, Lcom/microsoft/cll/android/EventHandler;->criticalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    .line 39
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/microsoft/cll/android/EventHandler;->sampleId:D

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/cll/android/ClientTelemetry;Ljava/util/List;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;)V
    .locals 2
    .param p1, "clientTelemetry"    # Lcom/microsoft/cll/android/ClientTelemetry;
    .param p3, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p4, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/ClientTelemetry;",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/cll/android/ICllEvents;",
            ">;",
            "Lcom/microsoft/cll/android/ILogger;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "cllEvents":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/ICllEvents;>;"
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->QUEUEDRAININTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/microsoft/cll/android/ScheduledWorker;-><init>(J)V

    .line 18
    const-string v0, "AndroidCll-EventHandler"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->TAG:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    .line 50
    iput-object p2, p0, Lcom/microsoft/cll/android/EventHandler;->cllEvents:Ljava/util/List;

    .line 51
    iput-object p3, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 52
    new-instance v0, Lcom/microsoft/cll/android/CriticalEventHandler;

    invoke-direct {v0, p3, p4, p1}, Lcom/microsoft/cll/android/CriticalEventHandler;-><init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/ClientTelemetry;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->criticalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    .line 53
    new-instance v0, Lcom/microsoft/cll/android/NormalEventHandler;

    invoke-direct {v0, p3, p4, p1}, Lcom/microsoft/cll/android/NormalEventHandler;-><init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/ClientTelemetry;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->normalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    .line 54
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/microsoft/cll/android/EventHandler;->sampleId:D

    .line 55
    return-void
.end method

.method private Filter(Lcom/microsoft/cll/android/SerializedEvent;)Z
    .locals 4
    .param p1, "event"    # Lcom/microsoft/cll/android/SerializedEvent;

    .prologue
    const/4 v0, 0x1

    .line 180
    invoke-virtual {p1}, Lcom/microsoft/cll/android/SerializedEvent;->getSerializedData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 182
    iget-object v1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "AndroidCll-EventHandler"

    const-string v3, "Event is too large"

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_0
    return v0

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/cll/android/EventHandler;->IsUploadEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/EventHandler;->IsInSample(Lcom/microsoft/cll/android/SerializedEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "AndroidCll-EventHandler"

    const-string v3, "Filtered event"

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private IsInSample(Lcom/microsoft/cll/android/SerializedEvent;)Z
    .locals 8
    .param p1, "event"    # Lcom/microsoft/cll/android/SerializedEvent;

    .prologue
    .line 203
    iget-wide v2, p0, Lcom/microsoft/cll/android/EventHandler;->sampleId:D

    const-wide v4, -0x411b074a771c970fL    # -1.0E-5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 206
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/microsoft/cll/android/EventHandler;->sampleId:D

    .line 208
    invoke-virtual {p1}, Lcom/microsoft/cll/android/SerializedEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    .line 214
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "lastDigits":Ljava/lang/String;
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    rem-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/microsoft/cll/android/EventHandler;->sampleId:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v1    # "lastDigits":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "AndroidCll-EventHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sample Id is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/microsoft/cll/android/EventHandler;->sampleId:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " based on deviceId of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_1
    iget-wide v2, p0, Lcom/microsoft/cll/android/EventHandler;->sampleId:D

    invoke-virtual {p1}, Lcom/microsoft/cll/android/SerializedEvent;->getSampleRate()D

    move-result-wide v4

    const-wide v6, 0x3ee4f8b588e368f1L    # 1.0E-5

    add-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 225
    const/4 v2, 0x1

    .line 228
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 217
    .restart local v0    # "deviceId":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private IsUploadEnabled()Z
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->UPLOADENABLED:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsBoolean(Lcom/microsoft/cll/android/SettingsStore$Settings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startEventQueueWriter(Ljava/lang/Runnable;)Z
    .locals 6
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    .line 348
    iget-object v3, p0, Lcom/microsoft/cll/android/EventHandler;->endpoint:Ljava/net/URL;

    if-nez v3, :cond_0

    .line 350
    iget-object v3, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v4, "AndroidCll-EventHandler"

    const-string v5, "No endpoint set"

    invoke-interface {v3, v4, v5}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_0
    return v2

    :cond_0
    move-object v1, p1

    .line 355
    check-cast v1, Lcom/microsoft/cll/android/EventQueueWriter;

    .line 356
    .local v1, "eqw":Lcom/microsoft/cll/android/EventQueueWriter;
    iget-object v3, p0, Lcom/microsoft/cll/android/EventHandler;->sender:Lcom/microsoft/cll/android/EventSender;

    if-eqz v3, :cond_1

    .line 358
    iget-object v3, p0, Lcom/microsoft/cll/android/EventHandler;->sender:Lcom/microsoft/cll/android/EventSender;

    invoke-virtual {v1, v3}, Lcom/microsoft/cll/android/EventQueueWriter;->setSender(Lcom/microsoft/cll/android/EventSender;)V

    .line 363
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/microsoft/cll/android/EventHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 375
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v3, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v4, "AndroidCll-EventHandler"

    const-string v5, "Could not start new thread for EventQueueWriter"

    invoke-interface {v3, v4, v5}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catch_1
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "AndroidCll-EventHandler"

    const-string v4, "Executor is null. Is the cll paused or stopped?"

    invoke-interface {v2, v3, v4}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected addToStorage(Lcom/microsoft/cll/android/SerializedEvent;Ljava/util/List;)Z
    .locals 5
    .param p1, "event"    # Lcom/microsoft/cll/android/SerializedEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/SerializedEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 125
    sget-object v2, Lcom/microsoft/cll/android/EventHandler$1;->$SwitchMap$com$microsoft$cll$android$EventEnums$Persistence:[I

    invoke-virtual {p1}, Lcom/microsoft/cll/android/SerializedEvent;->getPersistence()Lcom/microsoft/cll/android/EventEnums$Persistence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/cll/android/EventEnums$Persistence;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 128
    iget-object v2, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "AndroidCll-EventHandler"

    const-string v4, "Unknown persistence"

    invoke-interface {v2, v3, v4}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-boolean v2, Lcom/microsoft/cll/android/EventHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 135
    :cond_0
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/cll/android/EventHandler;->normalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    invoke-virtual {p1}, Lcom/microsoft/cll/android/SerializedEvent;->getSerializedData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/microsoft/cll/android/AbstractHandler;->add(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/microsoft/cll/android/FileStorage$FileFullException; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "AndroidCll-EventHandler"

    const-string v4, "Could not add event to normal storage"

    invoke-interface {v2, v3, v4}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Lcom/microsoft/cll/android/FileStorage$FileFullException;
    iget-object v2, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "AndroidCll-EventHandler"

    const-string v4, "No space on disk to store events"

    invoke-interface {v2, v3, v4}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 153
    .end local v0    # "e":Lcom/microsoft/cll/android/FileStorage$FileFullException;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/microsoft/cll/android/EventHandler;->criticalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    invoke-virtual {p1}, Lcom/microsoft/cll/android/SerializedEvent;->getSerializedData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/microsoft/cll/android/AbstractHandler;->add(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/microsoft/cll/android/FileStorage$FileFullException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 155
    :catch_2
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "AndroidCll-EventHandler"

    const-string v4, "Could not add event to normal storage"

    invoke-interface {v2, v3, v4}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 162
    .local v0, "e":Lcom/microsoft/cll/android/FileStorage$FileFullException;
    iget-object v2, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "AndroidCll-EventHandler"

    const-string v4, "No space on disk to store events"

    invoke-interface {v2, v3, v4}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected log(Lcom/microsoft/cll/android/SerializedEvent;Ljava/util/List;)Z
    .locals 13
    .param p1, "event"    # Lcom/microsoft/cll/android/SerializedEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/SerializedEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/EventHandler;->Filter(Lcom/microsoft/cll/android/SerializedEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return v10

    .line 103
    :cond_0
    invoke-static {}, Lcom/microsoft/cll/android/EventQueueWriter;->getRunningThreadCount()I

    move-result v0

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXREALTIMETHREADS:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v1}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v1

    if-lt v0, v1, :cond_1

    move v10, v12

    .line 104
    .local v10, "isSenderBusy":Z
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/cll/android/SerializedEvent;->getLatency()Lcom/microsoft/cll/android/EventEnums$Latency;

    move-result-object v0

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyRealtime:Lcom/microsoft/cll/android/EventEnums$Latency;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/microsoft/cll/android/EventHandler;->isPaused:Z

    if-nez v0, :cond_2

    if-nez v10, :cond_2

    .line 106
    new-instance v0, Lcom/microsoft/cll/android/EventQueueWriter;

    iget-object v1, p0, Lcom/microsoft/cll/android/EventHandler;->endpoint:Ljava/net/URL;

    iget-object v4, p0, Lcom/microsoft/cll/android/EventHandler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    iget-object v5, p0, Lcom/microsoft/cll/android/EventHandler;->cllEvents:Ljava/util/List;

    iget-object v6, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v7, p0, Lcom/microsoft/cll/android/EventHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, p0, Lcom/microsoft/cll/android/EventHandler;->ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

    move-object v2, p1

    move-object v3, p2

    move-object v8, p0

    invoke-direct/range {v0 .. v9}, Lcom/microsoft/cll/android/EventQueueWriter;-><init>(Ljava/net/URL;Lcom/microsoft/cll/android/SerializedEvent;Ljava/util/List;Lcom/microsoft/cll/android/ClientTelemetry;Ljava/util/List;Lcom/microsoft/cll/android/ILogger;Ljava/util/concurrent/ScheduledExecutorService;Lcom/microsoft/cll/android/EventHandler;Lcom/microsoft/cll/android/ITicketCallback;)V

    invoke-direct {p0, v0}, Lcom/microsoft/cll/android/EventHandler;->startEventQueueWriter(Ljava/lang/Runnable;)Z

    move-result v11

    .line 108
    .local v11, "result":Z
    if-eqz v11, :cond_2

    move v10, v12

    .line 110
    goto :goto_0

    .line 114
    .end local v11    # "result":Z
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/cll/android/EventHandler;->addToStorage(Lcom/microsoft/cll/android/SerializedEvent;Ljava/util/List;)Z

    move-result v10

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/microsoft/cll/android/EventHandler;->interval:J

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->QUEUEDRAININTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 67
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->QUEUEDRAININTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/microsoft/cll/android/EventHandler;->interval:J

    .line 68
    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v2, p0, Lcom/microsoft/cll/android/EventHandler;->interval:J

    iget-wide v4, p0, Lcom/microsoft/cll/android/EventHandler;->interval:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    .line 72
    :cond_0
    sget-object v0, Lcom/microsoft/cll/android/EventQueueWriter;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-EventHandler"

    const-string v2, "Retry logic in progress, skipping normal send"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/cll/android/EventHandler;->send()Z

    goto :goto_0
.end method

.method protected send()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/microsoft/cll/android/EventHandler;->send(Lcom/microsoft/cll/android/EventEnums$Persistence;)Z

    move-result v0

    return v0
.end method

.method protected send(Lcom/microsoft/cll/android/EventEnums$Persistence;)Z
    .locals 8
    .param p1, "persistence"    # Lcom/microsoft/cll/android/EventEnums$Persistence;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/microsoft/cll/android/EventHandler;->isPaused:Z

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0

    .line 268
    :cond_0
    const/4 v2, 0x0

    .line 270
    .local v2, "storages":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/IStorage;>;"
    if-nez p1, :cond_2

    .line 272
    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-EventHandler"

    const-string v3, "Draining All events"

    invoke-interface {v0, v1, v3}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->normalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/AbstractHandler;->getFilesForDraining()Ljava/util/List;

    move-result-object v2

    .line 274
    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->criticalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/AbstractHandler;->getFilesForDraining()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 297
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 299
    new-instance v0, Lcom/microsoft/cll/android/EventQueueWriter;

    iget-object v1, p0, Lcom/microsoft/cll/android/EventHandler;->endpoint:Ljava/net/URL;

    iget-object v3, p0, Lcom/microsoft/cll/android/EventHandler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    iget-object v4, p0, Lcom/microsoft/cll/android/EventHandler;->cllEvents:Ljava/util/List;

    iget-object v5, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v6, p0, Lcom/microsoft/cll/android/EventHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/microsoft/cll/android/EventHandler;->ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/cll/android/EventQueueWriter;-><init>(Ljava/net/URL;Ljava/util/List;Lcom/microsoft/cll/android/ClientTelemetry;Ljava/util/List;Lcom/microsoft/cll/android/ILogger;Ljava/util/concurrent/ScheduledExecutorService;Lcom/microsoft/cll/android/ITicketCallback;)V

    invoke-direct {p0, v0}, Lcom/microsoft/cll/android/EventHandler;->startEventQueueWriter(Ljava/lang/Runnable;)Z

    move-result v0

    goto :goto_0

    .line 278
    :cond_2
    sget-object v0, Lcom/microsoft/cll/android/EventHandler$1;->$SwitchMap$com$microsoft$cll$android$EventEnums$Persistence:[I

    invoke-virtual {p1}, Lcom/microsoft/cll/android/EventEnums$Persistence;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 291
    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-EventHandler"

    const-string v3, "Unknown persistence"

    invoke-interface {v0, v1, v3}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    sget-boolean v0, Lcom/microsoft/cll/android/EventHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 281
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-EventHandler"

    const-string v3, "Draining normal events"

    invoke-interface {v0, v1, v3}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->normalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/AbstractHandler;->getFilesForDraining()Ljava/util/List;

    move-result-object v2

    .line 283
    goto :goto_1

    .line 286
    :pswitch_1
    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-EventHandler"

    const-string v3, "Draining Critical events"

    invoke-interface {v0, v1, v3}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->criticalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/AbstractHandler;->getFilesForDraining()Ljava/util/List;

    move-result-object v2

    .line 288
    goto :goto_1

    .line 302
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setEndpointUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "endpointUrl"    # Ljava/lang/String;

    .prologue
    .line 313
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/microsoft/cll/android/EventHandler;->endpoint:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/net/MalformedURLException;
    iget-object v1, p0, Lcom/microsoft/cll/android/EventHandler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "AndroidCll-EventHandler"

    const-string v3, "Bad Endpoint URL Form"

    invoke-interface {v1, v2, v3}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setSender(Lcom/microsoft/cll/android/EventSender;)V
    .locals 0
    .param p1, "sender"    # Lcom/microsoft/cll/android/EventSender;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->sender:Lcom/microsoft/cll/android/EventSender;

    .line 328
    return-void
.end method

.method setXuidCallback(Lcom/microsoft/cll/android/ITicketCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/microsoft/cll/android/ITicketCallback;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/microsoft/cll/android/EventHandler;->ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

    .line 339
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/microsoft/cll/android/ScheduledWorker;->stop()V

    .line 85
    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->normalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/AbstractHandler;->close()V

    .line 86
    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->criticalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/AbstractHandler;->close()V

    .line 87
    return-void
.end method

.method synchronize()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/microsoft/cll/android/EventHandler;->normalHandler:Lcom/microsoft/cll/android/AbstractHandler;

    check-cast v0, Lcom/microsoft/cll/android/NormalEventHandler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/NormalEventHandler;->writeQueueToDisk()V

    .line 335
    return-void
.end method
