.class public LMs/Telemetry/CllHeartBeat;
.super Lcom/microsoft/telemetry/Domain;
.source "CllHeartBeat.java"

# interfaces
.implements Lcom/microsoft/telemetry/IJsonSerializable;


# instance fields
.field private avgSettingsLatencyMs:I

.field private avgVortexLatencyMs:I

.field private cacheUsagePercent:D

.field private eventsQueued:I

.field private lastHeartBeat:Ljava/lang/String;

.field private logFailures:I

.field private maxSettingsLatencyMs:I

.field private maxVortexLatencyMs:I

.field private quotaDropCount:I

.field private rejectDropCount:I

.field private settingsFailures4xx:I

.field private settingsFailures5xx:I

.field private settingsFailuresTimeout:I

.field private settingsHttpAttempts:I

.field private settingsHttpFailures:I

.field private vortexFailures4xx:I

.field private vortexFailures5xx:I

.field private vortexFailuresTimeout:I

.field private vortexHttpAttempts:I

.field private vortexHttpFailures:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/microsoft/telemetry/Domain;-><init>()V

    .line 133
    invoke-virtual {p0}, LMs/Telemetry/CllHeartBeat;->InitializeFields()V

    .line 134
    invoke-virtual {p0}, LMs/Telemetry/CllHeartBeat;->SetupAttributes()V

    .line 135
    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .locals 1

    .prologue
    .line 580
    const-string v0, "Ms.Telemetry.CllHeartBeat"

    iput-object v0, p0, LMs/Telemetry/CllHeartBeat;->QualifiedName:Ljava/lang/String;

    .line 581
    return-void
.end method

.method public SetupAttributes()V
    .locals 3

    .prologue
    .line 573
    iget-object v0, p0, LMs/Telemetry/CllHeartBeat;->Attributes:Ljava/util/LinkedHashMap;

    const-string v1, "Description"

    const-string v2, "This event is meant to be sent on a regular basis by all persistent in-process and out-of-process Logging Libraries."

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    return-void
.end method

.method public getAvgSettingsLatencyMs()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->avgSettingsLatencyMs:I

    return v0
.end method

.method public getAvgVortexLatencyMs()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->avgVortexLatencyMs:I

    return v0
.end method

.method public getCacheUsagePercent()D
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, LMs/Telemetry/CllHeartBeat;->cacheUsagePercent:D

    return-wide v0
.end method

.method public getEventsQueued()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->eventsQueued:I

    return v0
.end method

.method public getLastHeartBeat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, LMs/Telemetry/CllHeartBeat;->lastHeartBeat:Ljava/lang/String;

    return-object v0
.end method

.method public getLogFailures()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->logFailures:I

    return v0
.end method

.method public getMaxSettingsLatencyMs()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->maxSettingsLatencyMs:I

    return v0
.end method

.method public getMaxVortexLatencyMs()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->maxVortexLatencyMs:I

    return v0
.end method

.method public getQuotaDropCount()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->quotaDropCount:I

    return v0
.end method

.method public getRejectDropCount()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->rejectDropCount:I

    return v0
.end method

.method public getSettingsFailures4xx()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->settingsFailures4xx:I

    return v0
.end method

.method public getSettingsFailures5xx()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->settingsFailures5xx:I

    return v0
.end method

.method public getSettingsFailuresTimeout()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->settingsFailuresTimeout:I

    return v0
.end method

.method public getSettingsHttpAttempts()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->settingsHttpAttempts:I

    return v0
.end method

.method public getSettingsHttpFailures()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->settingsHttpFailures:I

    return v0
.end method

.method public getVortexFailures4xx()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->vortexFailures4xx:I

    return v0
.end method

.method public getVortexFailures5xx()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->vortexFailures5xx:I

    return v0
.end method

.method public getVortexFailuresTimeout()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->vortexFailuresTimeout:I

    return v0
.end method

.method public getVortexHttpAttempts()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->vortexHttpAttempts:I

    return v0
.end method

.method public getVortexHttpFailures()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, LMs/Telemetry/CllHeartBeat;->vortexHttpFailures:I

    return v0
.end method

.method protected serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-super {p0, p1}, Lcom/microsoft/telemetry/Domain;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "prefix":Ljava/lang/String;
    iget-object v1, p0, LMs/Telemetry/CllHeartBeat;->lastHeartBeat:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"lastHeartBeat\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, LMs/Telemetry/CllHeartBeat;->lastHeartBeat:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 429
    const-string v0, ","

    .line 432
    :cond_0
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->eventsQueued:I

    if-eqz v1, :cond_1

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"eventsQueued\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 435
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->eventsQueued:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 436
    const-string v0, ","

    .line 439
    :cond_1
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->logFailures:I

    if-eqz v1, :cond_2

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"logFailures\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 442
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->logFailures:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 443
    const-string v0, ","

    .line 446
    :cond_2
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->quotaDropCount:I

    if-eqz v1, :cond_3

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"quotaDropCount\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 449
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->quotaDropCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 450
    const-string v0, ","

    .line 453
    :cond_3
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->rejectDropCount:I

    if-eqz v1, :cond_4

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"rejectDropCount\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 456
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->rejectDropCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 457
    const-string v0, ","

    .line 460
    :cond_4
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->vortexHttpAttempts:I

    if-eqz v1, :cond_5

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"vortexHttpAttempts\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 463
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->vortexHttpAttempts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 464
    const-string v0, ","

    .line 467
    :cond_5
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->vortexHttpFailures:I

    if-eqz v1, :cond_6

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"vortexHttpFailures\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 470
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->vortexHttpFailures:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 471
    const-string v0, ","

    .line 474
    :cond_6
    iget-wide v2, p0, LMs/Telemetry/CllHeartBeat;->cacheUsagePercent:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_7

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"cacheUsagePercent\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 477
    iget-wide v2, p0, LMs/Telemetry/CllHeartBeat;->cacheUsagePercent:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 478
    const-string v0, ","

    .line 481
    :cond_7
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->avgVortexLatencyMs:I

    if-eqz v1, :cond_8

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"avgVortexLatencyMs\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 484
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->avgVortexLatencyMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 485
    const-string v0, ","

    .line 488
    :cond_8
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->maxVortexLatencyMs:I

    if-eqz v1, :cond_9

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"maxVortexLatencyMs\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 491
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->maxVortexLatencyMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 492
    const-string v0, ","

    .line 495
    :cond_9
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->settingsHttpAttempts:I

    if-eqz v1, :cond_a

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"settingsHttpAttempts\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 498
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->settingsHttpAttempts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 499
    const-string v0, ","

    .line 502
    :cond_a
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->settingsHttpFailures:I

    if-eqz v1, :cond_b

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"settingsHttpFailures\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 505
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->settingsHttpFailures:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 506
    const-string v0, ","

    .line 509
    :cond_b
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->avgSettingsLatencyMs:I

    if-eqz v1, :cond_c

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"avgSettingsLatencyMs\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 512
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->avgSettingsLatencyMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 513
    const-string v0, ","

    .line 516
    :cond_c
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->maxSettingsLatencyMs:I

    if-eqz v1, :cond_d

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"maxSettingsLatencyMs\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 519
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->maxSettingsLatencyMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 520
    const-string v0, ","

    .line 523
    :cond_d
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->vortexFailures5xx:I

    if-eqz v1, :cond_e

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"vortexFailures5xx\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 526
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->vortexFailures5xx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 527
    const-string v0, ","

    .line 530
    :cond_e
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->vortexFailures4xx:I

    if-eqz v1, :cond_f

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"vortexFailures4xx\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 533
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->vortexFailures4xx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 534
    const-string v0, ","

    .line 537
    :cond_f
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->vortexFailuresTimeout:I

    if-eqz v1, :cond_10

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"vortexFailuresTimeout\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 540
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->vortexFailuresTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 541
    const-string v0, ","

    .line 544
    :cond_10
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->settingsFailures5xx:I

    if-eqz v1, :cond_11

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"settingsFailures5xx\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 547
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->settingsFailures5xx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 548
    const-string v0, ","

    .line 551
    :cond_11
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->settingsFailures4xx:I

    if-eqz v1, :cond_12

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"settingsFailures4xx\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 554
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->settingsFailures4xx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 555
    const-string v0, ","

    .line 558
    :cond_12
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->settingsFailuresTimeout:I

    if-eqz v1, :cond_13

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"settingsFailuresTimeout\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 561
    iget v1, p0, LMs/Telemetry/CllHeartBeat;->settingsFailuresTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 562
    const-string v0, ","

    .line 565
    :cond_13
    return-object v0
.end method

.method public setAvgSettingsLatencyMs(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 316
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->avgSettingsLatencyMs:I

    .line 317
    return-void
.end method

.method public setAvgVortexLatencyMs(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 260
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->avgVortexLatencyMs:I

    .line 261
    return-void
.end method

.method public setCacheUsagePercent(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 246
    iput-wide p1, p0, LMs/Telemetry/CllHeartBeat;->cacheUsagePercent:D

    .line 247
    return-void
.end method

.method public setEventsQueued(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 162
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->eventsQueued:I

    .line 163
    return-void
.end method

.method public setLastHeartBeat(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, LMs/Telemetry/CllHeartBeat;->lastHeartBeat:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setLogFailures(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 176
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->logFailures:I

    .line 177
    return-void
.end method

.method public setMaxSettingsLatencyMs(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 330
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->maxSettingsLatencyMs:I

    .line 331
    return-void
.end method

.method public setMaxVortexLatencyMs(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 274
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->maxVortexLatencyMs:I

    .line 275
    return-void
.end method

.method public setQuotaDropCount(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 190
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->quotaDropCount:I

    .line 191
    return-void
.end method

.method public setRejectDropCount(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 204
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->rejectDropCount:I

    .line 205
    return-void
.end method

.method public setSettingsFailures4xx(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 400
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->settingsFailures4xx:I

    .line 401
    return-void
.end method

.method public setSettingsFailures5xx(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 386
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->settingsFailures5xx:I

    .line 387
    return-void
.end method

.method public setSettingsFailuresTimeout(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 414
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->settingsFailuresTimeout:I

    .line 415
    return-void
.end method

.method public setSettingsHttpAttempts(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 288
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->settingsHttpAttempts:I

    .line 289
    return-void
.end method

.method public setSettingsHttpFailures(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 302
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->settingsHttpFailures:I

    .line 303
    return-void
.end method

.method public setVortexFailures4xx(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 358
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->vortexFailures4xx:I

    .line 359
    return-void
.end method

.method public setVortexFailures5xx(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 344
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->vortexFailures5xx:I

    .line 345
    return-void
.end method

.method public setVortexFailuresTimeout(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 372
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->vortexFailuresTimeout:I

    .line 373
    return-void
.end method

.method public setVortexHttpAttempts(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 218
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->vortexHttpAttempts:I

    .line 219
    return-void
.end method

.method public setVortexHttpFailures(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 232
    iput p1, p0, LMs/Telemetry/CllHeartBeat;->vortexHttpFailures:I

    .line 233
    return-void
.end method
