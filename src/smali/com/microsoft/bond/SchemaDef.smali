.class public Lcom/microsoft/bond/SchemaDef;
.super Ljava/lang/Object;
.source "SchemaDef.java"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/SchemaDef$Schema;
    }
.end annotation


# instance fields
.field private root:Lcom/microsoft/bond/TypeDef;

.field private structs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/bond/StructDef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->reset()V

    .line 199
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/microsoft/bond/SchemaDef$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method

.method private readFieldImpl_structs(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .locals 5
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p2, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {p2, v3}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 314
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;

    move-result-object v2

    .line 315
    .local v2, "tag1":Lcom/microsoft/bond/ProtocolReader$ListTag;
    iget-object v3, v2, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v3, v4}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 316
    iget-object v3, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    iget v4, v2, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 317
    const/4 v1, 0x0

    .local v1, "i3":I
    :goto_0
    iget v3, v2, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    if-ge v1, v3, :cond_0

    .line 318
    new-instance v0, Lcom/microsoft/bond/StructDef;

    invoke-direct {v0}, Lcom/microsoft/bond/StructDef;-><init>()V

    .line 319
    .local v0, "element2":Lcom/microsoft/bond/StructDef;
    invoke-virtual {v0, p1}, Lcom/microsoft/bond/StructDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 320
    iget-object v3, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v0    # "element2":Lcom/microsoft/bond/StructDef;
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    .line 324
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
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 2
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 168
    sget-object v0, Lcom/microsoft/bond/StructDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 169
    new-instance v0, Lcom/microsoft/bond/StructDef;

    invoke-direct {v0}, Lcom/microsoft/bond/StructDef;-><init>()V

    .line 176
    :goto_0
    return-object v0

    .line 172
    :cond_0
    sget-object v0, Lcom/microsoft/bond/TypeDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 173
    new-instance v0, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v0}, Lcom/microsoft/bond/TypeDef;-><init>()V

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 144
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getRoot()Lcom/microsoft/bond/TypeDef;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/microsoft/bond/SchemaDef;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getStructs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/bond/StructDef;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

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
    .line 331
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 332
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 379
    if-nez p1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 383
    check-cast v0, Lcom/microsoft/bond/SchemaDef;

    .line 385
    .local v0, "that":Lcom/microsoft/bond/SchemaDef;
    invoke-virtual {p0, v0}, Lcom/microsoft/bond/SchemaDef;->memberwiseCompareQuick(Lcom/microsoft/bond/SchemaDef;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/SchemaDef;->memberwiseCompareDeep(Lcom/microsoft/bond/SchemaDef;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(Lcom/microsoft/bond/SchemaDef;)Z
    .locals 8
    .param p1, "that"    # Lcom/microsoft/bond/SchemaDef;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 397
    const/4 v0, 0x1

    .line 399
    .local v0, "equals":Z
    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 400
    const/4 v1, 0x0

    .local v1, "i1":I
    :goto_0
    iget-object v6, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 401
    iget-object v6, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/bond/StructDef;

    .line 402
    .local v2, "val2":Lcom/microsoft/bond/StructDef;
    iget-object v6, p1, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/bond/StructDef;

    .line 403
    .local v3, "val3":Lcom/microsoft/bond/StructDef;
    if-eqz v0, :cond_5

    if-nez v2, :cond_3

    move v7, v4

    :goto_1
    if-nez v3, :cond_4

    move v6, v4

    :goto_2
    if-ne v7, v6, :cond_5

    move v0, v4

    .line 404
    :goto_3
    if-eqz v0, :cond_7

    if-nez v2, :cond_6

    :cond_0
    move v0, v4

    .line 405
    :goto_4
    if-nez v0, :cond_8

    .line 410
    .end local v1    # "i1":I
    .end local v2    # "val2":Lcom/microsoft/bond/StructDef;
    .end local v3    # "val3":Lcom/microsoft/bond/StructDef;
    :cond_1
    if-eqz v0, :cond_a

    iget-object v6, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    if-nez v6, :cond_9

    :cond_2
    move v0, v4

    .line 411
    :goto_5
    return v0

    .restart local v1    # "i1":I
    .restart local v2    # "val2":Lcom/microsoft/bond/StructDef;
    .restart local v3    # "val3":Lcom/microsoft/bond/StructDef;
    :cond_3
    move v7, v5

    .line 403
    goto :goto_1

    :cond_4
    move v6, v5

    goto :goto_2

    :cond_5
    move v0, v5

    goto :goto_3

    .line 404
    :cond_6
    invoke-virtual {v2, v3}, Lcom/microsoft/bond/StructDef;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_7
    move v0, v5

    goto :goto_4

    .line 400
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v1    # "i1":I
    .end local v2    # "val2":Lcom/microsoft/bond/StructDef;
    .end local v3    # "val3":Lcom/microsoft/bond/StructDef;
    :cond_9
    iget-object v6, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    iget-object v7, p1, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v6, v7}, Lcom/microsoft/bond/TypeDef;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_a
    move v0, v5

    goto :goto_5
.end method

.method protected memberwiseCompareQuick(Lcom/microsoft/bond/SchemaDef;)Z
    .locals 5
    .param p1, "that"    # Lcom/microsoft/bond/SchemaDef;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 389
    const/4 v0, 0x1

    .line 391
    .local v0, "equals":Z
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iget-object v4, p1, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    move v4, v2

    :goto_1
    if-ne v1, v4, :cond_3

    move v0, v2

    .line 392
    :goto_2
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    :cond_0
    move v0, v2

    .line 393
    :goto_3
    return v0

    :cond_1
    move v1, v3

    .line 391
    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    .line 392
    :cond_4
    iget-object v1, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v1, v4, :cond_0

    :cond_5
    move v0, v3

    goto :goto_3
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
    .line 236
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 237
    invoke-virtual {p0, p1}, Lcom/microsoft/bond/SchemaDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 238
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 239
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
    .line 257
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

    .line 245
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/SchemaDef;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/SchemaDef;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
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
    .line 278
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 282
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 284
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_2

    .line 286
    :cond_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 306
    .local v1, "isPartial":Z
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 308
    return v1

    .line 286
    .end local v1    # "isPartial":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 290
    :cond_2
    iget v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    packed-switch v2, :pswitch_data_0

    .line 299
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 303
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    .line 292
    :pswitch_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v2}, Lcom/microsoft/bond/SchemaDef;->readFieldImpl_structs(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    goto :goto_2

    .line 295
    :pswitch_1
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v2, v3}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 296
    iget-object v2, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v2, p1}, Lcom/microsoft/bond/TypeDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    goto :goto_2

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
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
    .line 260
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 262
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 265
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v1}, Lcom/microsoft/bond/SchemaDef;->readFieldImpl_structs(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    .line 269
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v1, p1}, Lcom/microsoft/bond/TypeDef;->read(Lcom/microsoft/bond/ProtocolReader;)V

    .line 272
    :cond_3
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 273
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "SchemaDef"

    const-string v1, "com.microsoft.bond.SchemaDef"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/SchemaDef;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    .line 215
    :goto_0
    new-instance v0, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v0}, Lcom/microsoft/bond/TypeDef;-><init>()V

    iput-object v0, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    .line 216
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 161
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 155
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    goto :goto_0

    .line 158
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Lcom/microsoft/bond/TypeDef;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setRoot(Lcom/microsoft/bond/TypeDef;)V
    .locals 0
    .param p1, "value"    # Lcom/microsoft/bond/TypeDef;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    .line 60
    return-void
.end method

.method public final setStructs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/bond/StructDef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/bond/StructDef;>;"
    iput-object p1, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    .line 46
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
    .line 222
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 223
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
    .line 229
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 230
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

    .line 338
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 340
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/SchemaDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 343
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/SchemaDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 349
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 350
    return-void

    .line 347
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/SchemaDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

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
    const/4 v7, 0x0

    .line 353
    sget-object v4, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v4}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 354
    .local v0, "canOmitFields":Z
    sget-object v4, Lcom/microsoft/bond/SchemaDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v4, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 357
    iget-object v4, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 358
    .local v3, "size1":I
    if-eqz v0, :cond_0

    if-eqz v3, :cond_2

    .line 359
    :cond_0
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/SchemaDef$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v7, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 360
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v3, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V

    .line 361
    iget-object v4, p0, Lcom/microsoft/bond/SchemaDef;->structs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/bond/StructDef;

    .line 362
    .local v2, "item2":Lcom/microsoft/bond/StructDef;
    invoke-virtual {v2, p1, v7}, Lcom/microsoft/bond/StructDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    goto :goto_0

    .line 364
    .end local v2    # "item2":Lcom/microsoft/bond/StructDef;
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    .line 365
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 370
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    const/4 v5, 0x1

    invoke-static {}, Lcom/microsoft/bond/SchemaDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 371
    iget-object v4, p0, Lcom/microsoft/bond/SchemaDef;->root:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v4, p1, v7}, Lcom/microsoft/bond/TypeDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 372
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 374
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 375
    return-void

    .line 367
    :cond_2
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/SchemaDef$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v7, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1
.end method
