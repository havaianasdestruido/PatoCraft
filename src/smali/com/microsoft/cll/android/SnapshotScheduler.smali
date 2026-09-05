.class public Lcom/microsoft/cll/android/SnapshotScheduler;
.super Lcom/microsoft/cll/android/ScheduledWorker;
.source "SnapshotScheduler.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

.field private final cll:Lcom/microsoft/cll/android/ISingletonCll;

.field private final logger:Lcom/microsoft/cll/android/ILogger;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Lcom/microsoft/cll/android/ISingletonCll;)V
    .locals 2
    .param p1, "clientTelemetry"    # Lcom/microsoft/cll/android/ClientTelemetry;
    .param p2, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p3, "cll"    # Lcom/microsoft/cll/android/ISingletonCll;

    .prologue
    .line 23
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->SNAPSHOTSCHEDULEINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsLong(Lcom/microsoft/cll/android/SettingsStore$Settings;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/microsoft/cll/android/ScheduledWorker;-><init>(J)V

    .line 17
    const-string v0, "AndroidCll-SnapshotScheduler"

    iput-object v0, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->TAG:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    .line 25
    iput-object p1, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    .line 26
    iput-object p2, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 27
    return-void
.end method

.method private recordStatistics()V
    .locals 9

    .prologue
    .line 61
    iget-object v0, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/ClientTelemetry;->GetEvent()LMicrosoft/Android/LoggingLibrary/Snapshot;

    move-result-object v2

    .line 62
    .local v2, "snapshot":LMicrosoft/Android/LoggingLibrary/Snapshot;
    iget-object v1, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    sget-object v3, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyUnspecified:Lcom/microsoft/cll/android/EventEnums$Latency;

    sget-object v4, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceUnspecified:Lcom/microsoft/cll/android/EventEnums$Persistence;

    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityUnspecified:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/microsoft/cll/android/ISingletonCll;->log(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V

    .line 66
    iget-object v0, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {v0}, Lcom/microsoft/cll/android/ClientTelemetry;->Reset()V

    .line 67
    return-void
.end method


# virtual methods
.method public resume(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 7
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 41
    iget-wide v2, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->interval:J

    iget-wide v4, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->interval:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->isPaused:Z

    .line 43
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 47
    iget-object v0, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-SnapshotScheduler"

    const-string v2, "Uploading snapshot"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-wide v0, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->interval:J

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->SNAPSHOTSCHEDULEINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 52
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->SNAPSHOTSCHEDULEINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->interval:J

    .line 53
    iget-object v0, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v2, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->interval:J

    iget-wide v4, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->interval:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/cll/android/SnapshotScheduler;->recordStatistics()V

    .line 57
    return-void
.end method

.method public start(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 7
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    iget-wide v2, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->interval:J

    iget-wide v4, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->interval:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/SnapshotScheduler;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    .line 36
    return-void
.end method
