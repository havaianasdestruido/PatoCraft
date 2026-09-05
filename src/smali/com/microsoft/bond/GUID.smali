.class public Lcom/microsoft/bond/GUID;
.super Ljava/lang/Object;
.source "GUID.java"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/GUID$Schema;
    }
.end annotation


# instance fields
.field private Data1:I

.field private Data2:S

.field private Data3:S

.field private Data4:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    invoke-virtual {p0}, Lcom/microsoft/bond/GUID;->reset()V

    .line 259
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/microsoft/bond/GUID$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

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
    invoke-virtual {p0}, Lcom/microsoft/bond/GUID;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 1
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getData1()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/microsoft/bond/GUID;->Data1:I

    return v0
.end method

.method public final getData2()S
    .locals 1

    .prologue
    .line 58
    iget-short v0, p0, Lcom/microsoft/bond/GUID;->Data2:S

    return v0
.end method

.method public final getData3()S
    .locals 1

    .prologue
    .line 72
    iget-short v0, p0, Lcom/microsoft/bond/GUID;->Data3:S

    return v0
.end method

.method public final getData4()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/microsoft/bond/GUID;->Data4:J

    return-wide v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 196
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 198
    :pswitch_0
    iget v0, p0, Lcom/microsoft/bond/GUID;->Data1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 200
    :pswitch_1
    iget-short v0, p0, Lcom/microsoft/bond/GUID;->Data2:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 202
    :pswitch_2
    iget-short v0, p0, Lcom/microsoft/bond/GUID;->Data3:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 204
    :pswitch_3
    iget-wide v0, p0, Lcom/microsoft/bond/GUID;->Data4:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lcom/microsoft/bond/GUID;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

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
    .line 387
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 388
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 450
    if-nez p1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 454
    check-cast v0, Lcom/microsoft/bond/GUID;

    .line 456
    .local v0, "that":Lcom/microsoft/bond/GUID;
    invoke-virtual {p0, v0}, Lcom/microsoft/bond/GUID;->memberwiseCompareQuick(Lcom/microsoft/bond/GUID;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/GUID;->memberwiseCompareDeep(Lcom/microsoft/bond/GUID;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(Lcom/microsoft/bond/GUID;)Z
    .locals 1
    .param p1, "that"    # Lcom/microsoft/bond/GUID;

    .prologue
    .line 470
    const/4 v0, 0x1

    .line 472
    .local v0, "equals":Z
    return v0
.end method

.method protected memberwiseCompareQuick(Lcom/microsoft/bond/GUID;)Z
    .locals 8
    .param p1, "that"    # Lcom/microsoft/bond/GUID;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 460
    const/4 v0, 0x1

    .line 462
    .local v0, "equals":Z
    if-eqz v0, :cond_0

    iget v3, p0, Lcom/microsoft/bond/GUID;->Data1:I

    iget v4, p1, Lcom/microsoft/bond/GUID;->Data1:I

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 463
    :goto_0
    if-eqz v0, :cond_1

    iget-short v3, p0, Lcom/microsoft/bond/GUID;->Data2:S

    iget-short v4, p1, Lcom/microsoft/bond/GUID;->Data2:S

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 464
    :goto_1
    if-eqz v0, :cond_2

    iget-short v3, p0, Lcom/microsoft/bond/GUID;->Data3:S

    iget-short v4, p1, Lcom/microsoft/bond/GUID;->Data3:S

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 465
    :goto_2
    if-eqz v0, :cond_3

    iget-wide v4, p0, Lcom/microsoft/bond/GUID;->Data4:J

    iget-wide v6, p1, Lcom/microsoft/bond/GUID;->Data4:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    move v0, v1

    .line 466
    :goto_3
    return v0

    :cond_0
    move v0, v2

    .line 462
    goto :goto_0

    :cond_1
    move v0, v2

    .line 463
    goto :goto_1

    :cond_2
    move v0, v2

    .line 464
    goto :goto_2

    :cond_3
    move v0, v2

    .line 465
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
    .line 294
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 295
    invoke-virtual {p0, p1}, Lcom/microsoft/bond/GUID;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 296
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 297
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
    .line 315
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

    .line 303
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/GUID;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/GUID;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
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
    .line 344
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 348
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 350
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_2

    .line 352
    :cond_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 377
    .local v1, "isPartial":Z
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 379
    return v1

    .line 352
    .end local v1    # "isPartial":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 356
    :cond_2
    iget v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    packed-switch v2, :pswitch_data_0

    .line 370
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 374
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    .line 358
    :pswitch_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readUInt32(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)I

    move-result v2

    iput v2, p0, Lcom/microsoft/bond/GUID;->Data1:I

    goto :goto_2

    .line 361
    :pswitch_1
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readUInt16(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)S

    move-result v2

    iput-short v2, p0, Lcom/microsoft/bond/GUID;->Data2:S

    goto :goto_2

    .line 364
    :pswitch_2
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readUInt16(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)S

    move-result v2

    iput-short v2, p0, Lcom/microsoft/bond/GUID;->Data3:S

    goto :goto_2

    .line 367
    :pswitch_3
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readUInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/microsoft/bond/GUID;->Data4:J

    goto :goto_2

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 318
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 320
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 323
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/microsoft/bond/GUID;->Data1:I

    .line 327
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 328
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readUInt16()S

    move-result v1

    iput-short v1, p0, Lcom/microsoft/bond/GUID;->Data2:S

    .line 331
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 332
    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readUInt16()S

    move-result v1

    iput-short v1, p0, Lcom/microsoft/bond/GUID;->Data3:S

    .line 335
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 336
    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/microsoft/bond/GUID;->Data4:J

    .line 338
    :cond_7
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 339
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 265
    const-string v0, "GUID"

    const-string v1, "com.microsoft.bond.GUID"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/GUID;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 270
    iput v0, p0, Lcom/microsoft/bond/GUID;->Data1:I

    .line 271
    iput-short v0, p0, Lcom/microsoft/bond/GUID;->Data2:S

    .line 272
    iput-short v0, p0, Lcom/microsoft/bond/GUID;->Data3:S

    .line 273
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/microsoft/bond/GUID;->Data4:J

    .line 274
    return-void
.end method

.method public final setData1(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/microsoft/bond/GUID;->Data1:I

    .line 52
    return-void
.end method

.method public final setData2(S)V
    .locals 0
    .param p1, "value"    # S

    .prologue
    .line 65
    iput-short p1, p0, Lcom/microsoft/bond/GUID;->Data2:S

    .line 66
    return-void
.end method

.method public final setData3(S)V
    .locals 0
    .param p1, "value"    # S

    .prologue
    .line 79
    iput-short p1, p0, Lcom/microsoft/bond/GUID;->Data3:S

    .line 80
    return-void
.end method

.method public final setData4(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/microsoft/bond/GUID;->Data4:J

    .line 94
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 2
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 215
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 229
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 217
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/microsoft/bond/GUID;->Data1:I

    goto :goto_0

    .line 220
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lcom/microsoft/bond/GUID;->Data2:S

    goto :goto_0

    .line 223
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lcom/microsoft/bond/GUID;->Data3:S

    goto :goto_0

    .line 226
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/bond/GUID;->Data4:J

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
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
    .line 280
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 281
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
    .line 287
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 288
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

    .line 394
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 396
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/GUID;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 399
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/GUID;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 405
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 406
    return-void

    .line 403
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/GUID;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

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
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 409
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 410
    .local v0, "canOmitFields":Z
    sget-object v1, Lcom/microsoft/bond/GUID$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 413
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/microsoft/bond/GUID;->Data1:I

    int-to-long v2, v1

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 414
    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 415
    iget v1, p0, Lcom/microsoft/bond/GUID;->Data1:I

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeUInt32(I)V

    .line 416
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 421
    :goto_0
    if-eqz v0, :cond_1

    iget-short v1, p0, Lcom/microsoft/bond/GUID;->Data2:S

    int-to-long v2, v1

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 422
    :cond_1
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v7, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 423
    iget-short v1, p0, Lcom/microsoft/bond/GUID;->Data2:S

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeUInt16(S)V

    .line 424
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 429
    :goto_1
    if-eqz v0, :cond_2

    iget-short v1, p0, Lcom/microsoft/bond/GUID;->Data3:S

    int-to-long v2, v1

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    .line 430
    :cond_2
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v8, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 431
    iget-short v1, p0, Lcom/microsoft/bond/GUID;->Data3:S

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeUInt16(S)V

    .line 432
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 437
    :goto_2
    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/microsoft/bond/GUID;->Data4:J

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/bond/Variant;->getUint_value()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    .line 438
    :cond_3
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v9, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 439
    iget-wide v2, p0, Lcom/microsoft/bond/GUID;->Data4:J

    invoke-virtual {p1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeUInt64(J)V

    .line 440
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 445
    :goto_3
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 446
    return-void

    .line 418
    :cond_4
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_0

    .line 426
    :cond_5
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v7, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1

    .line 434
    :cond_6
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v8, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_2

    .line 442
    :cond_7
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT64:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/GUID$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v9, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_3
.end method
