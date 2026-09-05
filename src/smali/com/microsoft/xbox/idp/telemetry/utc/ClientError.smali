.class public Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;
.super LMicrosoft/Telemetry/Data;
.source "ClientError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/telemetry/utc/ClientError$Schema;
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
.field private callStack:Ljava/lang/String;

.field private errorCode:Ljava/lang/String;

.field private errorName:Ljava/lang/String;

.field private errorText:Ljava/lang/String;

.field private pageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, LMicrosoft/Telemetry/Data;-><init>()V

    .line 297
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

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
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 1
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCallStack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 241
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 231
    :sswitch_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    goto :goto_0

    .line 233
    :sswitch_1
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    goto :goto_0

    .line 235
    :sswitch_2
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorCode:Ljava/lang/String;

    goto :goto_0

    .line 237
    :sswitch_3
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    goto :goto_0

    .line 239
    :sswitch_4
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    goto :goto_0

    .line 229
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public final getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

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
    .line 444
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 445
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 511
    if-nez p1, :cond_1

    .line 517
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 515
    check-cast v0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;

    .line 517
    .local v0, "that":Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->memberwiseCompareQuick(Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->memberwiseCompareDeep(Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;)Z
    .locals 5
    .param p1, "that"    # Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 537
    const/4 v0, 0x1

    .line 538
    .local v0, "equals":Z
    if-eqz v0, :cond_5

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Data;->memberwiseCompareDeep(LMicrosoft/Telemetry/Data;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 539
    :goto_0
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    if-nez v3, :cond_6

    :cond_0
    move v0, v1

    .line 540
    :goto_1
    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    if-nez v3, :cond_8

    :cond_1
    move v0, v1

    .line 541
    :goto_2
    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorCode:Ljava/lang/String;

    if-nez v3, :cond_a

    :cond_2
    move v0, v1

    .line 542
    :goto_3
    if-eqz v0, :cond_d

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    if-nez v3, :cond_c

    :cond_3
    move v0, v1

    .line 543
    :goto_4
    if-eqz v0, :cond_f

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    if-nez v3, :cond_e

    :cond_4
    move v0, v1

    .line 544
    :goto_5
    return v0

    :cond_5
    move v0, v2

    .line 538
    goto :goto_0

    .line 539
    :cond_6
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_7
    move v0, v2

    goto :goto_1

    .line 540
    :cond_8
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_9
    move v0, v2

    goto :goto_2

    .line 541
    :cond_a
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorCode:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_b
    move v0, v2

    goto :goto_3

    .line 542
    :cond_c
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_d
    move v0, v2

    goto :goto_4

    .line 543
    :cond_e
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_f
    move v0, v2

    goto :goto_5
.end method

.method protected memberwiseCompareQuick(Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;)Z
    .locals 5
    .param p1, "that"    # Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 521
    const/4 v0, 0x1

    .line 522
    .local v0, "equals":Z
    if-eqz v0, :cond_5

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Data;->memberwiseCompareQuick(LMicrosoft/Telemetry/Data;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v2

    .line 523
    :goto_0
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    if-ne v1, v4, :cond_8

    move v0, v2

    .line 524
    :goto_3
    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    if-nez v1, :cond_9

    :cond_0
    move v0, v2

    .line 525
    :goto_4
    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    if-ne v1, v4, :cond_d

    move v0, v2

    .line 526
    :goto_7
    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    if-nez v1, :cond_e

    :cond_1
    move v0, v2

    .line 527
    :goto_8
    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorCode:Ljava/lang/String;

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorCode:Ljava/lang/String;

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    if-ne v1, v4, :cond_12

    move v0, v2

    .line 528
    :goto_b
    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorCode:Ljava/lang/String;

    if-nez v1, :cond_13

    :cond_2
    move v0, v2

    .line 529
    :goto_c
    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    if-nez v1, :cond_15

    move v1, v2

    :goto_d
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    if-nez v4, :cond_16

    move v4, v2

    :goto_e
    if-ne v1, v4, :cond_17

    move v0, v2

    .line 530
    :goto_f
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    if-nez v1, :cond_18

    :cond_3
    move v0, v2

    .line 531
    :goto_10
    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    if-nez v1, :cond_1a

    move v1, v2

    :goto_11
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    if-nez v4, :cond_1b

    move v4, v2

    :goto_12
    if-ne v1, v4, :cond_1c

    move v0, v2

    .line 532
    :goto_13
    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    if-nez v1, :cond_1d

    :cond_4
    move v0, v2

    .line 533
    :goto_14
    return v0

    :cond_5
    move v0, v3

    .line 522
    goto :goto_0

    :cond_6
    move v1, v3

    .line 523
    goto :goto_1

    :cond_7
    move v4, v3

    goto :goto_2

    :cond_8
    move v0, v3

    goto :goto_3

    .line 524
    :cond_9
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_0

    :cond_a
    move v0, v3

    goto :goto_4

    :cond_b
    move v1, v3

    .line 525
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v0, v3

    goto :goto_7

    .line 526
    :cond_e
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_1

    :cond_f
    move v0, v3

    goto :goto_8

    :cond_10
    move v1, v3

    .line 527
    goto :goto_9

    :cond_11
    move v4, v3

    goto :goto_a

    :cond_12
    move v0, v3

    goto :goto_b

    .line 528
    :cond_13
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_2

    :cond_14
    move v0, v3

    goto :goto_c

    :cond_15
    move v1, v3

    .line 529
    goto :goto_d

    :cond_16
    move v4, v3

    goto :goto_e

    :cond_17
    move v0, v3

    goto :goto_f

    .line 530
    :cond_18
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_3

    :cond_19
    move v0, v3

    goto :goto_10

    :cond_1a
    move v1, v3

    .line 531
    goto :goto_11

    :cond_1b
    move v4, v3

    goto :goto_12

    :cond_1c
    move v0, v3

    goto :goto_13

    .line 532
    :cond_1d
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

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
    .line 333
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 334
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 335
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 336
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
    .line 354
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

    .line 342
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
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

    .line 391
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 393
    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Data;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 436
    :goto_0
    return v2

    .line 410
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :sswitch_0
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    .line 430
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    .line 400
    .end local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 402
    .restart local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_3

    .line 404
    :cond_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_2

    .line 433
    .local v1, "isPartial":Z
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    move v2, v1

    .line 436
    goto :goto_0

    .end local v1    # "isPartial":Z
    :cond_2
    move v1, v2

    .line 404
    goto :goto_2

    .line 408
    :cond_3
    iget v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    sparse-switch v3, :sswitch_data_0

    .line 426
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    .line 414
    :sswitch_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    goto :goto_1

    .line 417
    :sswitch_2
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorCode:Ljava/lang/String;

    goto :goto_1

    .line 420
    :sswitch_3
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    goto :goto_1

    .line 423
    :sswitch_4
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    goto :goto_1

    .line 408
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
    .line 357
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 359
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 360
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Data;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 362
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    .line 370
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 371
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    .line 374
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 375
    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorCode:Ljava/lang/String;

    .line 378
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 379
    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    .line 382
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_9

    .line 383
    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    .line 385
    :cond_9
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 386
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 303
    const-string v0, "ClientError"

    const-string v1, "com.microsoft.xbox.idp.telemetry.utc.ClientError"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Data;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    .line 309
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    .line 310
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorCode:Ljava/lang/String;

    .line 311
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    .line 312
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public final setCallStack(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public final setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorCode:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public final setErrorName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public final setErrorText(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 267
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 252
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    goto :goto_0

    .line 255
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    goto :goto_0

    .line 258
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorCode:Ljava/lang/String;

    goto :goto_0

    .line 261
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    goto :goto_0

    .line 264
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    goto :goto_0

    .line 250
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

.method public final setPageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    .line 112
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
    .line 319
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 320
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
    .line 326
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 327
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

    .line 451
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 453
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 456
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 462
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 463
    return-void

    .line 460
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

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

    .line 466
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 467
    .local v0, "canOmitFields":Z
    sget-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 468
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Data;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 470
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0xa

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 471
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 474
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getWstring_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 475
    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v4, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 476
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 482
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorCode:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getWstring_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 483
    :cond_1
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v5, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 484
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 490
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getWstring_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_6

    .line 491
    :cond_2
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 492
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 498
    :goto_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getWstring_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_7

    .line 499
    :cond_3
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v7, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 500
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 506
    :goto_3
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 507
    return-void

    .line 479
    :cond_4
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v4, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_0

    .line 487
    :cond_5
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v5, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1

    .line 495
    :cond_6
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_2

    .line 503
    :cond_7
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v7, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_3
.end method
