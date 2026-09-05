.class public Lcom/microsoft/telemetry/Envelope;
.super Ljava/lang/Object;
.source "Envelope.java"

# interfaces
.implements Lcom/microsoft/telemetry/IJsonSerializable;


# instance fields
.field private appId:Ljava/lang/String;

.field private appVer:Ljava/lang/String;

.field private cV:Ljava/lang/String;

.field private data:Lcom/microsoft/telemetry/Base;

.field private epoch:Ljava/lang/String;

.field private ext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/telemetry/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private flags:J

.field private iKey:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private osVer:Ljava/lang/String;

.field private popSample:D

.field private seqNum:J

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

.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/microsoft/telemetry/Envelope;->popSample:D

    .line 113
    invoke-virtual {p0}, Lcom/microsoft/telemetry/Envelope;->InitializeFields()V

    .line 114
    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .locals 0

    .prologue
    .line 482
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/microsoft/telemetry/Envelope;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/microsoft/telemetry/Envelope;->appVer:Ljava/lang/String;

    return-object v0
.end method

.method public getCV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/microsoft/telemetry/Envelope;->cV:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/microsoft/telemetry/Base;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/microsoft/telemetry/Envelope;->data:Lcom/microsoft/telemetry/Base;

    return-object v0
.end method

.method public getEpoch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/microsoft/telemetry/Envelope;->epoch:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/telemetry/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/microsoft/telemetry/Envelope;->ext:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/telemetry/Envelope;->ext:Ljava/util/Map;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/microsoft/telemetry/Envelope;->ext:Ljava/util/Map;

    return-object v0
.end method

.method public getFlags()J
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/microsoft/telemetry/Envelope;->flags:J

    return-wide v0
.end method

.method public getIKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/microsoft/telemetry/Envelope;->iKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/microsoft/telemetry/Envelope;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/microsoft/telemetry/Envelope;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/microsoft/telemetry/Envelope;->osVer:Ljava/lang/String;

    return-object v0
.end method

.method public getPopSample()D
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/microsoft/telemetry/Envelope;->popSample:D

    return-wide v0
.end method

.method public getSeqNum()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/microsoft/telemetry/Envelope;->seqNum:J

    return-wide v0
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
    .line 302
    iget-object v0, p0, Lcom/microsoft/telemetry/Envelope;->tags:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/telemetry/Envelope;->tags:Ljava/util/Map;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/microsoft/telemetry/Envelope;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/microsoft/telemetry/Envelope;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/microsoft/telemetry/Envelope;->ver:Ljava/lang/String;

    return-object v0
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
    .line 354
    if-nez p1, :cond_0

    .line 356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 360
    invoke-virtual {p0, p1}, Lcom/microsoft/telemetry/Envelope;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    .line 361
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 362
    return-void
.end method

.method protected serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .locals 8
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 370
    const-string v0, ""

    .line 371
    .local v0, "prefix":Ljava/lang/String;
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

    .line 372
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->ver:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 373
    const-string v0, ","

    .line 375
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

    .line 376
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 377
    const-string v0, ","

    .line 379
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

    .line 380
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->time:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 381
    const-string v0, ","

    .line 383
    iget-wide v2, p0, Lcom/microsoft/telemetry/Envelope;->popSample:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"popSample\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 386
    iget-wide v2, p0, Lcom/microsoft/telemetry/Envelope;->popSample:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 387
    const-string v0, ","

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->epoch:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"epoch\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->epoch:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 394
    const-string v0, ","

    .line 397
    :cond_1
    iget-wide v2, p0, Lcom/microsoft/telemetry/Envelope;->seqNum:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"seqNum\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 400
    iget-wide v2, p0, Lcom/microsoft/telemetry/Envelope;->seqNum:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 401
    const-string v0, ","

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->iKey:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 406
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

    .line 407
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->iKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 408
    const-string v0, ","

    .line 411
    :cond_3
    iget-wide v2, p0, Lcom/microsoft/telemetry/Envelope;->flags:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    .line 413
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

    .line 414
    iget-wide v2, p0, Lcom/microsoft/telemetry/Envelope;->flags:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 415
    const-string v0, ","

    .line 418
    :cond_4
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->os:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 420
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

    .line 421
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->os:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 422
    const-string v0, ","

    .line 425
    :cond_5
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->osVer:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 427
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

    .line 428
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->osVer:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 429
    const-string v0, ","

    .line 432
    :cond_6
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->appId:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 434
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

    .line 435
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->appId:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 436
    const-string v0, ","

    .line 439
    :cond_7
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->appVer:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 441
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

    .line 442
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->appVer:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 443
    const-string v0, ","

    .line 446
    :cond_8
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->cV:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"cV\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->cV:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/telemetry/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 450
    const-string v0, ","

    .line 453
    :cond_9
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->tags:Ljava/util/Map;

    if-eqz v1, :cond_a

    .line 455
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

    .line 456
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->tags:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/microsoft/telemetry/JsonHelper;->writeDictionary(Ljava/io/Writer;Ljava/util/Map;)V

    .line 457
    const-string v0, ","

    .line 460
    :cond_a
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->ext:Ljava/util/Map;

    if-eqz v1, :cond_b

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ext\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->ext:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/microsoft/telemetry/JsonHelper;->writeDictionary(Ljava/io/Writer;Ljava/util/Map;)V

    .line 464
    const-string v0, ","

    .line 467
    :cond_b
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->data:Lcom/microsoft/telemetry/Base;

    if-eqz v1, :cond_c

    .line 469
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

    .line 470
    iget-object v1, p0, Lcom/microsoft/telemetry/Envelope;->data:Lcom/microsoft/telemetry/Base;

    invoke-static {p1, v1}, Lcom/microsoft/telemetry/JsonHelper;->writeJsonSerializable(Ljava/io/Writer;Lcom/microsoft/telemetry/IJsonSerializable;)V

    .line 471
    const-string v0, ","

    .line 474
    :cond_c
    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/microsoft/telemetry/Envelope;->appId:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setAppVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/microsoft/telemetry/Envelope;->appVer:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setCV(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/microsoft/telemetry/Envelope;->cV:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setData(Lcom/microsoft/telemetry/Base;)V
    .locals 0
    .param p1, "value"    # Lcom/microsoft/telemetry/Base;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/microsoft/telemetry/Envelope;->data:Lcom/microsoft/telemetry/Base;

    .line 344
    return-void
.end method

.method public setEpoch(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/microsoft/telemetry/Envelope;->epoch:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setExt(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/telemetry/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/microsoft/telemetry/Extension;>;"
    iput-object p1, p0, Lcom/microsoft/telemetry/Envelope;->ext:Ljava/util/Map;

    .line 330
    return-void
.end method

.method public setFlags(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 225
    iput-wide p1, p0, Lcom/microsoft/telemetry/Envelope;->flags:J

    .line 226
    return-void
.end method

.method public setIKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/microsoft/telemetry/Envelope;->iKey:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/microsoft/telemetry/Envelope;->name:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/microsoft/telemetry/Envelope;->os:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setOsVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/microsoft/telemetry/Envelope;->osVer:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setPopSample(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 169
    iput-wide p1, p0, Lcom/microsoft/telemetry/Envelope;->popSample:D

    .line 170
    return-void
.end method

.method public setSeqNum(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 197
    iput-wide p1, p0, Lcom/microsoft/telemetry/Envelope;->seqNum:J

    .line 198
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
    .line 312
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/microsoft/telemetry/Envelope;->tags:Ljava/util/Map;

    .line 313
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/microsoft/telemetry/Envelope;->time:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/microsoft/telemetry/Envelope;->ver:Ljava/lang/String;

    .line 128
    return-void
.end method
