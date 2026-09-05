.class public Lcom/microsoft/telemetry/cs2/Envelope;
.super Ljava/lang/Object;
.source "Envelope.java"

# interfaces
.implements Lcom/microsoft/telemetry/IJsonSerializable;


# instance fields
.field private appId:Ljava/lang/String;

.field private appVer:Ljava/lang/String;

.field private data:Lcom/microsoft/telemetry/Base;

.field private deviceId:Ljava/lang/String;

.field private flags:J

.field private iKey:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private osVer:Ljava/lang/String;

.field private sampleRate:D

.field private seq:Ljava/lang/String;

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private time:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private ver:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->ver:I

    .line 46
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->sampleRate:D

    .line 108
    invoke-virtual {p0}, Lcom/microsoft/telemetry/cs2/Envelope;->InitializeFields()V

    .line 109
    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->appVer:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/microsoft/telemetry/Base;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->data:Lcom/microsoft/telemetry/Base;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()J
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->flags:J

    return-wide v0
.end method

.method public getIKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->iKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->osVer:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()D
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->sampleRate:D

    return-wide v0
.end method

.method public getSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->tags:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->tags:Ljava/util/Map;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/microsoft/telemetry/cs2/Envelope;->ver:I

    return v0
.end method

.method public serialize(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    if-nez p1, :cond_0

    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 338
    invoke-virtual {p0, p1}, Lcom/microsoft/telemetry/cs2/Envelope;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    .line 339
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 340
    return-void
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
    .line 348
    const-string v0, ""

    .line 349
    .local v0, "prefix":Ljava/lang/String;
    iget v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->ver:I

    if-eqz v1, :cond_0

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ver\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 352
    iget v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->ver:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 353
    const-string v0, ","

    .line 356
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"name\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 358
    const-string v0, ","

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"time\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->time:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 362
    const-string v0, ","

    .line 364
    iget-wide v2, p0, Lcom/microsoft/telemetry/cs2/Envelope;->sampleRate:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"sampleRate\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 367
    iget-wide v2, p0, Lcom/microsoft/telemetry/cs2/Envelope;->sampleRate:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 368
    const-string v0, ","

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->seq:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"seq\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->seq:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 375
    const-string v0, ","

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->iKey:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"iKey\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->iKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 382
    const-string v0, ","

    .line 385
    :cond_3
    iget-wide v2, p0, Lcom/microsoft/telemetry/cs2/Envelope;->flags:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"flags\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 388
    iget-wide v2, p0, Lcom/microsoft/telemetry/cs2/Envelope;->flags:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 389
    const-string v0, ","

    .line 392
    :cond_4
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->deviceId:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"deviceId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->deviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 396
    const-string v0, ","

    .line 399
    :cond_5
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->os:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"os\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->os:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 403
    const-string v0, ","

    .line 406
    :cond_6
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->osVer:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"osVer\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->osVer:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 410
    const-string v0, ","

    .line 413
    :cond_7
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->appId:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"appId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->appId:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 417
    const-string v0, ","

    .line 420
    :cond_8
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->appVer:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"appVer\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->appVer:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 424
    const-string v0, ","

    .line 427
    :cond_9
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->userId:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"userId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->userId:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 431
    const-string v0, ","

    .line 434
    :cond_a
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->tags:Ljava/util/Map;

    if-eqz v1, :cond_b

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"tags\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->tags:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/microsoft/telemetry/JsonHelper;->writeDictionary(Ljava/io/Writer;Ljava/util/Map;)V

    .line 438
    const-string v0, ","

    .line 441
    :cond_b
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->data:Lcom/microsoft/telemetry/Base;

    if-eqz v1, :cond_c

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"data\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->data:Lcom/microsoft/telemetry/Base;

    invoke-static {p1, v1}, Lcom/microsoft/telemetry/JsonHelper;->writeJsonSerializable(Ljava/io/Writer;Lcom/microsoft/telemetry/IJsonSerializable;)V

    .line 445
    const-string v0, ","

    .line 448
    :cond_c
    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->appId:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setAppVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->appVer:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setData(Lcom/microsoft/telemetry/Base;)V
    .locals 0
    .param p1, "value"    # Lcom/microsoft/telemetry/Base;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->data:Lcom/microsoft/telemetry/Base;

    .line 322
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->deviceId:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setFlags(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 206
    iput-wide p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->flags:J

    .line 207
    return-void
.end method

.method public setIKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->iKey:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->name:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->os:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setOsVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->osVer:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setSampleRate(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 164
    iput-wide p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->sampleRate:D

    .line 165
    return-void
.end method

.method public setSeq(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->seq:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->tags:Ljava/util/Map;

    .line 308
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->time:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->userId:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setVer(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/microsoft/telemetry/cs2/Envelope;->ver:I

    .line 123
    return-void
.end method
