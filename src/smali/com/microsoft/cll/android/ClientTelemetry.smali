.class public Lcom/microsoft/cll/android/ClientTelemetry;
.super Ljava/lang/Object;
.source "ClientTelemetry.java"


# instance fields
.field private settingsCallLatencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected snapshot:LMs/Telemetry/CllHeartBeat;

.field private vortexCallLatencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, LMs/Telemetry/CllHeartBeat;

    invoke-direct {v0}, LMs/Telemetry/CllHeartBeat;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->settingsCallLatencies:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->vortexCallLatencies:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p0}, Lcom/microsoft/cll/android/ClientTelemetry;->Reset()V

    .line 26
    return-void
.end method


# virtual methods
.method protected GetEvent()LMicrosoft/Android/LoggingLibrary/Snapshot;
    .locals 2

    .prologue
    .line 29
    new-instance v0, LMicrosoft/Android/LoggingLibrary/Snapshot;

    invoke-direct {v0}, LMicrosoft/Android/LoggingLibrary/Snapshot;-><init>()V

    .line 30
    .local v0, "snapshotEvent":LMicrosoft/Android/LoggingLibrary/Snapshot;
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v0, v1}, LMicrosoft/Android/LoggingLibrary/Snapshot;->setBaseData(Lcom/microsoft/telemetry/Domain;)V

    .line 31
    return-object v0
.end method

.method protected IncrementEventsDroppedDueToQuota()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1}, LMs/Telemetry/CllHeartBeat;->getQuotaDropCount()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 78
    .local v0, "count":I
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v0}, LMs/Telemetry/CllHeartBeat;->setQuotaDropCount(I)V

    .line 79
    return-void
.end method

.method protected IncrementEventsQueuedForUpload()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementEventsQueuedForUpload(I)V

    .line 64
    return-void
.end method

.method protected IncrementEventsQueuedForUpload(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 67
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1}, LMs/Telemetry/CllHeartBeat;->getEventsQueued()I

    move-result v1

    add-int v0, v1, p1

    .line 68
    .local v0, "queueCount":I
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v0}, LMs/Telemetry/CllHeartBeat;->setEventsQueued(I)V

    .line 69
    return-void
.end method

.method protected IncrementLogFailures()V
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1}, LMs/Telemetry/CllHeartBeat;->getLogFailures()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 73
    .local v0, "errorCount":I
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v0}, LMs/Telemetry/CllHeartBeat;->setLogFailures(I)V

    .line 74
    return-void
.end method

.method protected IncrementRejectDropCount(I)V
    .locals 2
    .param p1, "numberOfEventsDropped"    # I

    .prologue
    .line 170
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1}, LMs/Telemetry/CllHeartBeat;->getRejectDropCount()I

    move-result v1

    add-int v0, v1, p1

    .line 171
    .local v0, "dropped":I
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v0}, LMs/Telemetry/CllHeartBeat;->setRejectDropCount(I)V

    .line 172
    return-void
.end method

.method protected IncrementSettingsHttpAttempts()V
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1}, LMs/Telemetry/CllHeartBeat;->getSettingsHttpAttempts()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 83
    .local v0, "attempts":I
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v0}, LMs/Telemetry/CllHeartBeat;->setSettingsHttpAttempts(I)V

    .line 84
    return-void
.end method

.method protected IncrementSettingsHttpFailures(I)V
    .locals 6
    .param p1, "errorCode"    # I

    .prologue
    const/16 v5, 0x1f4

    .line 112
    iget-object v4, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v4}, LMs/Telemetry/CllHeartBeat;->getSettingsHttpFailures()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 113
    .local v0, "failures":I
    iget-object v4, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v4, v0}, LMs/Telemetry/CllHeartBeat;->setSettingsHttpFailures(I)V

    .line 115
    const/16 v4, 0x190

    if-lt p1, v4, :cond_0

    if-ge p1, v5, :cond_0

    .line 116
    iget-object v4, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v4}, LMs/Telemetry/CllHeartBeat;->getSettingsFailures4xx()I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 117
    .local v2, "fourHunredFailures":I
    iget-object v4, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v4, v2}, LMs/Telemetry/CllHeartBeat;->setSettingsFailures4xx(I)V

    .line 120
    .end local v2    # "fourHunredFailures":I
    :cond_0
    if-lt p1, v5, :cond_1

    const/16 v4, 0x258

    if-ge p1, v4, :cond_1

    .line 121
    iget-object v4, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v4}, LMs/Telemetry/CllHeartBeat;->getSettingsFailures5xx()I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 122
    .local v1, "fiveHunredFailures":I
    iget-object v4, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v4, v1}, LMs/Telemetry/CllHeartBeat;->setSettingsFailures5xx(I)V

    .line 125
    .end local v1    # "fiveHunredFailures":I
    :cond_1
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    .line 126
    iget-object v4, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v4}, LMs/Telemetry/CllHeartBeat;->getSettingsFailuresTimeout()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 127
    .local v3, "timeoutFailures":I
    iget-object v4, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v4, v3}, LMs/Telemetry/CllHeartBeat;->setSettingsFailuresTimeout(I)V

    .line 129
    .end local v3    # "timeoutFailures":I
    :cond_2
    return-void
.end method

.method protected IncrementVortexHttpAttempts()V
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1}, LMs/Telemetry/CllHeartBeat;->getVortexHttpAttempts()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 88
    .local v0, "failures":I
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v0}, LMs/Telemetry/CllHeartBeat;->setVortexHttpAttempts(I)V

    .line 89
    return-void
.end method

.method protected IncrementVortexHttpFailures(I)V
    .locals 6
    .param p1, "errorCode"    # I

    .prologue
    const/16 v5, 0x1f4

    .line 92
    iget-object v4, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v4}, LMs/Telemetry/CllHeartBeat;->getVortexHttpFailures()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 93
    .local v0, "failures":I
    iget-object v4, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v4, v0}, LMs/Telemetry/CllHeartBeat;->setVortexHttpFailures(I)V

    .line 95
    const/16 v4, 0x190

    if-lt p1, v4, :cond_0

    if-ge p1, v5, :cond_0

    .line 96
    iget-object v4, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v4}, LMs/Telemetry/CllHeartBeat;->getVortexFailures4xx()I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 97
    .local v2, "fourHundredFailures":I
    iget-object v4, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v4, v2}, LMs/Telemetry/CllHeartBeat;->setVortexFailures4xx(I)V

    .line 100
    .end local v2    # "fourHundredFailures":I
    :cond_0
    if-lt p1, v5, :cond_1

    const/16 v4, 0x258

    if-ge p1, v4, :cond_1

    .line 101
    iget-object v4, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v4}, LMs/Telemetry/CllHeartBeat;->getVortexFailures5xx()I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 102
    .local v1, "fiveHundredFailures":I
    iget-object v4, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v4, v1}, LMs/Telemetry/CllHeartBeat;->setVortexFailures5xx(I)V

    .line 105
    .end local v1    # "fiveHundredFailures":I
    :cond_1
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    .line 106
    iget-object v4, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v4}, LMs/Telemetry/CllHeartBeat;->getVortexFailuresTimeout()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 107
    .local v3, "timeoutFailures":I
    iget-object v4, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v4, v3}, LMs/Telemetry/CllHeartBeat;->setVortexFailuresTimeout(I)V

    .line 109
    .end local v3    # "timeoutFailures":I
    :cond_2
    return-void
.end method

.method protected Reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 36
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 37
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LMs/Telemetry/CllHeartBeat;->setLastHeartBeat(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setEventsQueued(I)V

    .line 39
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setLogFailures(I)V

    .line 40
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setQuotaDropCount(I)V

    .line 41
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setRejectDropCount(I)V

    .line 42
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setVortexHttpAttempts(I)V

    .line 43
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setVortexHttpFailures(I)V

    .line 44
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, LMs/Telemetry/CllHeartBeat;->setCacheUsagePercent(D)V

    .line 45
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setAvgVortexLatencyMs(I)V

    .line 46
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setMaxVortexLatencyMs(I)V

    .line 47
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setSettingsHttpAttempts(I)V

    .line 48
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setSettingsHttpFailures(I)V

    .line 49
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setAvgSettingsLatencyMs(I)V

    .line 50
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setMaxSettingsLatencyMs(I)V

    .line 51
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setVortexFailures4xx(I)V

    .line 52
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setVortexFailures5xx(I)V

    .line 53
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setVortexFailuresTimeout(I)V

    .line 54
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setSettingsFailures4xx(I)V

    .line 55
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setSettingsFailures5xx(I)V

    .line 56
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v1, v4}, LMs/Telemetry/CllHeartBeat;->setSettingsFailuresTimeout(I)V

    .line 58
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->settingsCallLatencies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 59
    iget-object v1, p0, Lcom/microsoft/cll/android/ClientTelemetry;->vortexCallLatencies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 60
    return-void
.end method

.method protected SetAvgSettingsLatencyMs(I)V
    .locals 5
    .param p1, "time"    # I

    .prologue
    .line 136
    iget-object v3, p0, Lcom/microsoft/cll/android/ClientTelemetry;->settingsCallLatencies:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    const/4 v2, 0x0

    .line 138
    .local v2, "total":I
    iget-object v3, p0, Lcom/microsoft/cll/android/ClientTelemetry;->settingsCallLatencies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 139
    .local v1, "i":I
    add-int/2addr v2, v1

    .line 140
    goto :goto_0

    .line 142
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/microsoft/cll/android/ClientTelemetry;->settingsCallLatencies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int v0, v2, v3

    .line 143
    .local v0, "average":I
    iget-object v3, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v3, v0}, LMs/Telemetry/CllHeartBeat;->setAvgSettingsLatencyMs(I)V

    .line 144
    return-void
.end method

.method protected SetAvgVortexLatencyMs(I)V
    .locals 5
    .param p1, "time"    # I

    .prologue
    .line 153
    iget-object v3, p0, Lcom/microsoft/cll/android/ClientTelemetry;->vortexCallLatencies:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    const/4 v2, 0x0

    .line 155
    .local v2, "total":I
    iget-object v3, p0, Lcom/microsoft/cll/android/ClientTelemetry;->vortexCallLatencies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 156
    .local v1, "i":I
    add-int/2addr v2, v1

    .line 157
    goto :goto_0

    .line 159
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/microsoft/cll/android/ClientTelemetry;->vortexCallLatencies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int v0, v2, v3

    .line 160
    .local v0, "average":I
    iget-object v3, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v3, v0}, LMs/Telemetry/CllHeartBeat;->setAvgVortexLatencyMs(I)V

    .line 161
    return-void
.end method

.method protected SetCacheUsagePercent(D)V
    .locals 1
    .param p1, "percent"    # D

    .prologue
    .line 132
    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v0, p1, p2}, LMs/Telemetry/CllHeartBeat;->setCacheUsagePercent(D)V

    .line 133
    return-void
.end method

.method protected SetMaxSettingsLatencyMs(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v0}, LMs/Telemetry/CllHeartBeat;->getMaxSettingsLatencyMs()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v0, p1}, LMs/Telemetry/CllHeartBeat;->setMaxSettingsLatencyMs(I)V

    .line 150
    :cond_0
    return-void
.end method

.method protected SetMaxVortexLatencyMs(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v0}, LMs/Telemetry/CllHeartBeat;->getMaxVortexLatencyMs()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v0, p1}, LMs/Telemetry/CllHeartBeat;->setMaxVortexLatencyMs(I)V

    .line 167
    :cond_0
    return-void
.end method
