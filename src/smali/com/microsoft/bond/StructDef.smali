.class public Lcom/microsoft/bond/StructDef;
.super Ljava/lang/Object;
.source "StructDef.java"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/StructDef$Schema;
    }
.end annotation


# instance fields
.field private base_def:Lcom/microsoft/bond/TypeDef;

.field private fields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/bond/FieldDef;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Lcom/microsoft/bond/Metadata;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    invoke-virtual {p0}, Lcom/microsoft/bond/StructDef;->reset()V

    .line 238
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/microsoft/bond/StructDef$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method

.method private readFieldImpl_base_def(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .locals 3
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p2, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {p2, v1}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 362
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;

    move-result-object v0

    .line 363
    .local v0, "tag1":Lcom/microsoft/bond/ProtocolReader$ListTag;
    iget-object v1, v0, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 365
    iget v1, v0, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 366
    iget-object v1, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    if-nez v1, :cond_0

    new-instance v1, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v1}, Lcom/microsoft/bond/TypeDef;-><init>()V

    iput-object v1, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    :cond_0
    iget-object v1, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v1, p1}, Lcom/microsoft/bond/TypeDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 372
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    .line 373
    return-void

    .line 367
    :cond_2
    iget v1, v0, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method private readFieldImpl_fields(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .locals 5
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p2, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {p2, v3}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 378
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;

    move-result-object v2

    .line 379
    .local v2, "tag1":Lcom/microsoft/bond/ProtocolReader$ListTag;
    iget-object v3, v2, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v3, v4}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 380
    iget-object v3, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    iget v4, v2, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 381
    const/4 v1, 0x0

    .local v1, "i3":I
    :goto_0
    iget v3, v2, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    if-ge v1, v3, :cond_0

    .line 382
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 383
    .local v0, "element2":Lcom/microsoft/bond/FieldDef;
    invoke-virtual {v0, p1}, Lcom/microsoft/bond/FieldDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 384
    iget-object v3, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "element2":Lcom/microsoft/bond/FieldDef;
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    .line 388
    return-void
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
    invoke-virtual {p0}, Lcom/microsoft/bond/StructDef;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 2
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 203
    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 204
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    .line 215
    :goto_0
    return-object v0

    .line 207
    :cond_0
    sget-object v0, Lcom/microsoft/bond/TypeDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 208
    new-instance v0, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v0}, Lcom/microsoft/bond/TypeDef;-><init>()V

    goto :goto_0

    .line 211
    :cond_1
    sget-object v0, Lcom/microsoft/bond/FieldDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 212
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    goto :goto_0

    .line 215
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBase_def()Lcom/microsoft/bond/TypeDef;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 176
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 170
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    goto :goto_0

    .line 172
    :pswitch_1
    iget-object v0, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    goto :goto_0

    .line 174
    :pswitch_2
    iget-object v0, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getFields()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/bond/FieldDef;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMetadata()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Lcom/microsoft/bond/StructDef;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

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
    .line 395
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 396
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 456
    if-nez p1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 460
    check-cast v0, Lcom/microsoft/bond/StructDef;

    .line 462
    .local v0, "that":Lcom/microsoft/bond/StructDef;
    invoke-virtual {p0, v0}, Lcom/microsoft/bond/StructDef;->memberwiseCompareQuick(Lcom/microsoft/bond/StructDef;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/StructDef;->memberwiseCompareDeep(Lcom/microsoft/bond/StructDef;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(Lcom/microsoft/bond/StructDef;)Z
    .locals 8
    .param p1, "that"    # Lcom/microsoft/bond/StructDef;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 475
    const/4 v0, 0x1

    .line 477
    .local v0, "equals":Z
    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    if-nez v4, :cond_5

    :cond_0
    move v0, v5

    .line 478
    :goto_0
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    if-eqz v4, :cond_2

    .line 479
    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    if-nez v4, :cond_7

    move v4, v5

    :goto_1
    iget-object v7, p1, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    if-nez v7, :cond_8

    move v7, v5

    :goto_2
    if-ne v4, v7, :cond_9

    move v0, v5

    .line 480
    :goto_3
    if-eqz v0, :cond_b

    iget-object v4, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    if-nez v4, :cond_a

    :cond_1
    move v0, v5

    .line 482
    :cond_2
    :goto_4
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 483
    const/4 v1, 0x0

    .local v1, "i1":I
    :goto_5
    iget-object v4, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 484
    iget-object v4, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/bond/FieldDef;

    .line 485
    .local v2, "val2":Lcom/microsoft/bond/FieldDef;
    iget-object v4, p1, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/bond/FieldDef;

    .line 486
    .local v3, "val3":Lcom/microsoft/bond/FieldDef;
    if-eqz v0, :cond_e

    if-nez v2, :cond_c

    move v7, v5

    :goto_6
    if-nez v3, :cond_d

    move v4, v5

    :goto_7
    if-ne v7, v4, :cond_e

    move v0, v5

    .line 487
    :goto_8
    if-eqz v0, :cond_10

    if-nez v2, :cond_f

    :cond_3
    move v0, v5

    .line 488
    :goto_9
    if-nez v0, :cond_11

    .line 493
    .end local v1    # "i1":I
    .end local v2    # "val2":Lcom/microsoft/bond/FieldDef;
    .end local v3    # "val3":Lcom/microsoft/bond/FieldDef;
    :cond_4
    return v0

    .line 477
    :cond_5
    iget-object v4, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    iget-object v7, p1, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v4, v7}, Lcom/microsoft/bond/Metadata;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_6
    move v0, v6

    goto :goto_0

    :cond_7
    move v4, v6

    .line 479
    goto :goto_1

    :cond_8
    move v7, v6

    goto :goto_2

    :cond_9
    move v0, v6

    goto :goto_3

    .line 480
    :cond_a
    iget-object v4, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    iget-object v7, p1, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v4, v7}, Lcom/microsoft/bond/TypeDef;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_b
    move v0, v6

    goto :goto_4

    .restart local v1    # "i1":I
    .restart local v2    # "val2":Lcom/microsoft/bond/FieldDef;
    .restart local v3    # "val3":Lcom/microsoft/bond/FieldDef;
    :cond_c
    move v7, v6

    .line 486
    goto :goto_6

    :cond_d
    move v4, v6

    goto :goto_7

    :cond_e
    move v0, v6

    goto :goto_8

    .line 487
    :cond_f
    invoke-virtual {v2, v3}, Lcom/microsoft/bond/FieldDef;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_10
    move v0, v6

    goto :goto_9

    .line 483
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method protected memberwiseCompareQuick(Lcom/microsoft/bond/StructDef;)Z
    .locals 5
    .param p1, "that"    # Lcom/microsoft/bond/StructDef;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 466
    const/4 v0, 0x1

    .line 468
    .local v0, "equals":Z
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iget-object v4, p1, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    if-nez v4, :cond_2

    move v4, v2

    :goto_1
    if-ne v1, v4, :cond_3

    move v0, v2

    .line 469
    :goto_2
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    move v1, v2

    :goto_3
    iget-object v4, p1, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    if-nez v4, :cond_5

    move v4, v2

    :goto_4
    if-ne v1, v4, :cond_6

    move v0, v2

    .line 470
    :goto_5
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    if-nez v1, :cond_7

    :cond_0
    move v0, v2

    .line 471
    :goto_6
    return v0

    :cond_1
    move v1, v3

    .line 468
    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v1, v3

    .line 469
    goto :goto_3

    :cond_5
    move v4, v3

    goto :goto_4

    :cond_6
    move v0, v3

    goto :goto_5

    .line 470
    :cond_7
    iget-object v1, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v1, v4, :cond_0

    :cond_8
    move v0, v3

    goto :goto_6
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
    .line 276
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 277
    invoke-virtual {p0, p1}, Lcom/microsoft/bond/StructDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 278
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 279
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
    .line 297
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

    .line 285
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/StructDef;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/StructDef;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
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
    .line 322
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 326
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 328
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_2

    .line 330
    :cond_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 353
    .local v1, "isPartial":Z
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 355
    return v1

    .line 330
    .end local v1    # "isPartial":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 334
    :cond_2
    iget v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    packed-switch v2, :pswitch_data_0

    .line 346
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 350
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    .line 336
    :pswitch_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v2, v3}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 337
    iget-object v2, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v2, p1}, Lcom/microsoft/bond/Metadata;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    goto :goto_2

    .line 340
    :pswitch_1
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v2}, Lcom/microsoft/bond/StructDef;->readFieldImpl_base_def(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    goto :goto_2

    .line 343
    :pswitch_2
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v2}, Lcom/microsoft/bond/StructDef;->readFieldImpl_fields(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    goto :goto_2

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 300
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 302
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 305
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v1, p1}, Lcom/microsoft/bond/Metadata;->read(Lcom/microsoft/bond/ProtocolReader;)V

    .line 309
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 310
    :cond_2
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v1}, Lcom/microsoft/bond/StructDef;->readFieldImpl_base_def(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    .line 313
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 314
    :cond_4
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v1}, Lcom/microsoft/bond/StructDef;->readFieldImpl_fields(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    .line 316
    :cond_5
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 317
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 244
    const-string v0, "StructDef"

    const-string v1, "com.microsoft.bond.StructDef"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/StructDef;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 249
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    iput-object v0, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    .line 251
    iget-object v0, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public final setBase_def(Lcom/microsoft/bond/TypeDef;)V
    .locals 0
    .param p1, "value"    # Lcom/microsoft/bond/TypeDef;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    .line 63
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 185
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 196
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 187
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/microsoft/bond/Metadata;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    goto :goto_0

    .line 190
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Lcom/microsoft/bond/TypeDef;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    goto :goto_0

    .line 193
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final setFields(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/bond/FieldDef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/bond/FieldDef;>;"
    iput-object p1, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method public final setMetadata(Lcom/microsoft/bond/Metadata;)V
    .locals 0
    .param p1, "value"    # Lcom/microsoft/bond/Metadata;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    .line 49
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
    .line 262
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 263
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
    .line 269
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 270
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

    .line 402
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 404
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/StructDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 407
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/StructDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 413
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 414
    return-void

    .line 411
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/StructDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

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
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 417
    sget-object v7, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v7}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 418
    .local v0, "canOmitFields":Z
    sget-object v7, Lcom/microsoft/bond/StructDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v7, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 421
    sget-object v7, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/StructDef$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v8

    invoke-virtual {p1, v7, v6, v8}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 422
    iget-object v7, p0, Lcom/microsoft/bond/StructDef;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v7, p1, v6}, Lcom/microsoft/bond/Metadata;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 423
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 425
    iget-object v7, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    if-eqz v7, :cond_3

    move v3, v5

    .line 426
    .local v3, "size1":I
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v3, :cond_4

    .line 427
    :cond_0
    sget-object v7, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/StructDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v8

    invoke-virtual {p1, v7, v5, v8}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 428
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v3, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V

    .line 429
    if-eqz v3, :cond_1

    .line 430
    iget-object v5, p0, Lcom/microsoft/bond/StructDef;->base_def:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v5, p1, v6}, Lcom/microsoft/bond/TypeDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 432
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    .line 433
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 438
    :goto_1
    iget-object v5, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 439
    .local v4, "size2":I
    if-eqz v0, :cond_2

    if-eqz v4, :cond_6

    .line 440
    :cond_2
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/StructDef$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v9, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 441
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v4, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V

    .line 442
    iget-object v5, p0, Lcom/microsoft/bond/StructDef;->fields:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/bond/FieldDef;

    .line 443
    .local v2, "item3":Lcom/microsoft/bond/FieldDef;
    invoke-virtual {v2, p1, v6}, Lcom/microsoft/bond/FieldDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    goto :goto_2

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item3":Lcom/microsoft/bond/FieldDef;
    .end local v3    # "size1":I
    .end local v4    # "size2":I
    :cond_3
    move v3, v6

    .line 425
    goto :goto_0

    .line 435
    .restart local v3    # "size1":I
    :cond_4
    sget-object v7, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/StructDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v8

    invoke-virtual {p1, v7, v5, v8}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1

    .line 445
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "size2":I
    :cond_5
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    .line 446
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 451
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 452
    return-void

    .line 448
    :cond_6
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/StructDef$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {p1, v5, v9, v6}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_3
.end method
