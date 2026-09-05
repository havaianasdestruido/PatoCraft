.class public Lcom/microsoft/bond/TypeDef;
.super Ljava/lang/Object;
.source "TypeDef.java"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/TypeDef$Schema;
    }
.end annotation


# instance fields
.field private bonded_type:Z

.field private element:Lcom/microsoft/bond/TypeDef;

.field private id:Lcom/microsoft/bond/BondDataType;

.field private key:Lcom/microsoft/bond/TypeDef;

.field private struct_def:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    invoke-virtual {p0}, Lcom/microsoft/bond/TypeDef;->reset()V

    .line 299
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lcom/microsoft/bond/TypeDef$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method

.method private readFieldImpl_element(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .locals 3
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p2, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {p2, v1}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 434
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;

    move-result-object v0

    .line 435
    .local v0, "tag1":Lcom/microsoft/bond/ProtocolReader$ListTag;
    iget-object v1, v0, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 437
    iget v1, v0, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 438
    iget-object v1, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    if-nez v1, :cond_0

    new-instance v1, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v1}, Lcom/microsoft/bond/TypeDef;-><init>()V

    iput-object v1, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    :cond_0
    iget-object v1, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v1, p1}, Lcom/microsoft/bond/TypeDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 444
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    .line 445
    return-void

    .line 439
    :cond_2
    iget v1, v0, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method private readFieldImpl_key(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .locals 3
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p2, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {p2, v1}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 451
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;

    move-result-object v0

    .line 452
    .local v0, "tag1":Lcom/microsoft/bond/ProtocolReader$ListTag;
    iget-object v1, v0, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 454
    iget v1, v0, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 455
    iget-object v1, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    if-nez v1, :cond_0

    new-instance v1, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v1}, Lcom/microsoft/bond/TypeDef;-><init>()V

    iput-object v1, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    :cond_0
    iget-object v1, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v1, p1}, Lcom/microsoft/bond/TypeDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 461
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    .line 462
    return-void

    .line 456
    :cond_2
    iget v1, v0, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    if-eqz v1, :cond_1

    goto :goto_0
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
    invoke-virtual {p0}, Lcom/microsoft/bond/TypeDef;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 2
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 272
    sget-object v0, Lcom/microsoft/bond/TypeDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 273
    new-instance v0, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v0}, Lcom/microsoft/bond/TypeDef;-><init>()V

    .line 276
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBonded_type()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    return v0
.end method

.method public final getElement()Lcom/microsoft/bond/TypeDef;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 227
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 239
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 229
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 231
    :pswitch_1
    iget-short v0, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v0, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    goto :goto_0

    .line 235
    :pswitch_3
    iget-object v0, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    goto :goto_0

    .line 237
    :pswitch_4
    iget-boolean v0, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final getId()Lcom/microsoft/bond/BondDataType;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    return-object v0
.end method

.method public final getKey()Lcom/microsoft/bond/TypeDef;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Lcom/microsoft/bond/TypeDef;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getStruct_def()S
    .locals 1

    .prologue
    .line 61
    iget-short v0, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    return v0
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

    .line 550
    if-nez p1, :cond_1

    .line 556
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 554
    check-cast v0, Lcom/microsoft/bond/TypeDef;

    .line 556
    .local v0, "that":Lcom/microsoft/bond/TypeDef;
    invoke-virtual {p0, v0}, Lcom/microsoft/bond/TypeDef;->memberwiseCompareQuick(Lcom/microsoft/bond/TypeDef;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/TypeDef;->memberwiseCompareDeep(Lcom/microsoft/bond/TypeDef;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(Lcom/microsoft/bond/TypeDef;)Z
    .locals 5
    .param p1, "that"    # Lcom/microsoft/bond/TypeDef;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 571
    const/4 v0, 0x1

    .line 573
    .local v0, "equals":Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    if-eqz v1, :cond_1

    .line 574
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    iget-object v4, p1, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    if-nez v4, :cond_5

    move v4, v2

    :goto_1
    if-ne v1, v4, :cond_6

    move v0, v2

    .line 575
    :goto_2
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    if-nez v1, :cond_7

    :cond_0
    move v0, v2

    .line 577
    :cond_1
    :goto_3
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    if-eqz v1, :cond_3

    .line 578
    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    if-nez v1, :cond_9

    move v1, v2

    :goto_4
    iget-object v4, p1, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    if-nez v4, :cond_a

    move v4, v2

    :goto_5
    if-ne v1, v4, :cond_b

    move v0, v2

    .line 579
    :goto_6
    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    if-nez v1, :cond_c

    :cond_2
    move v0, v2

    .line 581
    :cond_3
    :goto_7
    return v0

    :cond_4
    move v1, v3

    .line 574
    goto :goto_0

    :cond_5
    move v4, v3

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_2

    .line 575
    :cond_7
    iget-object v1, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    iget-object v4, p1, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v1, v4}, Lcom/microsoft/bond/TypeDef;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_8
    move v0, v3

    goto :goto_3

    :cond_9
    move v1, v3

    .line 578
    goto :goto_4

    :cond_a
    move v4, v3

    goto :goto_5

    :cond_b
    move v0, v3

    goto :goto_6

    .line 579
    :cond_c
    iget-object v1, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    iget-object v4, p1, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v1, v4}, Lcom/microsoft/bond/TypeDef;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_d
    move v0, v3

    goto :goto_7
.end method

.method protected memberwiseCompareQuick(Lcom/microsoft/bond/TypeDef;)Z
    .locals 5
    .param p1, "that"    # Lcom/microsoft/bond/TypeDef;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 560
    const/4 v0, 0x1

    .line 562
    .local v0, "equals":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    iget-object v4, p1, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    if-ne v1, v4, :cond_0

    move v0, v2

    .line 563
    :goto_0
    if-eqz v0, :cond_1

    iget-short v1, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    iget-short v4, p1, Lcom/microsoft/bond/TypeDef;->struct_def:S

    if-ne v1, v4, :cond_1

    move v0, v2

    .line 564
    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    iget-object v4, p1, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    if-nez v4, :cond_3

    move v4, v2

    :goto_3
    if-ne v1, v4, :cond_4

    move v0, v2

    .line 565
    :goto_4
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    iget-object v4, p1, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    if-nez v4, :cond_6

    move v4, v2

    :goto_6
    if-ne v1, v4, :cond_7

    move v0, v2

    .line 566
    :goto_7
    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    iget-boolean v4, p1, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    if-ne v1, v4, :cond_8

    move v0, v2

    .line 567
    :goto_8
    return v0

    :cond_0
    move v0, v3

    .line 562
    goto :goto_0

    :cond_1
    move v0, v3

    .line 563
    goto :goto_1

    :cond_2
    move v1, v3

    .line 564
    goto :goto_2

    :cond_3
    move v4, v3

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_4

    :cond_5
    move v1, v3

    .line 565
    goto :goto_5

    :cond_6
    move v4, v3

    goto :goto_6

    :cond_7
    move v0, v3

    goto :goto_7

    :cond_8
    move v0, v3

    .line 566
    goto :goto_8
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
    .line 335
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 336
    invoke-virtual {p0, p1}, Lcom/microsoft/bond/TypeDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 337
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 338
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
    .line 356
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

    .line 344
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/TypeDef;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/TypeDef;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
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
    .line 389
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 393
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 395
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_2

    .line 397
    :cond_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 425
    .local v1, "isPartial":Z
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 427
    return v1

    .line 397
    .end local v1    # "isPartial":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 401
    :cond_2
    iget v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    packed-switch v2, :pswitch_data_0

    .line 418
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 422
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    .line 403
    :pswitch_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readInt32(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)I

    move-result v2

    invoke-static {v2}, Lcom/microsoft/bond/BondDataType;->fromValue(I)Lcom/microsoft/bond/BondDataType;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    goto :goto_2

    .line 406
    :pswitch_1
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readUInt16(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)S

    move-result v2

    iput-short v2, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    goto :goto_2

    .line 409
    :pswitch_2
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v2}, Lcom/microsoft/bond/TypeDef;->readFieldImpl_element(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    goto :goto_2

    .line 412
    :pswitch_3
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v2}, Lcom/microsoft/bond/TypeDef;->readFieldImpl_key(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    goto :goto_2

    .line 415
    :pswitch_4
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readBool(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    goto :goto_2

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V
    .locals 2
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p2, "isBase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 361
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 364
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 365
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readInt32()I

    move-result v1

    invoke-static {v1}, Lcom/microsoft/bond/BondDataType;->fromValue(I)Lcom/microsoft/bond/BondDataType;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    .line 368
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 369
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readUInt16()S

    move-result v1

    iput-short v1, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    .line 372
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 373
    :cond_4
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v1}, Lcom/microsoft/bond/TypeDef;->readFieldImpl_element(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    .line 376
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 377
    :cond_6
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v1}, Lcom/microsoft/bond/TypeDef;->readFieldImpl_key(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    .line 380
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_9

    .line 381
    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    .line 383
    :cond_9
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 384
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 305
    const-string v0, "TypeDef"

    const-string v1, "com.microsoft.bond.TypeDef"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/TypeDef;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 310
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    iput-object v0, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    .line 311
    iput-short v1, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    .line 312
    iput-object v2, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    .line 313
    iput-object v2, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    .line 314
    iput-boolean v1, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    .line 315
    return-void
.end method

.method public final setBonded_type(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    .line 111
    return-void
.end method

.method public final setElement(Lcom/microsoft/bond/TypeDef;)V
    .locals 0
    .param p1, "value"    # Lcom/microsoft/bond/TypeDef;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    .line 83
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 248
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 265
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 250
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/microsoft/bond/BondDataType;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 253
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    goto :goto_0

    .line 256
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Lcom/microsoft/bond/TypeDef;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    goto :goto_0

    .line 259
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Lcom/microsoft/bond/TypeDef;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    goto :goto_0

    .line 262
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final setId(Lcom/microsoft/bond/BondDataType;)V
    .locals 0
    .param p1, "value"    # Lcom/microsoft/bond/BondDataType;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    .line 55
    return-void
.end method

.method public final setKey(Lcom/microsoft/bond/TypeDef;)V
    .locals 0
    .param p1, "value"    # Lcom/microsoft/bond/TypeDef;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    .line 97
    return-void
.end method

.method public final setStruct_def(S)V
    .locals 0
    .param p1, "value"    # S

    .prologue
    .line 68
    iput-short p1, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    .line 69
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
    .line 321
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 322
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
    .line 328
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 329
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
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/TypeDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 481
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/TypeDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 487
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 488
    return-void

    .line 485
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/TypeDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    goto :goto_0
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .locals 13
    .param p1, "writer"    # Lcom/microsoft/bond/ProtocolWriter;
    .param p2, "isBase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 491
    sget-object v5, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v5}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 492
    .local v0, "canOmitFields":Z
    sget-object v5, Lcom/microsoft/bond/TypeDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v5, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 495
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v5}, Lcom/microsoft/bond/BondDataType;->getValue()I

    move-result v5

    int-to-long v6, v5

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Variant;->getInt_value()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_7

    .line 496
    :cond_0
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {p1, v5, v4, v6}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 497
    iget-object v5, p0, Lcom/microsoft/bond/TypeDef;->id:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v5}, Lcom/microsoft/bond/BondDataType;->getValue()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeInt32(I)V

    .line 498
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 503
    :goto_0
    if-eqz v0, :cond_1

    iget-short v5, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    int-to-long v6, v5

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_8

    .line 504
    :cond_1
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {p1, v5, v3, v6}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 505
    iget-short v5, p0, Lcom/microsoft/bond/TypeDef;->struct_def:S

    invoke-virtual {p1, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeUInt16(S)V

    .line 506
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 511
    :goto_1
    iget-object v5, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    if-eqz v5, :cond_9

    move v1, v3

    .line 512
    .local v1, "size3":I
    :goto_2
    if-eqz v0, :cond_2

    if-eqz v1, :cond_a

    .line 513
    :cond_2
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {p1, v5, v10, v6}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 514
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v1, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V

    .line 515
    if-eqz v1, :cond_3

    .line 516
    iget-object v5, p0, Lcom/microsoft/bond/TypeDef;->element:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v5, p1, v4}, Lcom/microsoft/bond/TypeDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 518
    :cond_3
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    .line 519
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 524
    :goto_3
    iget-object v5, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    if-eqz v5, :cond_b

    move v2, v3

    .line 525
    .local v2, "size4":I
    :goto_4
    if-eqz v0, :cond_4

    if-eqz v2, :cond_c

    .line 526
    :cond_4
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {p1, v5, v11, v6}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 527
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v2, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V

    .line 528
    if-eqz v2, :cond_5

    .line 529
    iget-object v5, p0, Lcom/microsoft/bond/TypeDef;->key:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v5, p1, v4}, Lcom/microsoft/bond/TypeDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 531
    :cond_5
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    .line 532
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 537
    :goto_5
    if-eqz v0, :cond_6

    iget-boolean v5, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d

    :goto_6
    if-eq v5, v3, :cond_e

    .line 538
    :cond_6
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_BOOL:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v12, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 539
    iget-boolean v3, p0, Lcom/microsoft/bond/TypeDef;->bonded_type:Z

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeBool(Z)V

    .line 540
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 545
    :goto_7
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 546
    return-void

    .line 500
    .end local v1    # "size3":I
    .end local v2    # "size4":I
    :cond_7
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {p1, v5, v4, v6}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_0

    .line 508
    :cond_8
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {p1, v5, v3, v6}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_1

    :cond_9
    move v1, v4

    .line 511
    goto/16 :goto_2

    .line 521
    .restart local v1    # "size3":I
    :cond_a
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {p1, v5, v10, v6}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_3

    :cond_b
    move v2, v4

    .line 524
    goto :goto_4

    .line 534
    .restart local v2    # "size4":I
    :cond_c
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {p1, v5, v11, v6}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_5

    :cond_d
    move v3, v4

    .line 537
    goto :goto_6

    .line 542
    :cond_e
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_BOOL:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/TypeDef$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v4

    invoke-virtual {p1, v3, v12, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_7
.end method
