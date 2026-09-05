.class public LMicrosoft/Telemetry/Extensions/ingest;
.super LMicrosoft/Telemetry/Extension;
.source "ingest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMicrosoft/Telemetry/Extensions/ingest$Schema;
    }
.end annotation


# instance fields
.field private auth:J

.field private clientIp:Ljava/lang/String;

.field private quality:J

.field private time:Ljava/lang/String;

.field private uploadTime:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, LMicrosoft/Telemetry/Extension;-><init>()V

    .line 334
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 327
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/microsoft/bond/BondSerializable;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, LMicrosoft/Telemetry/Extensions/ingest;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 1
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAuth()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    return-wide v0
.end method

.method public final getClientIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 275
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 263
    :sswitch_0
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    goto :goto_0

    .line 265
    :sswitch_1
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    goto :goto_0

    .line 267
    :sswitch_2
    iget-wide v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 269
    :sswitch_3
    iget-wide v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 271
    :sswitch_4
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    goto :goto_0

    .line 273
    :sswitch_5
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    goto :goto_0

    .line 261
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
        0x3c -> :sswitch_5
    .end sparse-switch
.end method

.method public final getQuality()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    return-wide v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 319
    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    return-object v0
.end method

.method public final getUploadTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public marshal(Lcom/microsoft/bond/ProtocolWriter;)V
    .locals 0
    .param p1, "writer"    # Lcom/microsoft/bond/ProtocolWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 495
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 565
    if-nez p1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 569
    check-cast v0, LMicrosoft/Telemetry/Extensions/ingest;

    .line 571
    .local v0, "that":LMicrosoft/Telemetry/Extensions/ingest;
    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Extensions/ingest;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/ingest;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Extensions/ingest;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/ingest;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/ingest;)Z
    .locals 5
    .param p1, "that"    # LMicrosoft/Telemetry/Extensions/ingest;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 591
    const/4 v0, 0x1

    .line 592
    .local v0, "equals":Z
    if-eqz v0, :cond_4

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Extension;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extension;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 593
    :goto_0
    if-eqz v0, :cond_6

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    if-nez v3, :cond_5

    :cond_0
    move v0, v1

    .line 594
    :goto_1
    if-eqz v0, :cond_8

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    if-nez v3, :cond_7

    :cond_1
    move v0, v1

    .line 595
    :goto_2
    if-eqz v0, :cond_a

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    if-nez v3, :cond_9

    :cond_2
    move v0, v1

    .line 596
    :goto_3
    if-eqz v0, :cond_c

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    if-nez v3, :cond_b

    :cond_3
    move v0, v1

    .line 597
    :goto_4
    return v0

    :cond_4
    move v0, v2

    .line 592
    goto :goto_0

    .line 593
    :cond_5
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_6
    move v0, v2

    goto :goto_1

    .line 594
    :cond_7
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_8
    move v0, v2

    goto :goto_2

    .line 595
    :cond_9
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_a
    move v0, v2

    goto :goto_3

    .line 596
    :cond_b
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method protected memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/ingest;)Z
    .locals 8
    .param p1, "that"    # LMicrosoft/Telemetry/Extensions/ingest;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 575
    const/4 v0, 0x1

    .line 576
    .local v0, "equals":Z
    if-eqz v0, :cond_4

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Extension;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extension;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v2

    .line 577
    :goto_0
    if-eqz v0, :cond_7

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    if-ne v1, v4, :cond_7

    move v0, v2

    .line 578
    :goto_3
    if-eqz v0, :cond_9

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    if-nez v1, :cond_8

    :cond_0
    move v0, v2

    .line 579
    :goto_4
    if-eqz v0, :cond_c

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    if-ne v1, v4, :cond_c

    move v0, v2

    .line 580
    :goto_7
    if-eqz v0, :cond_e

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    if-nez v1, :cond_d

    :cond_1
    move v0, v2

    .line 581
    :goto_8
    if-eqz v0, :cond_f

    iget-wide v4, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    iget-wide v6, p1, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_f

    move v0, v2

    .line 582
    :goto_9
    if-eqz v0, :cond_10

    iget-wide v4, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    iget-wide v6, p1, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_10

    move v0, v2

    .line 583
    :goto_a
    if-eqz v0, :cond_13

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    if-nez v1, :cond_11

    move v1, v2

    :goto_b
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    if-nez v4, :cond_12

    move v4, v2

    :goto_c
    if-ne v1, v4, :cond_13

    move v0, v2

    .line 584
    :goto_d
    if-eqz v0, :cond_15

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    if-nez v1, :cond_14

    :cond_2
    move v0, v2

    .line 585
    :goto_e
    if-eqz v0, :cond_18

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    if-nez v1, :cond_16

    move v1, v2

    :goto_f
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    if-nez v4, :cond_17

    move v4, v2

    :goto_10
    if-ne v1, v4, :cond_18

    move v0, v2

    .line 586
    :goto_11
    if-eqz v0, :cond_1a

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    if-nez v1, :cond_19

    :cond_3
    move v0, v2

    .line 587
    :goto_12
    return v0

    :cond_4
    move v0, v3

    .line 576
    goto :goto_0

    :cond_5
    move v1, v3

    .line 577
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_3

    .line 578
    :cond_8
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_0

    :cond_9
    move v0, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 579
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v0, v3

    goto :goto_7

    .line 580
    :cond_d
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_1

    :cond_e
    move v0, v3

    goto :goto_8

    :cond_f
    move v0, v3

    .line 581
    goto :goto_9

    :cond_10
    move v0, v3

    .line 582
    goto :goto_a

    :cond_11
    move v1, v3

    .line 583
    goto :goto_b

    :cond_12
    move v4, v3

    goto :goto_c

    :cond_13
    move v0, v3

    goto :goto_d

    .line 584
    :cond_14
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_2

    :cond_15
    move v0, v3

    goto :goto_e

    :cond_16
    move v1, v3

    .line 585
    goto :goto_f

    :cond_17
    move v4, v3

    goto :goto_10

    :cond_18
    move v0, v3

    goto :goto_11

    .line 586
    :cond_19
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_3

    :cond_1a
    move v0, v3

    goto :goto_12
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;)V
    .locals 0
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 372
    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Extensions/ingest;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 373
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 374
    return-void
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondSerializable;)V
    .locals 0
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p2, "schema"    # Lcom/microsoft/bond/BondSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    return-void
.end method

.method public readNested(Lcom/microsoft/bond/ProtocolReader;)V
    .locals 2
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 380
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/ingest;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/ingest;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-static {p1}, Lcom/microsoft/bond/internal/ReadHelper;->skipPartialStruct(Lcom/microsoft/bond/ProtocolReader;)V

    goto :goto_0
.end method

.method protected readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z
    .locals 6
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p2, "isBase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 437
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 439
    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 486
    :goto_0
    return v2

    .line 456
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :sswitch_0
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    .line 480
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    .line 446
    .end local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 448
    .restart local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_3

    .line 450
    :cond_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_2

    .line 483
    .local v1, "isPartial":Z
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    move v2, v1

    .line 486
    goto :goto_0

    .end local v1    # "isPartial":Z
    :cond_2
    move v1, v2

    .line 450
    goto :goto_2

    .line 454
    :cond_3
    iget v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    sparse-switch v3, :sswitch_data_0

    .line 476
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    .line 460
    :sswitch_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    goto :goto_1

    .line 464
    :sswitch_2
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J

    move-result-wide v4

    iput-wide v4, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    goto :goto_1

    .line 467
    :sswitch_3
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J

    move-result-wide v4

    iput-wide v4, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    goto :goto_1

    .line 470
    :sswitch_4
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    goto :goto_1

    .line 473
    :sswitch_5
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    goto :goto_1

    .line 454
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
        0x3c -> :sswitch_5
    .end sparse-switch
.end method

.method protected readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V
    .locals 4
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p2, "isBase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 397
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 398
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 400
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    .line 408
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 409
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    .line 416
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 417
    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    .line 420
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 421
    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    .line 424
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_9

    .line 425
    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    .line 428
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_b

    .line 429
    :cond_a
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    .line 431
    :cond_b
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 432
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 340
    const-string v0, "ingest"

    const-string v1, "Microsoft.Telemetry.Extensions.ingest"

    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/ingest;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 344
    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Extension;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    .line 346
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    .line 347
    iput-wide v2, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    .line 348
    iput-wide v2, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    .line 349
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    .line 350
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public final setAuth(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 86
    iput-wide p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    .line 87
    return-void
.end method

.method public final setClientIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 2
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 284
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 304
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 286
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    goto :goto_0

    .line 289
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    goto :goto_0

    .line 292
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_2
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    goto :goto_0

    .line 295
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_3
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    goto :goto_0

    .line 298
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    goto :goto_0

    .line 301
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_5
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    goto :goto_0

    .line 284
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
        0x3c -> :sswitch_5
    .end sparse-switch
.end method

.method public final setQuality(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 100
    iput-wide p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    .line 101
    return-void
.end method

.method public final setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public final setUploadTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public final setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public unmarshal(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 358
    return-void
.end method

.method public unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "schema"    # Lcom/microsoft/bond/BondSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 365
    return-void
.end method

.method public write(Lcom/microsoft/bond/ProtocolWriter;)V
    .locals 2
    .param p1, "writer"    # Lcom/microsoft/bond/ProtocolWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 501
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 503
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/ingest;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 506
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/ingest;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 512
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 513
    return-void

    .line 510
    :cond_0
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/ingest;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    goto :goto_0
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .locals 10
    .param p1, "writer"    # Lcom/microsoft/bond/ProtocolWriter;
    .param p2, "isBase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3c

    const/16 v8, 0x32

    const/16 v7, 0x28

    const/16 v6, 0x1e

    .line 516
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 517
    .local v0, "canOmitFields":Z
    sget-object v1, LMicrosoft/Telemetry/Extensions/ingest$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 518
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 520
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0xa

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 521
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 524
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x14

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 525
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->clientIp:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 528
    if-eqz v0, :cond_0

    iget-wide v2, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Variant;->getInt_value()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 529
    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 530
    iget-wide v2, p0, LMicrosoft/Telemetry/Extensions/ingest;->auth:J

    invoke-virtual {p1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeInt64(J)V

    .line 531
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 536
    :goto_0
    if-eqz v0, :cond_1

    iget-wide v2, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Variant;->getInt_value()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 537
    :cond_1
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v7, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 538
    iget-wide v2, p0, LMicrosoft/Telemetry/Extensions/ingest;->quality:J

    invoke-virtual {p1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeInt64(J)V

    .line 539
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 544
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_6

    .line 545
    :cond_2
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v8, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 546
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->uploadTime:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 552
    :goto_2
    if-eqz v0, :cond_3

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_7

    .line 553
    :cond_3
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v9, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 554
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/ingest;->userAgent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 560
    :goto_3
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 561
    return-void

    .line 533
    :cond_4
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_0

    .line 541
    :cond_5
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v7, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1

    .line 549
    :cond_6
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v8, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_2

    .line 557
    :cond_7
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v9, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_3
.end method
