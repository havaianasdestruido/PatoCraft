.class public LMicrosoft/Telemetry/Data;
.super LMicrosoft/Telemetry/Base;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMicrosoft/Telemetry/Data$Schema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TDomain::",
        "Lcom/microsoft/bond/BondSerializable;",
        ">",
        "LMicrosoft/Telemetry/Base;"
    }
.end annotation


# instance fields
.field private baseData:Lcom/microsoft/bond/BondSerializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTDomain;"
        }
    .end annotation
.end field

.field private generic_type_TDomain:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTDomain;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 163
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    invoke-direct {p0}, LMicrosoft/Telemetry/Base;-><init>()V

    .line 164
    invoke-direct {p0}, LMicrosoft/Telemetry/Data;->getGenericTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 165
    .local v0, "genericTypes":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .line 166
    .local v1, "typeIndex":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "typeIndex":I
    .local v2, "typeIndex":I
    aget-object v3, v0, v1

    check-cast v3, Ljava/lang/Class;

    iput-object v3, p0, LMicrosoft/Telemetry/Data;->generic_type_TDomain:Ljava/lang/Class;

    .line 168
    return-void
.end method

.method private getGenericTypeArguments()[Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .line 353
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 354
    .local v1, "superclass":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 355
    .local v0, "actualTypeArguments":[Ljava/lang/reflect/Type;
    return-object v0
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 155
    sget-object v0, LMicrosoft/Telemetry/Data$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method

.method private readFieldImpl_baseData(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .locals 1
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p2, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    :try_start_0
    iget-object v0, p0, LMicrosoft/Telemetry/Data;->generic_type_TDomain:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/bond/BondSerializable;

    iput-object v0, p0, LMicrosoft/Telemetry/Data;->baseData:Lcom/microsoft/bond/BondSerializable;

    .line 282
    iget-object v0, p0, LMicrosoft/Telemetry/Data;->baseData:Lcom/microsoft/bond/BondSerializable;

    invoke-interface {v0, p1}, Lcom/microsoft/bond/BondSerializable;->readNested(Lcom/microsoft/bond/ProtocolReader;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    goto :goto_0

    .line 283
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/microsoft/bond/BondSerializable;
    .locals 1

    .prologue
    .line 23
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
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
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    invoke-virtual {p0}, LMicrosoft/Telemetry/Data;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 1
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 139
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBaseData()Lcom/microsoft/bond/BondSerializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTDomain;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    iget-object v0, p0, LMicrosoft/Telemetry/Data;->baseData:Lcom/microsoft/bond/BondSerializable;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 114
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 116
    :pswitch_0
    iget-object v0, p0, LMicrosoft/Telemetry/Data;->baseData:Lcom/microsoft/bond/BondSerializable;

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 147
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    invoke-static {}, LMicrosoft/Telemetry/Data;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

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
    .line 293
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 294
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    const/4 v1, 0x0

    .line 328
    if-nez p1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 332
    check-cast v0, LMicrosoft/Telemetry/Data;

    .line 334
    .local v0, "that":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Data;->memberwiseCompareQuick(LMicrosoft/Telemetry/Data;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Data;->memberwiseCompareDeep(LMicrosoft/Telemetry/Data;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(LMicrosoft/Telemetry/Data;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMicrosoft/Telemetry/Data",
            "<TTDomain;>;)Z"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    .local p1, "that":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    const/4 v0, 0x1

    .line 347
    .local v0, "equals":Z
    if-eqz v0, :cond_0

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Base;->memberwiseCompareDeep(LMicrosoft/Telemetry/Base;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    .line 347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected memberwiseCompareQuick(LMicrosoft/Telemetry/Data;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMicrosoft/Telemetry/Data",
            "<TTDomain;>;)Z"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    .local p1, "that":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    const/4 v0, 0x1

    .line 339
    .local v0, "equals":Z
    if-eqz v0, :cond_0

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Base;->memberwiseCompareQuick(LMicrosoft/Telemetry/Base;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    .line 339
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
    .line 200
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 201
    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Data;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 202
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 203
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
    .line 221
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
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
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    const/4 v1, 0x0

    .line 209
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Data;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Data;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
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
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 244
    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Base;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 275
    :goto_0
    return v2

    .line 261
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :pswitch_0
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v3}, LMicrosoft/Telemetry/Data;->readFieldImpl_baseData(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    .line 269
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    .line 251
    .end local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 253
    .restart local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_3

    .line 255
    :cond_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_2

    .line 272
    .local v1, "isPartial":Z
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    move v2, v1

    .line 275
    goto :goto_0

    .end local v1    # "isPartial":Z
    :cond_2
    move v1, v2

    .line 255
    goto :goto_2

    .line 259
    :cond_3
    iget v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    packed-switch v3, :pswitch_data_0

    .line 265
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    .line 259
    :pswitch_data_0
    .packed-switch 0x14
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
    .line 224
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 226
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 227
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Base;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 229
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v1}, LMicrosoft/Telemetry/Data;->readFieldImpl_baseData(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    .line 236
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 237
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 174
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    const-string v0, "Data"

    const-string v1, "Microsoft.Telemetry.Data"

    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Data;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 178
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Base;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, LMicrosoft/Telemetry/Data;->baseData:Lcom/microsoft/bond/BondSerializable;

    .line 180
    return-void
.end method

.method public final setBaseData(Lcom/microsoft/bond/BondSerializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTDomain;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    .local p1, "value":Lcom/microsoft/bond/BondSerializable;, "TTDomain;"
    iput-object p1, p0, LMicrosoft/Telemetry/Data;->baseData:Lcom/microsoft/bond/BondSerializable;

    .line 44
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 127
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 132
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 129
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/microsoft/bond/BondSerializable;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Data;->baseData:Lcom/microsoft/bond/BondSerializable;

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
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
    .line 186
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 187
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
    .line 193
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 194
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
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    const/4 v1, 0x0

    .line 300
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 302
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Data;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 305
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Data;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 311
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 312
    return-void

    .line 309
    :cond_0
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Data;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

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
    .line 315
    .local p0, "this":LMicrosoft/Telemetry/Data;, "LMicrosoft/Telemetry/Data<TTDomain;>;"
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 316
    .local v0, "canOmitFields":Z
    sget-object v1, LMicrosoft/Telemetry/Data$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 317
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Base;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 319
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x14

    invoke-static {}, LMicrosoft/Telemetry/Data$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 320
    iget-object v1, p0, LMicrosoft/Telemetry/Data;->baseData:Lcom/microsoft/bond/BondSerializable;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/microsoft/bond/BondSerializable;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 321
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 323
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 324
    return-void
.end method
