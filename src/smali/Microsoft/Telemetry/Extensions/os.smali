.class public LMicrosoft/Telemetry/Extensions/os;
.super LMicrosoft/Telemetry/Extension;
.source "os.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMicrosoft/Telemetry/Extensions/os$Schema;
    }
.end annotation


# instance fields
.field private expId:Ljava/lang/String;

.field private locale:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, LMicrosoft/Telemetry/Extension;-><init>()V

    .line 194
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 187
    sget-object v0, LMicrosoft/Telemetry/Extensions/os$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

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
    invoke-virtual {p0}, LMicrosoft/Telemetry/Extensions/os;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 1
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExpId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/os;->expId:Ljava/lang/String;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 147
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 143
    :sswitch_0
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/os;->locale:Ljava/lang/String;

    goto :goto_0

    .line 145
    :sswitch_1
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/os;->expId:Ljava/lang/String;

    goto :goto_0

    .line 141
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/os;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 179
    invoke-static {}, LMicrosoft/Telemetry/Extensions/os;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

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
    .line 310
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 311
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 357
    if-nez p1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 361
    check-cast v0, LMicrosoft/Telemetry/Extensions/os;

    .line 363
    .local v0, "that":LMicrosoft/Telemetry/Extensions/os;
    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Extensions/os;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/os;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Extensions/os;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/os;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/os;)Z
    .locals 5
    .param p1, "that"    # LMicrosoft/Telemetry/Extensions/os;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 377
    const/4 v0, 0x1

    .line 378
    .local v0, "equals":Z
    if-eqz v0, :cond_2

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Extension;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extension;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 379
    :goto_0
    if-eqz v0, :cond_4

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/os;->locale:Ljava/lang/String;

    if-nez v3, :cond_3

    :cond_0
    move v0, v1

    .line 380
    :goto_1
    if-eqz v0, :cond_6

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/os;->expId:Ljava/lang/String;

    if-nez v3, :cond_5

    :cond_1
    move v0, v1

    .line 381
    :goto_2
    return v0

    :cond_2
    move v0, v2

    .line 378
    goto :goto_0

    .line 379
    :cond_3
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/os;->locale:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/os;->locale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v0, v2

    goto :goto_1

    .line 380
    :cond_5
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/os;->expId:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/os;->expId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method protected memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/os;)Z
    .locals 5
    .param p1, "that"    # LMicrosoft/Telemetry/Extensions/os;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 367
    const/4 v0, 0x1

    .line 368
    .local v0, "equals":Z
    if-eqz v0, :cond_2

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Extension;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extension;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 369
    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/os;->locale:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/os;->locale:Ljava/lang/String;

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    if-ne v1, v4, :cond_5

    move v0, v2

    .line 370
    :goto_3
    if-eqz v0, :cond_7

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/os;->locale:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_0
    move v0, v2

    .line 371
    :goto_4
    if-eqz v0, :cond_a

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/os;->expId:Ljava/lang/String;

    if-nez v1, :cond_8

    move v1, v2

    :goto_5
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/os;->expId:Ljava/lang/String;

    if-nez v4, :cond_9

    move v4, v2

    :goto_6
    if-ne v1, v4, :cond_a

    move v0, v2

    .line 372
    :goto_7
    if-eqz v0, :cond_c

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/os;->expId:Ljava/lang/String;

    if-nez v1, :cond_b

    :cond_1
    move v0, v2

    .line 373
    :goto_8
    return v0

    :cond_2
    move v0, v3

    .line 368
    goto :goto_0

    :cond_3
    move v1, v3

    .line 369
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3

    .line 370
    :cond_6
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/os;->locale:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/os;->locale:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_0

    :cond_7
    move v0, v3

    goto :goto_4

    :cond_8
    move v1, v3

    .line 371
    goto :goto_5

    :cond_9
    move v4, v3

    goto :goto_6

    :cond_a
    move v0, v3

    goto :goto_7

    .line 372
    :cond_b
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/os;->expId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/os;->expId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_1

    :cond_c
    move v0, v3

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
    .line 227
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 228
    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Extensions/os;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 229
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 230
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
    .line 248
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

    .line 236
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/os;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/os;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-static {p1}, Lcom/microsoft/bond/internal/ReadHelper;->skipPartialStruct(Lcom/microsoft/bond/ProtocolReader;)V

    goto :goto_0
.end method

.method protected readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z
    .locals 5
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

    .line 269
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 271
    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 302
    :goto_0
    return v2

    .line 287
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :sswitch_0
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/os;->locale:Ljava/lang/String;

    .line 297
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    .line 277
    .end local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 279
    .restart local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_3

    .line 281
    :cond_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_2

    .line 300
    .local v1, "isPartial":Z
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    move v2, v1

    .line 302
    goto :goto_0

    .end local v1    # "isPartial":Z
    :cond_2
    move v1, v2

    .line 281
    goto :goto_2

    .line 285
    :cond_3
    iget v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    sparse-switch v3, :sswitch_data_0

    .line 293
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    .line 290
    :sswitch_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/os;->expId:Ljava/lang/String;

    goto :goto_1

    .line 285
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
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
    .line 251
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 253
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 254
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 256
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/os;->locale:Ljava/lang/String;

    .line 260
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 261
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/os;->expId:Ljava/lang/String;

    .line 263
    :cond_3
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 264
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 200
    const-string v0, "os"

    const-string v1, "Microsoft.Telemetry.Extensions.os"

    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/os;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Extension;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/os;->locale:Ljava/lang/String;

    .line 206
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/os;->expId:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public final setExpId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/os;->expId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 156
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 164
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 158
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/os;->locale:Ljava/lang/String;

    goto :goto_0

    .line 161
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/os;->expId:Ljava/lang/String;

    goto :goto_0

    .line 156
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public final setLocale(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/os;->locale:Ljava/lang/String;

    .line 47
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
    .line 213
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 214
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
    .line 220
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 221
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

    .line 317
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 319
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/os;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 322
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/os;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 328
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 329
    return-void

    .line 326
    :cond_0
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/os;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    goto :goto_0
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .locals 5
    .param p1, "writer"    # Lcom/microsoft/bond/ProtocolWriter;
    .param p2, "isBase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x14

    const/16 v3, 0xa

    .line 332
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 333
    .local v0, "canOmitFields":Z
    sget-object v1, LMicrosoft/Telemetry/Extensions/os$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 334
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 336
    if-eqz v0, :cond_0

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/os;->locale:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/os$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 337
    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/os$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 338
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/os;->locale:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 344
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/os;->expId:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/os$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 345
    :cond_1
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/os$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v4, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 346
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/os;->expId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 352
    :goto_1
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 353
    return-void

    .line 341
    :cond_2
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/os$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_0

    .line 349
    :cond_3
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/os$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v4, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1
.end method
