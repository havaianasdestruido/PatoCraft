.class public Lcom/microsoft/bond/FieldDef;
.super Ljava/lang/Object;
.source "FieldDef.java"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/FieldDef$Schema;
    }
.end annotation


# instance fields
.field private id:S

.field private metadata:Lcom/microsoft/bond/Metadata;

.field private type:Lcom/microsoft/bond/TypeDef;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    invoke-virtual {p0}, Lcom/microsoft/bond/FieldDef;->reset()V

    .line 231
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/microsoft/bond/FieldDef$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

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
    invoke-virtual {p0}, Lcom/microsoft/bond/FieldDef;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 2
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 200
    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 201
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    .line 208
    :goto_0
    return-object v0

    .line 204
    :cond_0
    sget-object v0, Lcom/microsoft/bond/TypeDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 205
    new-instance v0, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v0}, Lcom/microsoft/bond/TypeDef;-><init>()V

    goto :goto_0

    .line 208
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 167
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    goto :goto_0

    .line 169
    :pswitch_1
    iget-short v0, p0, Lcom/microsoft/bond/FieldDef;->id:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 171
    :pswitch_2
    iget-object v0, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getId()S
    .locals 1

    .prologue
    .line 55
    iget-short v0, p0, Lcom/microsoft/bond/FieldDef;->id:S

    return v0
.end method

.method public final getMetadata()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lcom/microsoft/bond/FieldDef;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lcom/microsoft/bond/TypeDef;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

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
    .line 353
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 354
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 400
    if-nez p1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 404
    check-cast v0, Lcom/microsoft/bond/FieldDef;

    .line 406
    .local v0, "that":Lcom/microsoft/bond/FieldDef;
    invoke-virtual {p0, v0}, Lcom/microsoft/bond/FieldDef;->memberwiseCompareQuick(Lcom/microsoft/bond/FieldDef;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/FieldDef;->memberwiseCompareDeep(Lcom/microsoft/bond/FieldDef;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(Lcom/microsoft/bond/FieldDef;)Z
    .locals 5
    .param p1, "that"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 417
    const/4 v0, 0x1

    .line 419
    .local v0, "equals":Z
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    if-nez v3, :cond_2

    :cond_0
    move v0, v1

    .line 420
    :goto_0
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    if-nez v3, :cond_4

    :cond_1
    move v0, v1

    .line 421
    :goto_1
    return v0

    .line 419
    :cond_2
    iget-object v3, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    iget-object v4, p1, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/Metadata;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 420
    :cond_4
    iget-object v3, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    iget-object v4, p1, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method protected memberwiseCompareQuick(Lcom/microsoft/bond/FieldDef;)Z
    .locals 3
    .param p1, "that"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 410
    const/4 v0, 0x1

    .line 412
    .local v0, "equals":Z
    if-eqz v0, :cond_0

    iget-short v1, p0, Lcom/microsoft/bond/FieldDef;->id:S

    iget-short v2, p1, Lcom/microsoft/bond/FieldDef;->id:S

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 413
    :goto_0
    return v0

    .line 412
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 265
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 266
    invoke-virtual {p0, p1}, Lcom/microsoft/bond/FieldDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 267
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 268
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
    .line 286
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

    .line 274
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/FieldDef;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/FieldDef;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
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
    .line 311
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 315
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 317
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_2

    .line 319
    :cond_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 343
    .local v1, "isPartial":Z
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 345
    return v1

    .line 319
    .end local v1    # "isPartial":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 323
    :cond_2
    iget v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    packed-switch v2, :pswitch_data_0

    .line 336
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 340
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    .line 325
    :pswitch_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v2, v3}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 326
    iget-object v2, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v2, p1}, Lcom/microsoft/bond/Metadata;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    goto :goto_2

    .line 329
    :pswitch_1
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readUInt16(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)S

    move-result v2

    iput-short v2, p0, Lcom/microsoft/bond/FieldDef;->id:S

    goto :goto_2

    .line 332
    :pswitch_2
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v2, v3}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 333
    iget-object v2, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v2, p1}, Lcom/microsoft/bond/TypeDef;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    goto :goto_2

    .line 323
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
    .line 289
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 291
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 294
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v1, p1}, Lcom/microsoft/bond/Metadata;->read(Lcom/microsoft/bond/ProtocolReader;)V

    .line 298
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 299
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readUInt16()S

    move-result v1

    iput-short v1, p0, Lcom/microsoft/bond/FieldDef;->id:S

    .line 302
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 303
    :cond_4
    iget-object v1, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v1, p1}, Lcom/microsoft/bond/TypeDef;->read(Lcom/microsoft/bond/ProtocolReader;)V

    .line 305
    :cond_5
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 306
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "FieldDef"

    const-string v1, "com.microsoft.bond.FieldDef"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/FieldDef;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 242
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    iput-object v0, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    .line 243
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/microsoft/bond/FieldDef;->id:S

    .line 244
    new-instance v0, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v0}, Lcom/microsoft/bond/TypeDef;-><init>()V

    iput-object v0, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    .line 245
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 193
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 184
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/microsoft/bond/Metadata;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    goto :goto_0

    .line 187
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lcom/microsoft/bond/FieldDef;->id:S

    goto :goto_0

    .line 190
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Lcom/microsoft/bond/TypeDef;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final setId(S)V
    .locals 0
    .param p1, "value"    # S

    .prologue
    .line 62
    iput-short p1, p0, Lcom/microsoft/bond/FieldDef;->id:S

    .line 63
    return-void
.end method

.method public final setMetadata(Lcom/microsoft/bond/Metadata;)V
    .locals 0
    .param p1, "value"    # Lcom/microsoft/bond/Metadata;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    .line 49
    return-void
.end method

.method public final setType(Lcom/microsoft/bond/TypeDef;)V
    .locals 0
    .param p1, "value"    # Lcom/microsoft/bond/TypeDef;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    .line 77
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
    .line 251
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 252
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
    .line 258
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 259
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

    .line 360
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 362
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/FieldDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 365
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/FieldDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 371
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 372
    return-void

    .line 369
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/FieldDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 375
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 376
    .local v0, "canOmitFields":Z
    sget-object v1, Lcom/microsoft/bond/FieldDef$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 379
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/FieldDef$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 380
    iget-object v1, p0, Lcom/microsoft/bond/FieldDef;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v1, p1, v6}, Lcom/microsoft/bond/Metadata;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 381
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 383
    if-eqz v0, :cond_0

    iget-short v1, p0, Lcom/microsoft/bond/FieldDef;->id:S

    int-to-long v2, v1

    invoke-static {}, Lcom/microsoft/bond/FieldDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 384
    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/FieldDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v7, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 385
    iget-short v1, p0, Lcom/microsoft/bond/FieldDef;->id:S

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeUInt16(S)V

    .line 386
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 391
    :goto_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    const/4 v2, 0x2

    invoke-static {}, Lcom/microsoft/bond/FieldDef$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 392
    iget-object v1, p0, Lcom/microsoft/bond/FieldDef;->type:Lcom/microsoft/bond/TypeDef;

    invoke-virtual {v1, p1, v6}, Lcom/microsoft/bond/TypeDef;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 393
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 395
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 396
    return-void

    .line 388
    :cond_1
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/FieldDef$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v7, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_0
.end method
