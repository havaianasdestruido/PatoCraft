.class public LMicrosoft/Telemetry/Extensions/utc;
.super LMicrosoft/Telemetry/Extension;
.source "utc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMicrosoft/Telemetry/Extensions/utc$Schema;
    }
.end annotation


# instance fields
.field private aId:Ljava/lang/String;

.field private cat:J

.field private flags:J

.field private op:Ljava/lang/String;

.field private raId:Ljava/lang/String;

.field private sqmId:Ljava/lang/String;

.field private stId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, LMicrosoft/Telemetry/Extension;-><init>()V

    .line 366
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 359
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

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
    invoke-virtual {p0}, LMicrosoft/Telemetry/Extensions/utc;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 1
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/utc;->aId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCat()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, LMicrosoft/Telemetry/Extensions/utc;->cat:J

    return-wide v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 288
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 304
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 290
    :sswitch_0
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/utc;->stId:Ljava/lang/String;

    goto :goto_0

    .line 292
    :sswitch_1
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/utc;->aId:Ljava/lang/String;

    goto :goto_0

    .line 294
    :sswitch_2
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/utc;->raId:Ljava/lang/String;

    goto :goto_0

    .line 296
    :sswitch_3
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/utc;->op:Ljava/lang/String;

    goto :goto_0

    .line 298
    :sswitch_4
    iget-wide v0, p0, LMicrosoft/Telemetry/Extensions/utc;->cat:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 300
    :sswitch_5
    iget-wide v0, p0, LMicrosoft/Telemetry/Extensions/utc;->flags:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 302
    :sswitch_6
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/utc;->sqmId:Ljava/lang/String;

    goto :goto_0

    .line 288
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
        0x3c -> :sswitch_5
        0x46 -> :sswitch_6
    .end sparse-switch
.end method

.method public final getFlags()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, LMicrosoft/Telemetry/Extensions/utc;->flags:J

    return-wide v0
.end method

.method public final getOp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/utc;->op:Ljava/lang/String;

    return-object v0
.end method

.method public final getRaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/utc;->raId:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 351
    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getSqmId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/utc;->sqmId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/utc;->stId:Ljava/lang/String;

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
    .line 522
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 523
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 609
    if-nez p1, :cond_1

    .line 615
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 613
    check-cast v0, LMicrosoft/Telemetry/Extensions/utc;

    .line 615
    .local v0, "that":LMicrosoft/Telemetry/Extensions/utc;
    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Extensions/utc;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/utc;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Extensions/utc;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/utc;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/utc;)Z
    .locals 5
    .param p1, "that"    # LMicrosoft/Telemetry/Extensions/utc;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 637
    const/4 v0, 0x1

    .line 638
    .local v0, "equals":Z
    if-eqz v0, :cond_5

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Extension;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extension;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 639
    :goto_0
    if-eqz v0, :cond_7

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/utc;->stId:Ljava/lang/String;

    if-nez v3, :cond_6

    :cond_0
    move v0, v1

    .line 640
    :goto_1
    if-eqz v0, :cond_9

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/utc;->aId:Ljava/lang/String;

    if-nez v3, :cond_8

    :cond_1
    move v0, v1

    .line 641
    :goto_2
    if-eqz v0, :cond_b

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/utc;->raId:Ljava/lang/String;

    if-nez v3, :cond_a

    :cond_2
    move v0, v1

    .line 642
    :goto_3
    if-eqz v0, :cond_d

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/utc;->op:Ljava/lang/String;

    if-nez v3, :cond_c

    :cond_3
    move v0, v1

    .line 643
    :goto_4
    if-eqz v0, :cond_f

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/utc;->sqmId:Ljava/lang/String;

    if-nez v3, :cond_e

    :cond_4
    move v0, v1

    .line 644
    :goto_5
    return v0

    :cond_5
    move v0, v2

    .line 638
    goto :goto_0

    .line 639
    :cond_6
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/utc;->stId:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/utc;->stId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_7
    move v0, v2

    goto :goto_1

    .line 640
    :cond_8
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/utc;->aId:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/utc;->aId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_9
    move v0, v2

    goto :goto_2

    .line 641
    :cond_a
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/utc;->raId:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/utc;->raId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_b
    move v0, v2

    goto :goto_3

    .line 642
    :cond_c
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/utc;->op:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/utc;->op:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_d
    move v0, v2

    goto :goto_4

    .line 643
    :cond_e
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/utc;->sqmId:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/utc;->sqmId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_f
    move v0, v2

    goto :goto_5
.end method

.method protected memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/utc;)Z
    .locals 8
    .param p1, "that"    # LMicrosoft/Telemetry/Extensions/utc;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 619
    const/4 v0, 0x1

    .line 620
    .local v0, "equals":Z
    if-eqz v0, :cond_5

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Extension;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extension;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v2

    .line 621
    :goto_0
    if-eqz v0, :cond_8

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->stId:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/utc;->stId:Ljava/lang/String;

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    if-ne v1, v4, :cond_8

    move v0, v2

    .line 622
    :goto_3
    if-eqz v0, :cond_a

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->stId:Ljava/lang/String;

    if-nez v1, :cond_9

    :cond_0
    move v0, v2

    .line 623
    :goto_4
    if-eqz v0, :cond_d

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->aId:Ljava/lang/String;

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/utc;->aId:Ljava/lang/String;

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    if-ne v1, v4, :cond_d

    move v0, v2

    .line 624
    :goto_7
    if-eqz v0, :cond_f

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->aId:Ljava/lang/String;

    if-nez v1, :cond_e

    :cond_1
    move v0, v2

    .line 625
    :goto_8
    if-eqz v0, :cond_12

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->raId:Ljava/lang/String;

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/utc;->raId:Ljava/lang/String;

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    if-ne v1, v4, :cond_12

    move v0, v2

    .line 626
    :goto_b
    if-eqz v0, :cond_14

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->raId:Ljava/lang/String;

    if-nez v1, :cond_13

    :cond_2
    move v0, v2

    .line 627
    :goto_c
    if-eqz v0, :cond_17

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->op:Ljava/lang/String;

    if-nez v1, :cond_15

    move v1, v2

    :goto_d
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/utc;->op:Ljava/lang/String;

    if-nez v4, :cond_16

    move v4, v2

    :goto_e
    if-ne v1, v4, :cond_17

    move v0, v2

    .line 628
    :goto_f
    if-eqz v0, :cond_19

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->op:Ljava/lang/String;

    if-nez v1, :cond_18

    :cond_3
    move v0, v2

    .line 629
    :goto_10
    if-eqz v0, :cond_1a

    iget-wide v4, p0, LMicrosoft/Telemetry/Extensions/utc;->cat:J

    iget-wide v6, p1, LMicrosoft/Telemetry/Extensions/utc;->cat:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_1a

    move v0, v2

    .line 630
    :goto_11
    if-eqz v0, :cond_1b

    iget-wide v4, p0, LMicrosoft/Telemetry/Extensions/utc;->flags:J

    iget-wide v6, p1, LMicrosoft/Telemetry/Extensions/utc;->flags:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_1b

    move v0, v2

    .line 631
    :goto_12
    if-eqz v0, :cond_1e

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->sqmId:Ljava/lang/String;

    if-nez v1, :cond_1c

    move v1, v2

    :goto_13
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/utc;->sqmId:Ljava/lang/String;

    if-nez v4, :cond_1d

    move v4, v2

    :goto_14
    if-ne v1, v4, :cond_1e

    move v0, v2

    .line 632
    :goto_15
    if-eqz v0, :cond_20

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->sqmId:Ljava/lang/String;

    if-nez v1, :cond_1f

    :cond_4
    move v0, v2

    .line 633
    :goto_16
    return v0

    :cond_5
    move v0, v3

    .line 620
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 621
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto :goto_2

    :cond_8
    move v0, v3

    goto :goto_3

    .line 622
    :cond_9
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->stId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/utc;->stId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_0

    :cond_a
    move v0, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 623
    goto/16 :goto_5

    :cond_c
    move v4, v3

    goto/16 :goto_6

    :cond_d
    move v0, v3

    goto/16 :goto_7

    .line 624
    :cond_e
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->aId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/utc;->aId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_1

    :cond_f
    move v0, v3

    goto/16 :goto_8

    :cond_10
    move v1, v3

    .line 625
    goto/16 :goto_9

    :cond_11
    move v4, v3

    goto/16 :goto_a

    :cond_12
    move v0, v3

    goto/16 :goto_b

    .line 626
    :cond_13
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->raId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/utc;->raId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_2

    :cond_14
    move v0, v3

    goto/16 :goto_c

    :cond_15
    move v1, v3

    .line 627
    goto/16 :goto_d

    :cond_16
    move v4, v3

    goto/16 :goto_e

    :cond_17
    move v0, v3

    goto/16 :goto_f

    .line 628
    :cond_18
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->op:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/utc;->op:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_3

    :cond_19
    move v0, v3

    goto/16 :goto_10

    :cond_1a
    move v0, v3

    .line 629
    goto/16 :goto_11

    :cond_1b
    move v0, v3

    .line 630
    goto/16 :goto_12

    :cond_1c
    move v1, v3

    .line 631
    goto :goto_13

    :cond_1d
    move v4, v3

    goto :goto_14

    :cond_1e
    move v0, v3

    goto :goto_15

    .line 632
    :cond_1f
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->sqmId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/utc;->sqmId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_4

    :cond_20
    move v0, v3

    goto/16 :goto_16
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
    .line 404
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 405
    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Extensions/utc;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 406
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 407
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
    .line 425
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

    .line 413
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/utc;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/utc;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
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

    .line 466
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 468
    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 514
    :goto_0
    return v2

    .line 484
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :sswitch_0
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/utc;->stId:Ljava/lang/String;

    .line 509
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    .line 474
    .end local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 476
    .restart local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_3

    .line 478
    :cond_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_2

    .line 512
    .local v1, "isPartial":Z
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    move v2, v1

    .line 514
    goto :goto_0

    .end local v1    # "isPartial":Z
    :cond_2
    move v1, v2

    .line 478
    goto :goto_2

    .line 482
    :cond_3
    iget v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    sparse-switch v3, :sswitch_data_0

    .line 505
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    .line 487
    :sswitch_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/utc;->aId:Ljava/lang/String;

    goto :goto_1

    .line 490
    :sswitch_2
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/utc;->raId:Ljava/lang/String;

    goto :goto_1

    .line 493
    :sswitch_3
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/utc;->op:Ljava/lang/String;

    goto :goto_1

    .line 496
    :sswitch_4
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J

    move-result-wide v4

    iput-wide v4, p0, LMicrosoft/Telemetry/Extensions/utc;->cat:J

    goto :goto_1

    .line 499
    :sswitch_5
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J

    move-result-wide v4

    iput-wide v4, p0, LMicrosoft/Telemetry/Extensions/utc;->flags:J

    goto :goto_1

    .line 502
    :sswitch_6
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/utc;->sqmId:Ljava/lang/String;

    goto :goto_1

    .line 482
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
        0x3c -> :sswitch_5
        0x46 -> :sswitch_6
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
    .line 428
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 430
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 431
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 433
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 434
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->stId:Ljava/lang/String;

    .line 437
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 438
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->aId:Ljava/lang/String;

    .line 441
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 442
    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->raId:Ljava/lang/String;

    .line 445
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 446
    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->op:Ljava/lang/String;

    .line 449
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_9

    .line 450
    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, LMicrosoft/Telemetry/Extensions/utc;->cat:J

    .line 453
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_b

    .line 454
    :cond_a
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, LMicrosoft/Telemetry/Extensions/utc;->flags:J

    .line 457
    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_d

    .line 458
    :cond_c
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->sqmId:Ljava/lang/String;

    .line 460
    :cond_d
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 461
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 372
    const-string v0, "utc"

    const-string v1, "Microsoft.Telemetry.Extensions.utc"

    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/utc;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 376
    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Extension;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/utc;->stId:Ljava/lang/String;

    .line 378
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/utc;->aId:Ljava/lang/String;

    .line 379
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/utc;->raId:Ljava/lang/String;

    .line 380
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/utc;->op:Ljava/lang/String;

    .line 381
    iput-wide v2, p0, LMicrosoft/Telemetry/Extensions/utc;->cat:J

    .line 382
    iput-wide v2, p0, LMicrosoft/Telemetry/Extensions/utc;->flags:J

    .line 383
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/utc;->sqmId:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public final setAId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/utc;->aId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public final setCat(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 117
    iput-wide p1, p0, LMicrosoft/Telemetry/Extensions/utc;->cat:J

    .line 118
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 2
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 313
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 336
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 315
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/utc;->stId:Ljava/lang/String;

    goto :goto_0

    .line 318
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/utc;->aId:Ljava/lang/String;

    goto :goto_0

    .line 321
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/utc;->raId:Ljava/lang/String;

    goto :goto_0

    .line 324
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/utc;->op:Ljava/lang/String;

    goto :goto_0

    .line 327
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_4
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, LMicrosoft/Telemetry/Extensions/utc;->cat:J

    goto :goto_0

    .line 330
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_5
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, LMicrosoft/Telemetry/Extensions/utc;->flags:J

    goto :goto_0

    .line 333
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_6
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/utc;->sqmId:Ljava/lang/String;

    goto :goto_0

    .line 313
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
        0x3c -> :sswitch_5
        0x46 -> :sswitch_6
    .end sparse-switch
.end method

.method public final setFlags(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 131
    iput-wide p1, p0, LMicrosoft/Telemetry/Extensions/utc;->flags:J

    .line 132
    return-void
.end method

.method public final setOp(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/utc;->op:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public final setRaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/utc;->raId:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public final setSqmId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/utc;->sqmId:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public final setStId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/utc;->stId:Ljava/lang/String;

    .line 62
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
    .line 390
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 391
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
    .line 397
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 398
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

    .line 529
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 531
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/utc;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 534
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/utc;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 540
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 541
    return-void

    .line 538
    :cond_0
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/utc;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    goto :goto_0
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .locals 8
    .param p1, "writer"    # Lcom/microsoft/bond/ProtocolWriter;
    .param p2, "isBase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x32

    const/16 v6, 0x28

    const/16 v5, 0x1e

    const/16 v4, 0x14

    const/16 v3, 0xa

    .line 544
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 545
    .local v0, "canOmitFields":Z
    sget-object v1, LMicrosoft/Telemetry/Extensions/utc$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 546
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 548
    if-eqz v0, :cond_0

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->stId:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_7

    .line 549
    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 550
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->stId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 556
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->aId:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_8

    .line 557
    :cond_1
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v4, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 558
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->aId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 564
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->raId:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_9

    .line 565
    :cond_2
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v5, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 566
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->raId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 572
    :goto_2
    if-eqz v0, :cond_3

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->op:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_a

    .line 573
    :cond_3
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 574
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->op:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 580
    :goto_3
    if-eqz v0, :cond_4

    iget-wide v2, p0, LMicrosoft/Telemetry/Extensions/utc;->cat:J

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Variant;->getInt_value()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    .line 581
    :cond_4
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v7, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 582
    iget-wide v2, p0, LMicrosoft/Telemetry/Extensions/utc;->cat:J

    invoke-virtual {p1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeInt64(J)V

    .line 583
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 588
    :goto_4
    if-eqz v0, :cond_5

    iget-wide v2, p0, LMicrosoft/Telemetry/Extensions/utc;->flags:J

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Variant;->getInt_value()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_c

    .line 589
    :cond_5
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x3c

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 590
    iget-wide v2, p0, LMicrosoft/Telemetry/Extensions/utc;->flags:J

    invoke-virtual {p1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeInt64(J)V

    .line 591
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 596
    :goto_5
    if-eqz v0, :cond_6

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->sqmId:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_d

    .line 597
    :cond_6
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x46

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 598
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/utc;->sqmId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 604
    :goto_6
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 605
    return-void

    .line 553
    :cond_7
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_0

    .line 561
    :cond_8
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v4, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_1

    .line 569
    :cond_9
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v5, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_2

    .line 577
    :cond_a
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_3

    .line 585
    :cond_b
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v7, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_4

    .line 593
    :cond_c
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x3c

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_5

    .line 601
    :cond_d
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x46

    invoke-static {}, LMicrosoft/Telemetry/Extensions/utc$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_6
.end method
