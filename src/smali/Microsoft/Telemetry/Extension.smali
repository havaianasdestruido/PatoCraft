.class public LMicrosoft/Telemetry/Extension;
.super Ljava/lang/Object;
.source "Extension.java"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMicrosoft/Telemetry/Extension$Schema;
    }
.end annotation


# instance fields
.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual {p0}, LMicrosoft/Telemetry/Extension;->reset()V

    .line 160
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 153
    sget-object v0, LMicrosoft/Telemetry/Extension$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

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
    invoke-virtual {p0}, LMicrosoft/Telemetry/Extension;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 1
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 114
    :pswitch_0
    iget-object v0, p0, LMicrosoft/Telemetry/Extension;->ver:Ljava/lang/String;

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 145
    invoke-static {}, LMicrosoft/Telemetry/Extension;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, LMicrosoft/Telemetry/Extension;->ver:Ljava/lang/String;

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
    .line 264
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 265
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 303
    if-nez p1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 307
    check-cast v0, LMicrosoft/Telemetry/Extension;

    .line 309
    .local v0, "that":LMicrosoft/Telemetry/Extension;
    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Extension;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extension;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Extension;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extension;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(LMicrosoft/Telemetry/Extension;)Z
    .locals 3
    .param p1, "that"    # LMicrosoft/Telemetry/Extension;

    .prologue
    .line 321
    const/4 v0, 0x1

    .line 323
    .local v0, "equals":Z
    if-eqz v0, :cond_2

    iget-object v1, p0, LMicrosoft/Telemetry/Extension;->ver:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    .line 323
    :cond_1
    iget-object v1, p0, LMicrosoft/Telemetry/Extension;->ver:Ljava/lang/String;

    iget-object v2, p1, LMicrosoft/Telemetry/Extension;->ver:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected memberwiseCompareQuick(LMicrosoft/Telemetry/Extension;)Z
    .locals 5
    .param p1, "that"    # LMicrosoft/Telemetry/Extension;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 313
    const/4 v0, 0x1

    .line 315
    .local v0, "equals":Z
    if-eqz v0, :cond_3

    iget-object v1, p0, LMicrosoft/Telemetry/Extension;->ver:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iget-object v4, p1, LMicrosoft/Telemetry/Extension;->ver:Ljava/lang/String;

    if-nez v4, :cond_2

    move v4, v2

    :goto_1
    if-ne v1, v4, :cond_3

    move v0, v2

    .line 316
    :goto_2
    if-eqz v0, :cond_5

    iget-object v1, p0, LMicrosoft/Telemetry/Extension;->ver:Ljava/lang/String;

    if-nez v1, :cond_4

    :cond_0
    move v0, v2

    .line 317
    :goto_3
    return v0

    :cond_1
    move v1, v3

    .line 315
    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    .line 316
    :cond_4
    iget-object v1, p0, LMicrosoft/Telemetry/Extension;->ver:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extension;->ver:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

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
    .line 192
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 193
    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Extension;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 194
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 195
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
    .line 213
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

    .line 201
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
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
    .line 230
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 234
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 236
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_2

    .line 238
    :cond_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 254
    .local v1, "isPartial":Z
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 256
    return v1

    .line 238
    .end local v1    # "isPartial":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 242
    :cond_2
    iget v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    packed-switch v2, :pswitch_data_0

    .line 247
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 251
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    .line 244
    :pswitch_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LMicrosoft/Telemetry/Extension;->ver:Ljava/lang/String;

    goto :goto_2

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .line 216
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 218
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 221
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extension;->ver:Ljava/lang/String;

    .line 224
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 225
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 166
    const-string v0, "Extension"

    const-string v1, "Microsoft.Telemetry.Extension"

    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extension;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string v0, "1.0"

    iput-object v0, p0, LMicrosoft/Telemetry/Extension;->ver:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 127
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extension;->ver:Ljava/lang/String;

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final setVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, LMicrosoft/Telemetry/Extension;->ver:Ljava/lang/String;

    .line 44
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
    .line 178
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 179
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
    .line 185
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 186
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

    .line 271
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 273
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extension;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 276
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 282
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 283
    return-void

    .line 280
    :cond_0
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    goto :goto_0
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .locals 4
    .param p1, "writer"    # Lcom/microsoft/bond/ProtocolWriter;
    .param p2, "isBase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 286
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 287
    .local v0, "canOmitFields":Z
    sget-object v1, LMicrosoft/Telemetry/Extension$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 290
    if-eqz v0, :cond_0

    iget-object v1, p0, LMicrosoft/Telemetry/Extension;->ver:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extension$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 291
    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extension$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 292
    iget-object v1, p0, LMicrosoft/Telemetry/Extension;->ver:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 298
    :goto_0
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 299
    return-void

    .line 295
    :cond_1
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extension$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_0
.end method
