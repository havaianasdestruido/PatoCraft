.class public Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;
.super LMicrosoft/Telemetry/Data;
.source "ServiceError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError$Schema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LMicrosoft/Telemetry/Data",
        "<",
        "Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;",
        ">;"
    }
.end annotation


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorName:Ljava/lang/String;

.field private errorText:Ljava/lang/String;

.field private pageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, LMicrosoft/Telemetry/Data;-><init>()V

    .line 263
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

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
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 1
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorName:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorText:Ljava/lang/String;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 210
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 202
    :sswitch_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorName:Ljava/lang/String;

    goto :goto_0

    .line 204
    :sswitch_1
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorText:Ljava/lang/String;

    goto :goto_0

    .line 206
    :sswitch_2
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorCode:Ljava/lang/String;

    goto :goto_0

    .line 208
    :sswitch_3
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->pageName:Ljava/lang/String;

    goto :goto_0

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
    .end sparse-switch
.end method

.method public final getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 248
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

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
    .line 402
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 403
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 461
    if-nez p1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 465
    check-cast v0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;

    .line 467
    .local v0, "that":Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->memberwiseCompareQuick(Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->memberwiseCompareDeep(Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;)Z
    .locals 5
    .param p1, "that"    # Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 485
    const/4 v0, 0x1

    .line 486
    .local v0, "equals":Z
    if-eqz v0, :cond_4

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Data;->memberwiseCompareDeep(LMicrosoft/Telemetry/Data;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 487
    :goto_0
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorName:Ljava/lang/String;

    if-nez v3, :cond_5

    :cond_0
    move v0, v1

    .line 488
    :goto_1
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorText:Ljava/lang/String;

    if-nez v3, :cond_7

    :cond_1
    move v0, v1

    .line 489
    :goto_2
    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorCode:Ljava/lang/String;

    if-nez v3, :cond_9

    :cond_2
    move v0, v1

    .line 490
    :goto_3
    if-eqz v0, :cond_c

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->pageName:Ljava/lang/String;

    if-nez v3, :cond_b

    :cond_3
    move v0, v1

    .line 491
    :goto_4
    return v0

    :cond_4
    move v0, v2

    .line 486
    goto :goto_0

    .line 487
    :cond_5
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorName:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_6
    move v0, v2

    goto :goto_1

    .line 488
    :cond_7
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorText:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_8
    move v0, v2

    goto :goto_2

    .line 489
    :cond_9
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorCode:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_a
    move v0, v2

    goto :goto_3

    .line 490
    :cond_b
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->pageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->pageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method protected memberwiseCompareQuick(Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;)Z
    .locals 5
    .param p1, "that"    # Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 471
    const/4 v0, 0x1

    .line 472
    .local v0, "equals":Z
    if-eqz v0, :cond_4

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Data;->memberwiseCompareQuick(LMicrosoft/Telemetry/Data;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v2

    .line 473
    :goto_0
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorName:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorName:Ljava/lang/String;

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    if-ne v1, v4, :cond_7

    move v0, v2

    .line 474
    :goto_3
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorName:Ljava/lang/String;

    if-nez v1, :cond_8

    :cond_0
    move v0, v2

    .line 475
    :goto_4
    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorText:Ljava/lang/String;

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorText:Ljava/lang/String;

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    if-ne v1, v4, :cond_c

    move v0, v2

    .line 476
    :goto_7
    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorText:Ljava/lang/String;

    if-nez v1, :cond_d

    :cond_1
    move v0, v2

    .line 477
    :goto_8
    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorCode:Ljava/lang/String;

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorCode:Ljava/lang/String;

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    if-ne v1, v4, :cond_11

    move v0, v2

    .line 478
    :goto_b
    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorCode:Ljava/lang/String;

    if-nez v1, :cond_12

    :cond_2
    move v0, v2

    .line 479
    :goto_c
    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->pageName:Ljava/lang/String;

    if-nez v1, :cond_14

    move v1, v2

    :goto_d
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->pageName:Ljava/lang/String;

    if-nez v4, :cond_15

    move v4, v2

    :goto_e
    if-ne v1, v4, :cond_16

    move v0, v2

    .line 480
    :goto_f
    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->pageName:Ljava/lang/String;

    if-nez v1, :cond_17

    :cond_3
    move v0, v2

    .line 481
    :goto_10
    return v0

    :cond_4
    move v0, v3

    .line 472
    goto :goto_0

    :cond_5
    move v1, v3

    .line 473
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_3

    .line 474
    :cond_8
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_0

    :cond_9
    move v0, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 475
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v0, v3

    goto :goto_7

    .line 476
    :cond_d
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_1

    :cond_e
    move v0, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 477
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a

    :cond_11
    move v0, v3

    goto :goto_b

    .line 478
    :cond_12
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_2

    :cond_13
    move v0, v3

    goto :goto_c

    :cond_14
    move v1, v3

    .line 479
    goto :goto_d

    :cond_15
    move v4, v3

    goto :goto_e

    :cond_16
    move v0, v3

    goto :goto_f

    .line 480
    :cond_17
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->pageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->pageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_3

    :cond_18
    move v0, v3

    goto :goto_10
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
    .line 298
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 299
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 300
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 301
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
    .line 319
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

    .line 307
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
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

    .line 352
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 354
    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Data;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 394
    :goto_0
    return v2

    .line 371
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :sswitch_0
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorName:Ljava/lang/String;

    .line 388
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    .line 361
    .end local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 363
    .restart local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_3

    .line 365
    :cond_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_2

    .line 391
    .local v1, "isPartial":Z
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    move v2, v1

    .line 394
    goto :goto_0

    .end local v1    # "isPartial":Z
    :cond_2
    move v1, v2

    .line 365
    goto :goto_2

    .line 369
    :cond_3
    iget v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    sparse-switch v3, :sswitch_data_0

    .line 384
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    .line 375
    :sswitch_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorText:Ljava/lang/String;

    goto :goto_1

    .line 378
    :sswitch_2
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorCode:Ljava/lang/String;

    goto :goto_1

    .line 381
    :sswitch_3
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->pageName:Ljava/lang/String;

    goto :goto_1

    .line 369
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
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
    .line 322
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 324
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 325
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Data;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 327
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorName:Ljava/lang/String;

    .line 335
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 336
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorText:Ljava/lang/String;

    .line 339
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 340
    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorCode:Ljava/lang/String;

    .line 343
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 344
    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->pageName:Ljava/lang/String;

    .line 346
    :cond_7
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 347
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 269
    const-string v0, "ServiceError"

    const-string v1, "com.microsoft.xbox.idp.telemetry.utc.ServiceError"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Data;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorName:Ljava/lang/String;

    .line 275
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorText:Ljava/lang/String;

    .line 276
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorCode:Ljava/lang/String;

    .line 277
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->pageName:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public final setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorCode:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public final setErrorName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public final setErrorText(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorText:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 233
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 221
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorName:Ljava/lang/String;

    goto :goto_0

    .line 224
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorText:Ljava/lang/String;

    goto :goto_0

    .line 227
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorCode:Ljava/lang/String;

    goto :goto_0

    .line 230
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->pageName:Ljava/lang/String;

    goto :goto_0

    .line 219
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
    .end sparse-switch
.end method

.method public final setPageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->pageName:Ljava/lang/String;

    .line 95
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
    .line 284
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 285
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
    .line 291
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 292
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

    .line 409
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 411
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 414
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 420
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 421
    return-void

    .line 418
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    goto :goto_0
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .locals 7
    .param p1, "writer"    # Lcom/microsoft/bond/ProtocolWriter;
    .param p2, "isBase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x28

    const/16 v5, 0x1e

    const/16 v4, 0x14

    .line 424
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 425
    .local v0, "canOmitFields":Z
    sget-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 426
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Data;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 428
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0xa

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 429
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 432
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorText:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getWstring_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 433
    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v4, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 434
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 440
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorCode:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getWstring_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 441
    :cond_1
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v5, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 442
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 448
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->pageName:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getWstring_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 449
    :cond_2
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 450
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->pageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 456
    :goto_2
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 457
    return-void

    .line 437
    :cond_3
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v4, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_0

    .line 445
    :cond_4
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v5, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1

    .line 453
    :cond_5
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_2
.end method
