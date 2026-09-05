.class public LMicrosoft/Telemetry/Extensions/device;
.super LMicrosoft/Telemetry/Extension;
.source "device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMicrosoft/Telemetry/Extensions/device$Schema;
    }
.end annotation


# instance fields
.field private authId:Ljava/lang/String;

.field private authSecId:Ljava/lang/String;

.field private deviceClass:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private localId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, LMicrosoft/Telemetry/Extension;-><init>()V

    .line 298
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 291
    sget-object v0, LMicrosoft/Telemetry/Extensions/device$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

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
    invoke-virtual {p0}, LMicrosoft/Telemetry/Extensions/device;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 1
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAuthId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/device;->authId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthSecId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/device;->authSecId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/device;->deviceClass:Ljava/lang/String;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 230
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 242
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 232
    :sswitch_0
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/device;->id:Ljava/lang/String;

    goto :goto_0

    .line 234
    :sswitch_1
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/device;->localId:Ljava/lang/String;

    goto :goto_0

    .line 236
    :sswitch_2
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/device;->authId:Ljava/lang/String;

    goto :goto_0

    .line 238
    :sswitch_3
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/device;->authSecId:Ljava/lang/String;

    goto :goto_0

    .line 240
    :sswitch_4
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/device;->deviceClass:Ljava/lang/String;

    goto :goto_0

    .line 230
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/device;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/device;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 283
    invoke-static {}, LMicrosoft/Telemetry/Extensions/device;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

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
    .line 438
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 439
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 509
    if-nez p1, :cond_1

    .line 515
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 513
    check-cast v0, LMicrosoft/Telemetry/Extensions/device;

    .line 515
    .local v0, "that":LMicrosoft/Telemetry/Extensions/device;
    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Extensions/device;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/device;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Extensions/device;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/device;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/device;)Z
    .locals 5
    .param p1, "that"    # LMicrosoft/Telemetry/Extensions/device;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 535
    const/4 v0, 0x1

    .line 536
    .local v0, "equals":Z
    if-eqz v0, :cond_5

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Extension;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extension;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 537
    :goto_0
    if-eqz v0, :cond_7

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/device;->id:Ljava/lang/String;

    if-nez v3, :cond_6

    :cond_0
    move v0, v1

    .line 538
    :goto_1
    if-eqz v0, :cond_9

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/device;->localId:Ljava/lang/String;

    if-nez v3, :cond_8

    :cond_1
    move v0, v1

    .line 539
    :goto_2
    if-eqz v0, :cond_b

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/device;->authId:Ljava/lang/String;

    if-nez v3, :cond_a

    :cond_2
    move v0, v1

    .line 540
    :goto_3
    if-eqz v0, :cond_d

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/device;->authSecId:Ljava/lang/String;

    if-nez v3, :cond_c

    :cond_3
    move v0, v1

    .line 541
    :goto_4
    if-eqz v0, :cond_f

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/device;->deviceClass:Ljava/lang/String;

    if-nez v3, :cond_e

    :cond_4
    move v0, v1

    .line 542
    :goto_5
    return v0

    :cond_5
    move v0, v2

    .line 536
    goto :goto_0

    .line 537
    :cond_6
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/device;->id:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/device;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_7
    move v0, v2

    goto :goto_1

    .line 538
    :cond_8
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/device;->localId:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/device;->localId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_9
    move v0, v2

    goto :goto_2

    .line 539
    :cond_a
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/device;->authId:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/device;->authId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_b
    move v0, v2

    goto :goto_3

    .line 540
    :cond_c
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/device;->authSecId:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/device;->authSecId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_d
    move v0, v2

    goto :goto_4

    .line 541
    :cond_e
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/device;->deviceClass:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/device;->deviceClass:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_f
    move v0, v2

    goto :goto_5
.end method

.method protected memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/device;)Z
    .locals 5
    .param p1, "that"    # LMicrosoft/Telemetry/Extensions/device;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 519
    const/4 v0, 0x1

    .line 520
    .local v0, "equals":Z
    if-eqz v0, :cond_5

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Extension;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extension;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v2

    .line 521
    :goto_0
    if-eqz v0, :cond_8

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->id:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/device;->id:Ljava/lang/String;

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    if-ne v1, v4, :cond_8

    move v0, v2

    .line 522
    :goto_3
    if-eqz v0, :cond_a

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->id:Ljava/lang/String;

    if-nez v1, :cond_9

    :cond_0
    move v0, v2

    .line 523
    :goto_4
    if-eqz v0, :cond_d

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->localId:Ljava/lang/String;

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/device;->localId:Ljava/lang/String;

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    if-ne v1, v4, :cond_d

    move v0, v2

    .line 524
    :goto_7
    if-eqz v0, :cond_f

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->localId:Ljava/lang/String;

    if-nez v1, :cond_e

    :cond_1
    move v0, v2

    .line 525
    :goto_8
    if-eqz v0, :cond_12

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->authId:Ljava/lang/String;

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/device;->authId:Ljava/lang/String;

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    if-ne v1, v4, :cond_12

    move v0, v2

    .line 526
    :goto_b
    if-eqz v0, :cond_14

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->authId:Ljava/lang/String;

    if-nez v1, :cond_13

    :cond_2
    move v0, v2

    .line 527
    :goto_c
    if-eqz v0, :cond_17

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->authSecId:Ljava/lang/String;

    if-nez v1, :cond_15

    move v1, v2

    :goto_d
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/device;->authSecId:Ljava/lang/String;

    if-nez v4, :cond_16

    move v4, v2

    :goto_e
    if-ne v1, v4, :cond_17

    move v0, v2

    .line 528
    :goto_f
    if-eqz v0, :cond_19

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->authSecId:Ljava/lang/String;

    if-nez v1, :cond_18

    :cond_3
    move v0, v2

    .line 529
    :goto_10
    if-eqz v0, :cond_1c

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->deviceClass:Ljava/lang/String;

    if-nez v1, :cond_1a

    move v1, v2

    :goto_11
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/device;->deviceClass:Ljava/lang/String;

    if-nez v4, :cond_1b

    move v4, v2

    :goto_12
    if-ne v1, v4, :cond_1c

    move v0, v2

    .line 530
    :goto_13
    if-eqz v0, :cond_1e

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->deviceClass:Ljava/lang/String;

    if-nez v1, :cond_1d

    :cond_4
    move v0, v2

    .line 531
    :goto_14
    return v0

    :cond_5
    move v0, v3

    .line 520
    goto :goto_0

    :cond_6
    move v1, v3

    .line 521
    goto :goto_1

    :cond_7
    move v4, v3

    goto :goto_2

    :cond_8
    move v0, v3

    goto :goto_3

    .line 522
    :cond_9
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/device;->id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_0

    :cond_a
    move v0, v3

    goto :goto_4

    :cond_b
    move v1, v3

    .line 523
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v0, v3

    goto :goto_7

    .line 524
    :cond_e
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->localId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/device;->localId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_1

    :cond_f
    move v0, v3

    goto :goto_8

    :cond_10
    move v1, v3

    .line 525
    goto :goto_9

    :cond_11
    move v4, v3

    goto :goto_a

    :cond_12
    move v0, v3

    goto :goto_b

    .line 526
    :cond_13
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->authId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/device;->authId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_2

    :cond_14
    move v0, v3

    goto :goto_c

    :cond_15
    move v1, v3

    .line 527
    goto :goto_d

    :cond_16
    move v4, v3

    goto :goto_e

    :cond_17
    move v0, v3

    goto :goto_f

    .line 528
    :cond_18
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->authSecId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/device;->authSecId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_3

    :cond_19
    move v0, v3

    goto :goto_10

    :cond_1a
    move v1, v3

    .line 529
    goto :goto_11

    :cond_1b
    move v4, v3

    goto :goto_12

    :cond_1c
    move v0, v3

    goto :goto_13

    .line 530
    :cond_1d
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->deviceClass:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/device;->deviceClass:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_4

    :cond_1e
    move v0, v3

    goto :goto_14
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
    .line 334
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 335
    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Extensions/device;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 336
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 337
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
    .line 355
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

    .line 343
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/device;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/device;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
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

    .line 388
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 390
    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 430
    :goto_0
    return v2

    .line 406
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :sswitch_0
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/device;->id:Ljava/lang/String;

    .line 425
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    .line 396
    .end local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 398
    .restart local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_3

    .line 400
    :cond_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_2

    .line 428
    .local v1, "isPartial":Z
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    move v2, v1

    .line 430
    goto :goto_0

    .end local v1    # "isPartial":Z
    :cond_2
    move v1, v2

    .line 400
    goto :goto_2

    .line 404
    :cond_3
    iget v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    sparse-switch v3, :sswitch_data_0

    .line 421
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    .line 409
    :sswitch_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/device;->localId:Ljava/lang/String;

    goto :goto_1

    .line 412
    :sswitch_2
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/device;->authId:Ljava/lang/String;

    goto :goto_1

    .line 415
    :sswitch_3
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/device;->authSecId:Ljava/lang/String;

    goto :goto_1

    .line 418
    :sswitch_4
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/device;->deviceClass:Ljava/lang/String;

    goto :goto_1

    .line 404
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
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
    .line 358
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 360
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 361
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 363
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->id:Ljava/lang/String;

    .line 367
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 368
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->localId:Ljava/lang/String;

    .line 371
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 372
    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->authId:Ljava/lang/String;

    .line 375
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 376
    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->authSecId:Ljava/lang/String;

    .line 379
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_9

    .line 380
    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->deviceClass:Ljava/lang/String;

    .line 382
    :cond_9
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 383
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 304
    const-string v0, "device"

    const-string v1, "Microsoft.Telemetry.Extensions.device"

    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/device;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Extension;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/device;->id:Ljava/lang/String;

    .line 310
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/device;->localId:Ljava/lang/String;

    .line 311
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/device;->authId:Ljava/lang/String;

    .line 312
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/device;->authSecId:Ljava/lang/String;

    .line 313
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/device;->deviceClass:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public final setAuthId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/device;->authId:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public final setAuthSecId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/device;->authSecId:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public final setDeviceClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/device;->deviceClass:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 251
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 268
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 253
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/device;->id:Ljava/lang/String;

    goto :goto_0

    .line 256
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/device;->localId:Ljava/lang/String;

    goto :goto_0

    .line 259
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/device;->authId:Ljava/lang/String;

    goto :goto_0

    .line 262
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/device;->authSecId:Ljava/lang/String;

    goto :goto_0

    .line 265
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/device;->deviceClass:Ljava/lang/String;

    goto :goto_0

    .line 251
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/device;->id:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public final setLocalId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/device;->localId:Ljava/lang/String;

    .line 70
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
    .line 320
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 321
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
    .line 327
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 328
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

    .line 445
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 447
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/device;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 450
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/device;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 456
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 457
    return-void

    .line 454
    :cond_0
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/device;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

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
    const/16 v7, 0x32

    const/16 v6, 0x28

    const/16 v5, 0x1e

    const/16 v4, 0x14

    const/16 v3, 0xa

    .line 460
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 461
    .local v0, "canOmitFields":Z
    sget-object v1, LMicrosoft/Telemetry/Extensions/device$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 462
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 464
    if-eqz v0, :cond_0

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->id:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/device$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 465
    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/device$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 466
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 472
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->localId:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/device$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_6

    .line 473
    :cond_1
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/device$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v4, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 474
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->localId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 480
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->authId:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/device$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_7

    .line 481
    :cond_2
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/device$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v5, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 482
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->authId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 488
    :goto_2
    if-eqz v0, :cond_3

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->authSecId:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/device$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_8

    .line 489
    :cond_3
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/device$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 490
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->authSecId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 496
    :goto_3
    if-eqz v0, :cond_4

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->deviceClass:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/device$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_9

    .line 497
    :cond_4
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/device$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v7, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 498
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/device;->deviceClass:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 504
    :goto_4
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 505
    return-void

    .line 469
    :cond_5
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/device$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_0

    .line 477
    :cond_6
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/device$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v4, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_1

    .line 485
    :cond_7
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/device$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v5, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_2

    .line 493
    :cond_8
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/device$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_3

    .line 501
    :cond_9
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/device$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v7, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_4
.end method
