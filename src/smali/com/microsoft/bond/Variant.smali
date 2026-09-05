.class public Lcom/microsoft/bond/Variant;
.super Ljava/lang/Object;
.source "Variant.java"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/Variant$Schema;
    }
.end annotation


# instance fields
.field private double_value:D

.field private int_value:J

.field private nothing:Z

.field private string_value:Ljava/lang/String;

.field private uint_value:J

.field private wstring_value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    invoke-virtual {p0}, Lcom/microsoft/bond/Variant;->reset()V

    .line 325
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lcom/microsoft/bond/Variant$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/microsoft/bond/BondSerializable;
    .locals 1

    .prologue
    .line 22
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
    .line 19
    invoke-virtual {p0}, Lcom/microsoft/bond/Variant;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 1
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDouble_value()D
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/microsoft/bond/Variant;->double_value:D

    return-wide v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 252
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 266
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 254
    :pswitch_0
    iget-wide v0, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 256
    :pswitch_1
    iget-wide v0, p0, Lcom/microsoft/bond/Variant;->int_value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 258
    :pswitch_2
    iget-wide v0, p0, Lcom/microsoft/bond/Variant;->double_value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 260
    :pswitch_3
    iget-object v0, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    goto :goto_0

    .line 262
    :pswitch_4
    iget-object v0, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    goto :goto_0

    .line 264
    :pswitch_5
    iget-boolean v0, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final getInt_value()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/microsoft/bond/Variant;->int_value:J

    return-wide v0
.end method

.method public final getNothing()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    return v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 310
    invoke-static {}, Lcom/microsoft/bond/Variant;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getString_value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    return-object v0
.end method

.method public final getUint_value()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    return-wide v0
.end method

.method public final getWstring_value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

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
    .line 469
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 470
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 548
    if-nez p1, :cond_1

    .line 554
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 552
    check-cast v0, Lcom/microsoft/bond/Variant;

    .line 554
    .local v0, "that":Lcom/microsoft/bond/Variant;
    invoke-virtual {p0, v0}, Lcom/microsoft/bond/Variant;->memberwiseCompareQuick(Lcom/microsoft/bond/Variant;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/Variant;->memberwiseCompareDeep(Lcom/microsoft/bond/Variant;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(Lcom/microsoft/bond/Variant;)Z
    .locals 5
    .param p1, "that"    # Lcom/microsoft/bond/Variant;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 572
    const/4 v0, 0x1

    .line 574
    .local v0, "equals":Z
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    if-nez v3, :cond_2

    :cond_0
    move v0, v1

    .line 575
    :goto_0
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_1
    move v0, v1

    .line 576
    :goto_1
    return v0

    .line 574
    :cond_2
    iget-object v3, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 575
    :cond_4
    iget-object v3, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method protected memberwiseCompareQuick(Lcom/microsoft/bond/Variant;)Z
    .locals 8
    .param p1, "that"    # Lcom/microsoft/bond/Variant;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 558
    const/4 v0, 0x1

    .line 560
    .local v0, "equals":Z
    if-eqz v0, :cond_3

    iget-wide v4, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    iget-wide v6, p1, Lcom/microsoft/bond/Variant;->uint_value:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    move v0, v2

    .line 561
    :goto_0
    if-eqz v0, :cond_4

    iget-wide v4, p0, Lcom/microsoft/bond/Variant;->int_value:J

    iget-wide v6, p1, Lcom/microsoft/bond/Variant;->int_value:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    move v0, v2

    .line 562
    :goto_1
    if-eqz v0, :cond_6

    iget-wide v4, p0, Lcom/microsoft/bond/Variant;->double_value:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v4, p1, Lcom/microsoft/bond/Variant;->double_value:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    move v0, v2

    .line 563
    :goto_2
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    iget-object v4, p1, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    if-ne v1, v4, :cond_9

    move v0, v2

    .line 564
    :goto_5
    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    if-nez v1, :cond_a

    :cond_1
    move v0, v2

    .line 565
    :goto_6
    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    iget-object v4, p1, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    if-ne v1, v4, :cond_e

    move v0, v2

    .line 566
    :goto_9
    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    if-nez v1, :cond_f

    :cond_2
    move v0, v2

    .line 567
    :goto_a
    if-eqz v0, :cond_11

    iget-boolean v1, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    iget-boolean v4, p1, Lcom/microsoft/bond/Variant;->nothing:Z

    if-ne v1, v4, :cond_11

    move v0, v2

    .line 568
    :goto_b
    return v0

    :cond_3
    move v0, v3

    .line 560
    goto :goto_0

    :cond_4
    move v0, v3

    .line 561
    goto :goto_1

    .line 562
    :cond_5
    iget-wide v4, p0, Lcom/microsoft/bond/Variant;->double_value:D

    iget-wide v6, p1, Lcom/microsoft/bond/Variant;->double_value:D

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_0

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 563
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v0, v3

    goto :goto_5

    .line 564
    :cond_a
    iget-object v1, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_1

    :cond_b
    move v0, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 565
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8

    :cond_e
    move v0, v3

    goto :goto_9

    .line 566
    :cond_f
    iget-object v1, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_2

    :cond_10
    move v0, v3

    goto :goto_a

    :cond_11
    move v0, v3

    .line 567
    goto :goto_b
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
    .line 362
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 363
    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Variant;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 364
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 365
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
    .line 383
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

    .line 371
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Variant;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Variant;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-static {p1}, Lcom/microsoft/bond/internal/ReadHelper;->skipPartialStruct(Lcom/microsoft/bond/ProtocolReader;)V

    goto :goto_0
.end method

.method protected readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z
    .locals 4
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p2, "isBase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 424
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 426
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_2

    .line 428
    :cond_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 459
    .local v1, "isPartial":Z
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 461
    return v1

    .line 428
    .end local v1    # "isPartial":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 432
    :cond_2
    iget v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    packed-switch v2, :pswitch_data_0

    .line 452
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 456
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    .line 434
    :pswitch_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readUInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    goto :goto_2

    .line 437
    :pswitch_1
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/microsoft/bond/Variant;->int_value:J

    goto :goto_2

    .line 440
    :pswitch_2
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readDouble(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/microsoft/bond/Variant;->double_value:D

    goto :goto_2

    .line 443
    :pswitch_3
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    goto :goto_2

    .line 446
    :pswitch_4
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    goto :goto_2

    .line 449
    :pswitch_5
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readBool(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    goto :goto_2

    .line 432
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
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
    .line 386
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 388
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 391
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 392
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    .line 395
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 396
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/microsoft/bond/Variant;->int_value:J

    .line 399
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 400
    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/microsoft/bond/Variant;->double_value:D

    .line 403
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 404
    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    .line 407
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_9

    .line 408
    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    .line 411
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_b

    .line 412
    :cond_a
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    .line 414
    :cond_b
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 415
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 331
    const-string v0, "Variant"

    const-string v1, "com.microsoft.bond.Variant"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/Variant;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 336
    iput-wide v0, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    .line 337
    iput-wide v0, p0, Lcom/microsoft/bond/Variant;->int_value:J

    .line 338
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/microsoft/bond/Variant;->double_value:D

    .line 339
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    .line 340
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    .line 342
    return-void
.end method

.method public final setDouble_value(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/microsoft/bond/Variant;->double_value:D

    .line 86
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 2
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 295
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 277
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    goto :goto_0

    .line 280
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/bond/Variant;->int_value:J

    goto :goto_0

    .line 283
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/bond/Variant;->double_value:D

    goto :goto_0

    .line 286
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    goto :goto_0

    .line 289
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    goto :goto_0

    .line 292
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final setInt_value(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/microsoft/bond/Variant;->int_value:J

    .line 72
    return-void
.end method

.method public final setNothing(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    .line 128
    return-void
.end method

.method public final setString_value(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public final setUint_value(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    .line 58
    return-void
.end method

.method public final setWstring_value(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    .line 114
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
    .line 348
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 349
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
    .line 355
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 356
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

    .line 476
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 478
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/Variant;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 481
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Variant;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 487
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 488
    return-void

    .line 485
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Variant;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    goto :goto_0
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .locals 11
    .param p1, "writer"    # Lcom/microsoft/bond/ProtocolWriter;
    .param p2, "isBase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 491
    sget-object v3, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 492
    .local v0, "canOmitFields":Z
    sget-object v3, Lcom/microsoft/bond/Variant$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v3, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 495
    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    .line 496
    :cond_0
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_UINT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 497
    iget-wide v4, p0, Lcom/microsoft/bond/Variant;->uint_value:J

    invoke-virtual {p1, v4, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeUInt64(J)V

    .line 498
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 503
    :goto_0
    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/microsoft/bond/Variant;->int_value:J

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/bond/Variant;->getInt_value()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    .line 504
    :cond_1
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v1, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 505
    iget-wide v4, p0, Lcom/microsoft/bond/Variant;->int_value:J

    invoke-virtual {p1, v4, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeInt64(J)V

    .line 506
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 511
    :goto_1
    if-eqz v0, :cond_2

    iget-wide v4, p0, Lcom/microsoft/bond/Variant;->double_value:D

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/bond/Variant;->getDouble_value()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_8

    .line 512
    :cond_2
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v8, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 513
    iget-wide v4, p0, Lcom/microsoft/bond/Variant;->double_value:D

    invoke-virtual {p1, v4, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeDouble(D)V

    .line 514
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 519
    :goto_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_9

    .line 520
    :cond_3
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v9, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 521
    iget-object v3, p0, Lcom/microsoft/bond/Variant;->string_value:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 527
    :goto_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getWstring_value()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_a

    .line 528
    :cond_4
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v10, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 529
    iget-object v3, p0, Lcom/microsoft/bond/Variant;->wstring_value:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 535
    :goto_4
    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_b

    :goto_5
    if-eq v3, v1, :cond_c

    .line 536
    :cond_5
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_BOOL:Lcom/microsoft/bond/BondDataType;

    const/4 v2, 0x5

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 537
    iget-boolean v1, p0, Lcom/microsoft/bond/Variant;->nothing:Z

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeBool(Z)V

    .line 538
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 543
    :goto_6
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 544
    return-void

    .line 500
    :cond_6
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_UINT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_0

    .line 508
    :cond_7
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v1, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_1

    .line 516
    :cond_8
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v8, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_2

    .line 524
    :cond_9
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v9, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_3

    .line 532
    :cond_a
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v10, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_4

    :cond_b
    move v1, v2

    .line 535
    goto :goto_5

    .line 540
    :cond_c
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_BOOL:Lcom/microsoft/bond/BondDataType;

    const/4 v2, 0x5

    invoke-static {}, Lcom/microsoft/bond/Variant$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_6
.end method
