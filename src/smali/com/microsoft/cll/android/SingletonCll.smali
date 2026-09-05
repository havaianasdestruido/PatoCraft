.class public Lcom/microsoft/cll/android/SingletonCll;
.super Ljava/lang/Object;
.source "SingletonCll.java"

# interfaces
.implements Lcom/microsoft/cll/android/ISingletonCll;


# static fields
.field private static Instance:Lcom/microsoft/cll/android/SingletonCll;

.field private static InstanceLock:Ljava/lang/Object;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected final clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

.field protected final cllEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/cll/android/ICllEvents;",
            ">;"
        }
    .end annotation
.end field

.field public correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

.field protected eventHandler:Lcom/microsoft/cll/android/EventHandler;

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected logger:Lcom/microsoft/cll/android/ILogger;

.field protected partA:Lcom/microsoft/cll/android/PartA;

.field protected settingsSync:Lcom/microsoft/cll/android/SettingsSync;

.field protected snapshotScheduler:Lcom/microsoft/cll/android/SnapshotScheduler;

.field private ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/microsoft/cll/android/SingletonCll;->InstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/PartA;Lcom/microsoft/cll/android/CorrelationVector;)V
    .locals 4
    .param p1, "iKey"    # Ljava/lang/String;
    .param p2, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p3, "eventDir"    # Ljava/lang/String;
    .param p4, "partA"    # Lcom/microsoft/cll/android/PartA;
    .param p5, "correlationVector"    # Lcom/microsoft/cll/android/CorrelationVector;

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "AndroidCll-SingletonCll"

    iput-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->TAG:Ljava/lang/String;

    .line 62
    if-eqz p1, :cond_0

    const-string v0, ""

    if-ne p1, v0, :cond_1

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iKey cannot be null or \"\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    sget-object v0, Lcom/microsoft/cll/android/Verbosity;->NONE:Lcom/microsoft/cll/android/Verbosity;

    invoke-interface {p2, v0}, Lcom/microsoft/cll/android/ILogger;->setVerbosity(Lcom/microsoft/cll/android/Verbosity;)V

    .line 69
    iput-object p5, p0, Lcom/microsoft/cll/android/SingletonCll;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    .line 70
    iput-object p2, p0, Lcom/microsoft/cll/android/SingletonCll;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 71
    iput-object p4, p0, Lcom/microsoft/cll/android/SingletonCll;->partA:Lcom/microsoft/cll/android/PartA;

    .line 72
    new-instance v0, Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-direct {v0}, Lcom/microsoft/cll/android/ClientTelemetry;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->cllEvents:Ljava/util/List;

    .line 74
    new-instance v0, Lcom/microsoft/cll/android/EventHandler;

    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    iget-object v2, p0, Lcom/microsoft/cll/android/SingletonCll;->cllEvents:Ljava/util/List;

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/microsoft/cll/android/EventHandler;-><init>(Lcom/microsoft/cll/android/ClientTelemetry;Ljava/util/List;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v0, Lcom/microsoft/cll/android/SettingsSync;

    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-direct {v0, v1, p2, p1, p4}, Lcom/microsoft/cll/android/SettingsSync;-><init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/PartA;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    .line 79
    new-instance v0, Lcom/microsoft/cll/android/SnapshotScheduler;

    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-direct {v0, v1, p2, p0}, Lcom/microsoft/cll/android/SnapshotScheduler;-><init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Lcom/microsoft/cll/android/ISingletonCll;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->snapshotScheduler:Lcom/microsoft/cll/android/SnapshotScheduler;

    .line 81
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->VORTEXPRODURL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsString(Lcom/microsoft/cll/android/SettingsStore$Settings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/cll/android/SingletonCll;->setEndpointUrl(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/PartA;Lcom/microsoft/cll/android/CorrelationVector;)Lcom/microsoft/cll/android/ISingletonCll;
    .locals 7
    .param p0, "iKey"    # Ljava/lang/String;
    .param p1, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p2, "eventDir"    # Ljava/lang/String;
    .param p3, "partA"    # Lcom/microsoft/cll/android/PartA;
    .param p4, "correlationVector"    # Lcom/microsoft/cll/android/CorrelationVector;

    .prologue
    .line 44
    sget-object v0, Lcom/microsoft/cll/android/SingletonCll;->Instance:Lcom/microsoft/cll/android/SingletonCll;

    if-nez v0, :cond_1

    .line 46
    sget-object v6, Lcom/microsoft/cll/android/SingletonCll;->InstanceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 48
    :try_start_0
    sget-object v0, Lcom/microsoft/cll/android/SingletonCll;->Instance:Lcom/microsoft/cll/android/SingletonCll;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/microsoft/cll/android/SingletonCll;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/cll/android/SingletonCll;-><init>(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/PartA;Lcom/microsoft/cll/android/CorrelationVector;)V

    sput-object v0, Lcom/microsoft/cll/android/SingletonCll;->Instance:Lcom/microsoft/cll/android/SingletonCll;

    .line 52
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    sget-object v0, Lcom/microsoft/cll/android/SingletonCll;->Instance:Lcom/microsoft/cll/android/SingletonCll;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public SubscribeCllEvents(Lcom/microsoft/cll/android/ICllEvents;)V
    .locals 0
    .param p1, "cllEvents"    # Lcom/microsoft/cll/android/ICllEvents;

    .prologue
    .line 274
    return-void
.end method

.method public getAppUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->partA:Lcom/microsoft/cll/android/PartA;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/PartA;->getAppUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public log(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V
    .locals 11
    .param p1, "event"    # Lcom/microsoft/telemetry/Base;
    .param p2, "latency"    # Lcom/microsoft/cll/android/EventEnums$Latency;
    .param p3, "persistence"    # Lcom/microsoft/cll/android/EventEnums$Persistence;
    .param p5, "sampleRate"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/telemetry/Base;",
            "Lcom/microsoft/cll/android/EventEnums$Latency;",
            "Lcom/microsoft/cll/android/EventEnums$Persistence;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;D",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p4, "sensitivity":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/cll/android/EventEnums$Sensitivity;>;"
    .local p7, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    .line 208
    iget-object v3, p0, Lcom/microsoft/cll/android/SingletonCll;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v4, "AndroidCll-SingletonCll"

    const-string v5, "Cll must be started before logging events"

    invoke-interface {v3, v4, v5}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 212
    :cond_0
    if-eqz p7, :cond_1

    iget-object v3, p0, Lcom/microsoft/cll/android/SingletonCll;->ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

    if-nez v3, :cond_1

    .line 214
    iget-object v3, p0, Lcom/microsoft/cll/android/SingletonCll;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v4, "AndroidCll-SingletonCll"

    const-string v5, "You must set the ticket callback if you want to log ids with your events"

    invoke-interface {v3, v4, v5}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v3, p0, Lcom/microsoft/cll/android/SingletonCll;->partA:Lcom/microsoft/cll/android/PartA;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/microsoft/cll/android/PartA;->populate(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)Lcom/microsoft/cll/android/SerializedEvent;

    move-result-object v2

    .line 219
    .local v2, "serializedEvent":Lcom/microsoft/cll/android/SerializedEvent;
    iget-object v3, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    move-object/from16 v0, p7

    invoke-virtual {v3, v2, v0}, Lcom/microsoft/cll/android/EventHandler;->log(Lcom/microsoft/cll/android/SerializedEvent;Ljava/util/List;)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/EventHandler;->pause()V

    .line 148
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/SettingsSync;->pause()V

    .line 149
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->snapshotScheduler:Lcom/microsoft/cll/android/SnapshotScheduler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/SnapshotScheduler;->pause()V

    .line 150
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 152
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 157
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->THREADSTOUSEWITHEXECUTOR:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 173
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->snapshotScheduler:Lcom/microsoft/cll/android/SnapshotScheduler;

    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Lcom/microsoft/cll/android/SnapshotScheduler;->resume(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 174
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Lcom/microsoft/cll/android/EventHandler;->resume(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 175
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Lcom/microsoft/cll/android/SettingsSync;->resume(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 177
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    :cond_1
    return-void
.end method

.method public send()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/EventHandler;->send()Z

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-SingletonCll"

    const-string v2, "Cannot send while the CLL is stopped."

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAppUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->partA:Lcom/microsoft/cll/android/PartA;

    invoke-virtual {v0, p1}, Lcom/microsoft/cll/android/PartA;->setAppUserId(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public setDebugVerbosity(Lcom/microsoft/cll/android/Verbosity;)V
    .locals 1
    .param p1, "verbosity"    # Lcom/microsoft/cll/android/Verbosity;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-interface {v0, p1}, Lcom/microsoft/cll/android/ILogger;->setVerbosity(Lcom/microsoft/cll/android/Verbosity;)V

    .line 191
    return-void
.end method

.method public setEndpointUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    invoke-virtual {v0, p1}, Lcom/microsoft/cll/android/EventHandler;->setEndpointUrl(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method protected setEventSender(Lcom/microsoft/cll/android/EventSender;)V
    .locals 1
    .param p1, "sender"    # Lcom/microsoft/cll/android/EventSender;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    invoke-virtual {v0, p1}, Lcom/microsoft/cll/android/EventHandler;->setSender(Lcom/microsoft/cll/android/EventSender;)V

    .line 283
    return-void
.end method

.method public setExperimentId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->partA:Lcom/microsoft/cll/android/PartA;

    invoke-virtual {v0, p1}, Lcom/microsoft/cll/android/PartA;->setExpId(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public setXuidCallback(Lcom/microsoft/cll/android/ITicketCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/microsoft/cll/android/ITicketCallback;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/microsoft/cll/android/SingletonCll;->ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

    .line 296
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-SingletonCll"

    const-string v2, "Xuid callback must be set before start."

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    invoke-virtual {v0, p1}, Lcom/microsoft/cll/android/EventHandler;->setXuidCallback(Lcom/microsoft/cll/android/ITicketCallback;)V

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 96
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->snapshotScheduler:Lcom/microsoft/cll/android/SnapshotScheduler;

    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Lcom/microsoft/cll/android/SnapshotScheduler;->start(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 97
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Lcom/microsoft/cll/android/EventHandler;->start(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 98
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Lcom/microsoft/cll/android/SettingsSync;->start(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 100
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 105
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    invoke-virtual {v1}, Lcom/microsoft/cll/android/EventHandler;->stop()V

    .line 119
    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    invoke-virtual {v1}, Lcom/microsoft/cll/android/SettingsSync;->stop()V

    .line 120
    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->snapshotScheduler:Lcom/microsoft/cll/android/SnapshotScheduler;

    invoke-virtual {v1}, Lcom/microsoft/cll/android/SnapshotScheduler;->stop()V

    .line 121
    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 123
    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->cllEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/cll/android/ICllEvents;

    .line 128
    .local v0, "event":Lcom/microsoft/cll/android/ICllEvents;
    invoke-interface {v0}, Lcom/microsoft/cll/android/ICllEvents;->stopped()V

    goto :goto_0

    .line 131
    .end local v0    # "event":Lcom/microsoft/cll/android/ICllEvents;
    :cond_1
    iget-object v1, p0, Lcom/microsoft/cll/android/SingletonCll;->isChanging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    :cond_2
    return-void
.end method

.method public synchronize()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->eventHandler:Lcom/microsoft/cll/android/EventHandler;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/EventHandler;->synchronize()V

    .line 268
    return-void
.end method

.method public useLegacyCS(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 254
    iget-object v0, p0, Lcom/microsoft/cll/android/SingletonCll;->partA:Lcom/microsoft/cll/android/PartA;

    invoke-virtual {v0, p1}, Lcom/microsoft/cll/android/PartA;->useLegacyCS(Z)V

    .line 255
    return-void
.end method
