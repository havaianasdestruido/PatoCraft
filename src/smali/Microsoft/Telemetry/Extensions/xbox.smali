.class public LMicrosoft/Telemetry/Extensions/xbox;
.super LMicrosoft/Telemetry/Extension;
.source "xbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMicrosoft/Telemetry/Extensions/xbox$Schema;
    }
.end annotation


# instance fields
.field private deviceType:Ljava/lang/String;

.field private eventSequence:Ljava/lang/String;

.field private expiryTimestamp:Ljava/lang/String;

.field private isDevelopmentAccount:Ljava/lang/String;

.field private isTestAccount:Ljava/lang/String;

.field private issueTimestamp:Ljava/lang/String;

.field private sandboxId:Ljava/lang/String;

.field private signedInUsers:Ljava/lang/String;

.field private sti:Ljava/lang/String;

.field private titleId:Ljava/lang/String;

.field private xblDeviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, LMicrosoft/Telemetry/Extension;-><init>()V

    .line 500
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 493
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

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
    invoke-virtual {p0}, LMicrosoft/Telemetry/Extensions/xbox;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 1
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 477
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventSequence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->eventSequence:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiryTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->expiryTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 402
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 426
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 404
    :sswitch_0
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->sti:Ljava/lang/String;

    goto :goto_0

    .line 406
    :sswitch_1
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->eventSequence:Ljava/lang/String;

    goto :goto_0

    .line 408
    :sswitch_2
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->issueTimestamp:Ljava/lang/String;

    goto :goto_0

    .line 410
    :sswitch_3
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->expiryTimestamp:Ljava/lang/String;

    goto :goto_0

    .line 412
    :sswitch_4
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->sandboxId:Ljava/lang/String;

    goto :goto_0

    .line 414
    :sswitch_5
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->deviceType:Ljava/lang/String;

    goto :goto_0

    .line 416
    :sswitch_6
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->xblDeviceId:Ljava/lang/String;

    goto :goto_0

    .line 418
    :sswitch_7
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->signedInUsers:Ljava/lang/String;

    goto :goto_0

    .line 420
    :sswitch_8
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->isDevelopmentAccount:Ljava/lang/String;

    goto :goto_0

    .line 422
    :sswitch_9
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->isTestAccount:Ljava/lang/String;

    goto :goto_0

    .line 424
    :sswitch_a
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->titleId:Ljava/lang/String;

    goto :goto_0

    .line 402
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
        0x3c -> :sswitch_5
        0x46 -> :sswitch_6
        0x50 -> :sswitch_7
        0x5a -> :sswitch_8
        0x64 -> :sswitch_9
        0x6e -> :sswitch_a
    .end sparse-switch
.end method

.method public final getIsDevelopmentAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->isDevelopmentAccount:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsTestAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->isTestAccount:Ljava/lang/String;

    return-object v0
.end method

.method public final getIssueTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->issueTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public final getSandboxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->sandboxId:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 485
    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getSignedInUsers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->signedInUsers:Ljava/lang/String;

    return-object v0
.end method

.method public final getSti()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->sti:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->titleId:Ljava/lang/String;

    return-object v0
.end method

.method public final getXblDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->xblDeviceId:Ljava/lang/String;

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
    .line 688
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 689
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 807
    if-nez p1, :cond_1

    .line 813
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 811
    check-cast v0, LMicrosoft/Telemetry/Extensions/xbox;

    .line 813
    .local v0, "that":LMicrosoft/Telemetry/Extensions/xbox;
    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Extensions/xbox;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/xbox;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Extensions/xbox;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/xbox;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/xbox;)Z
    .locals 5
    .param p1, "that"    # LMicrosoft/Telemetry/Extensions/xbox;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 845
    const/4 v0, 0x1

    .line 846
    .local v0, "equals":Z
    if-eqz v0, :cond_b

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Extension;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extension;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v0, v1

    .line 847
    :goto_0
    if-eqz v0, :cond_d

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->sti:Ljava/lang/String;

    if-nez v3, :cond_c

    :cond_0
    move v0, v1

    .line 848
    :goto_1
    if-eqz v0, :cond_f

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->eventSequence:Ljava/lang/String;

    if-nez v3, :cond_e

    :cond_1
    move v0, v1

    .line 849
    :goto_2
    if-eqz v0, :cond_11

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->issueTimestamp:Ljava/lang/String;

    if-nez v3, :cond_10

    :cond_2
    move v0, v1

    .line 850
    :goto_3
    if-eqz v0, :cond_13

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->expiryTimestamp:Ljava/lang/String;

    if-nez v3, :cond_12

    :cond_3
    move v0, v1

    .line 851
    :goto_4
    if-eqz v0, :cond_15

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->sandboxId:Ljava/lang/String;

    if-nez v3, :cond_14

    :cond_4
    move v0, v1

    .line 852
    :goto_5
    if-eqz v0, :cond_17

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->deviceType:Ljava/lang/String;

    if-nez v3, :cond_16

    :cond_5
    move v0, v1

    .line 853
    :goto_6
    if-eqz v0, :cond_19

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->xblDeviceId:Ljava/lang/String;

    if-nez v3, :cond_18

    :cond_6
    move v0, v1

    .line 854
    :goto_7
    if-eqz v0, :cond_1b

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->signedInUsers:Ljava/lang/String;

    if-nez v3, :cond_1a

    :cond_7
    move v0, v1

    .line 855
    :goto_8
    if-eqz v0, :cond_1d

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->isDevelopmentAccount:Ljava/lang/String;

    if-nez v3, :cond_1c

    :cond_8
    move v0, v1

    .line 856
    :goto_9
    if-eqz v0, :cond_1f

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->isTestAccount:Ljava/lang/String;

    if-nez v3, :cond_1e

    :cond_9
    move v0, v1

    .line 857
    :goto_a
    if-eqz v0, :cond_21

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->titleId:Ljava/lang/String;

    if-nez v3, :cond_20

    :cond_a
    move v0, v1

    .line 858
    :goto_b
    return v0

    :cond_b
    move v0, v2

    .line 846
    goto :goto_0

    .line 847
    :cond_c
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->sti:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->sti:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_d
    move v0, v2

    goto :goto_1

    .line 848
    :cond_e
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->eventSequence:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->eventSequence:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_f
    move v0, v2

    goto :goto_2

    .line 849
    :cond_10
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->issueTimestamp:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->issueTimestamp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_11
    move v0, v2

    goto :goto_3

    .line 850
    :cond_12
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->expiryTimestamp:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->expiryTimestamp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_13
    move v0, v2

    goto :goto_4

    .line 851
    :cond_14
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->sandboxId:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->sandboxId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_15
    move v0, v2

    goto :goto_5

    .line 852
    :cond_16
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->deviceType:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->deviceType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_17
    move v0, v2

    goto :goto_6

    .line 853
    :cond_18
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->xblDeviceId:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->xblDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_19
    move v0, v2

    goto :goto_7

    .line 854
    :cond_1a
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->signedInUsers:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->signedInUsers:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_1b
    move v0, v2

    goto :goto_8

    .line 855
    :cond_1c
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->isDevelopmentAccount:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->isDevelopmentAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_1d
    move v0, v2

    goto :goto_9

    .line 856
    :cond_1e
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->isTestAccount:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->isTestAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_1f
    move v0, v2

    goto/16 :goto_a

    .line 857
    :cond_20
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->titleId:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->titleId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_21
    move v0, v2

    goto/16 :goto_b
.end method

.method protected memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/xbox;)Z
    .locals 5
    .param p1, "that"    # LMicrosoft/Telemetry/Extensions/xbox;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 817
    const/4 v0, 0x1

    .line 818
    .local v0, "equals":Z
    if-eqz v0, :cond_b

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Extension;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extension;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v0, v2

    .line 819
    :goto_0
    if-eqz v0, :cond_e

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->sti:Ljava/lang/String;

    if-nez v1, :cond_c

    move v1, v2

    :goto_1
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->sti:Ljava/lang/String;

    if-nez v4, :cond_d

    move v4, v2

    :goto_2
    if-ne v1, v4, :cond_e

    move v0, v2

    .line 820
    :goto_3
    if-eqz v0, :cond_10

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->sti:Ljava/lang/String;

    if-nez v1, :cond_f

    :cond_0
    move v0, v2

    .line 821
    :goto_4
    if-eqz v0, :cond_13

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->eventSequence:Ljava/lang/String;

    if-nez v1, :cond_11

    move v1, v2

    :goto_5
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->eventSequence:Ljava/lang/String;

    if-nez v4, :cond_12

    move v4, v2

    :goto_6
    if-ne v1, v4, :cond_13

    move v0, v2

    .line 822
    :goto_7
    if-eqz v0, :cond_15

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->eventSequence:Ljava/lang/String;

    if-nez v1, :cond_14

    :cond_1
    move v0, v2

    .line 823
    :goto_8
    if-eqz v0, :cond_18

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->issueTimestamp:Ljava/lang/String;

    if-nez v1, :cond_16

    move v1, v2

    :goto_9
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->issueTimestamp:Ljava/lang/String;

    if-nez v4, :cond_17

    move v4, v2

    :goto_a
    if-ne v1, v4, :cond_18

    move v0, v2

    .line 824
    :goto_b
    if-eqz v0, :cond_1a

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->issueTimestamp:Ljava/lang/String;

    if-nez v1, :cond_19

    :cond_2
    move v0, v2

    .line 825
    :goto_c
    if-eqz v0, :cond_1d

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->expiryTimestamp:Ljava/lang/String;

    if-nez v1, :cond_1b

    move v1, v2

    :goto_d
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->expiryTimestamp:Ljava/lang/String;

    if-nez v4, :cond_1c

    move v4, v2

    :goto_e
    if-ne v1, v4, :cond_1d

    move v0, v2

    .line 826
    :goto_f
    if-eqz v0, :cond_1f

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->expiryTimestamp:Ljava/lang/String;

    if-nez v1, :cond_1e

    :cond_3
    move v0, v2

    .line 827
    :goto_10
    if-eqz v0, :cond_22

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->sandboxId:Ljava/lang/String;

    if-nez v1, :cond_20

    move v1, v2

    :goto_11
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->sandboxId:Ljava/lang/String;

    if-nez v4, :cond_21

    move v4, v2

    :goto_12
    if-ne v1, v4, :cond_22

    move v0, v2

    .line 828
    :goto_13
    if-eqz v0, :cond_24

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->sandboxId:Ljava/lang/String;

    if-nez v1, :cond_23

    :cond_4
    move v0, v2

    .line 829
    :goto_14
    if-eqz v0, :cond_27

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->deviceType:Ljava/lang/String;

    if-nez v1, :cond_25

    move v1, v2

    :goto_15
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->deviceType:Ljava/lang/String;

    if-nez v4, :cond_26

    move v4, v2

    :goto_16
    if-ne v1, v4, :cond_27

    move v0, v2

    .line 830
    :goto_17
    if-eqz v0, :cond_29

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->deviceType:Ljava/lang/String;

    if-nez v1, :cond_28

    :cond_5
    move v0, v2

    .line 831
    :goto_18
    if-eqz v0, :cond_2c

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->xblDeviceId:Ljava/lang/String;

    if-nez v1, :cond_2a

    move v1, v2

    :goto_19
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->xblDeviceId:Ljava/lang/String;

    if-nez v4, :cond_2b

    move v4, v2

    :goto_1a
    if-ne v1, v4, :cond_2c

    move v0, v2

    .line 832
    :goto_1b
    if-eqz v0, :cond_2e

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->xblDeviceId:Ljava/lang/String;

    if-nez v1, :cond_2d

    :cond_6
    move v0, v2

    .line 833
    :goto_1c
    if-eqz v0, :cond_31

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->signedInUsers:Ljava/lang/String;

    if-nez v1, :cond_2f

    move v1, v2

    :goto_1d
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->signedInUsers:Ljava/lang/String;

    if-nez v4, :cond_30

    move v4, v2

    :goto_1e
    if-ne v1, v4, :cond_31

    move v0, v2

    .line 834
    :goto_1f
    if-eqz v0, :cond_33

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->signedInUsers:Ljava/lang/String;

    if-nez v1, :cond_32

    :cond_7
    move v0, v2

    .line 835
    :goto_20
    if-eqz v0, :cond_36

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->isDevelopmentAccount:Ljava/lang/String;

    if-nez v1, :cond_34

    move v1, v2

    :goto_21
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->isDevelopmentAccount:Ljava/lang/String;

    if-nez v4, :cond_35

    move v4, v2

    :goto_22
    if-ne v1, v4, :cond_36

    move v0, v2

    .line 836
    :goto_23
    if-eqz v0, :cond_38

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->isDevelopmentAccount:Ljava/lang/String;

    if-nez v1, :cond_37

    :cond_8
    move v0, v2

    .line 837
    :goto_24
    if-eqz v0, :cond_3b

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->isTestAccount:Ljava/lang/String;

    if-nez v1, :cond_39

    move v1, v2

    :goto_25
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->isTestAccount:Ljava/lang/String;

    if-nez v4, :cond_3a

    move v4, v2

    :goto_26
    if-ne v1, v4, :cond_3b

    move v0, v2

    .line 838
    :goto_27
    if-eqz v0, :cond_3d

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->isTestAccount:Ljava/lang/String;

    if-nez v1, :cond_3c

    :cond_9
    move v0, v2

    .line 839
    :goto_28
    if-eqz v0, :cond_40

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->titleId:Ljava/lang/String;

    if-nez v1, :cond_3e

    move v1, v2

    :goto_29
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->titleId:Ljava/lang/String;

    if-nez v4, :cond_3f

    move v4, v2

    :goto_2a
    if-ne v1, v4, :cond_40

    move v0, v2

    .line 840
    :goto_2b
    if-eqz v0, :cond_42

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->titleId:Ljava/lang/String;

    if-nez v1, :cond_41

    :cond_a
    move v0, v2

    .line 841
    :goto_2c
    return v0

    :cond_b
    move v0, v3

    .line 818
    goto/16 :goto_0

    :cond_c
    move v1, v3

    .line 819
    goto/16 :goto_1

    :cond_d
    move v4, v3

    goto/16 :goto_2

    :cond_e
    move v0, v3

    goto/16 :goto_3

    .line 820
    :cond_f
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->sti:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->sti:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_0

    :cond_10
    move v0, v3

    goto/16 :goto_4

    :cond_11
    move v1, v3

    .line 821
    goto/16 :goto_5

    :cond_12
    move v4, v3

    goto/16 :goto_6

    :cond_13
    move v0, v3

    goto/16 :goto_7

    .line 822
    :cond_14
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->eventSequence:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->eventSequence:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_1

    :cond_15
    move v0, v3

    goto/16 :goto_8

    :cond_16
    move v1, v3

    .line 823
    goto/16 :goto_9

    :cond_17
    move v4, v3

    goto/16 :goto_a

    :cond_18
    move v0, v3

    goto/16 :goto_b

    .line 824
    :cond_19
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->issueTimestamp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->issueTimestamp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_2

    :cond_1a
    move v0, v3

    goto/16 :goto_c

    :cond_1b
    move v1, v3

    .line 825
    goto/16 :goto_d

    :cond_1c
    move v4, v3

    goto/16 :goto_e

    :cond_1d
    move v0, v3

    goto/16 :goto_f

    .line 826
    :cond_1e
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->expiryTimestamp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->expiryTimestamp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_3

    :cond_1f
    move v0, v3

    goto/16 :goto_10

    :cond_20
    move v1, v3

    .line 827
    goto/16 :goto_11

    :cond_21
    move v4, v3

    goto/16 :goto_12

    :cond_22
    move v0, v3

    goto/16 :goto_13

    .line 828
    :cond_23
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->sandboxId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->sandboxId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_4

    :cond_24
    move v0, v3

    goto/16 :goto_14

    :cond_25
    move v1, v3

    .line 829
    goto/16 :goto_15

    :cond_26
    move v4, v3

    goto/16 :goto_16

    :cond_27
    move v0, v3

    goto/16 :goto_17

    .line 830
    :cond_28
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->deviceType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->deviceType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_5

    :cond_29
    move v0, v3

    goto/16 :goto_18

    :cond_2a
    move v1, v3

    .line 831
    goto/16 :goto_19

    :cond_2b
    move v4, v3

    goto/16 :goto_1a

    :cond_2c
    move v0, v3

    goto/16 :goto_1b

    .line 832
    :cond_2d
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->xblDeviceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->xblDeviceId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_6

    :cond_2e
    move v0, v3

    goto/16 :goto_1c

    :cond_2f
    move v1, v3

    .line 833
    goto/16 :goto_1d

    :cond_30
    move v4, v3

    goto/16 :goto_1e

    :cond_31
    move v0, v3

    goto/16 :goto_1f

    .line 834
    :cond_32
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->signedInUsers:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->signedInUsers:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_7

    :cond_33
    move v0, v3

    goto/16 :goto_20

    :cond_34
    move v1, v3

    .line 835
    goto/16 :goto_21

    :cond_35
    move v4, v3

    goto/16 :goto_22

    :cond_36
    move v0, v3

    goto/16 :goto_23

    .line 836
    :cond_37
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->isDevelopmentAccount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->isDevelopmentAccount:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_8

    :cond_38
    move v0, v3

    goto/16 :goto_24

    :cond_39
    move v1, v3

    .line 837
    goto/16 :goto_25

    :cond_3a
    move v4, v3

    goto/16 :goto_26

    :cond_3b
    move v0, v3

    goto/16 :goto_27

    .line 838
    :cond_3c
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->isTestAccount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->isTestAccount:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_9

    :cond_3d
    move v0, v3

    goto/16 :goto_28

    :cond_3e
    move v1, v3

    .line 839
    goto/16 :goto_29

    :cond_3f
    move v4, v3

    goto/16 :goto_2a

    :cond_40
    move v0, v3

    goto/16 :goto_2b

    .line 840
    :cond_41
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->titleId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/xbox;->titleId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_a

    :cond_42
    move v0, v3

    goto/16 :goto_2c
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
    .line 542
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 543
    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Extensions/xbox;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 544
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 545
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
    .line 563
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

    .line 551
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/xbox;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/xbox;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
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

    .line 620
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 622
    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 680
    :goto_0
    return v2

    .line 638
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :sswitch_0
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->sti:Ljava/lang/String;

    .line 675
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    .line 628
    .end local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 630
    .restart local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_3

    .line 632
    :cond_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_2

    .line 678
    .local v1, "isPartial":Z
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    move v2, v1

    .line 680
    goto :goto_0

    .end local v1    # "isPartial":Z
    :cond_2
    move v1, v2

    .line 632
    goto :goto_2

    .line 636
    :cond_3
    iget v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    sparse-switch v3, :sswitch_data_0

    .line 671
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    .line 641
    :sswitch_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->eventSequence:Ljava/lang/String;

    goto :goto_1

    .line 644
    :sswitch_2
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->issueTimestamp:Ljava/lang/String;

    goto :goto_1

    .line 647
    :sswitch_3
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->expiryTimestamp:Ljava/lang/String;

    goto :goto_1

    .line 650
    :sswitch_4
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->sandboxId:Ljava/lang/String;

    goto :goto_1

    .line 653
    :sswitch_5
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->deviceType:Ljava/lang/String;

    goto :goto_1

    .line 656
    :sswitch_6
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->xblDeviceId:Ljava/lang/String;

    goto :goto_1

    .line 659
    :sswitch_7
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->signedInUsers:Ljava/lang/String;

    goto :goto_1

    .line 662
    :sswitch_8
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->isDevelopmentAccount:Ljava/lang/String;

    goto :goto_1

    .line 665
    :sswitch_9
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->isTestAccount:Ljava/lang/String;

    goto :goto_1

    .line 668
    :sswitch_a
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/xbox;->titleId:Ljava/lang/String;

    goto/16 :goto_1

    .line 636
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
        0x3c -> :sswitch_5
        0x46 -> :sswitch_6
        0x50 -> :sswitch_7
        0x5a -> :sswitch_8
        0x64 -> :sswitch_9
        0x6e -> :sswitch_a
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
    .line 566
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 568
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 569
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 571
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 572
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->sti:Ljava/lang/String;

    .line 575
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 576
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->eventSequence:Ljava/lang/String;

    .line 579
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 580
    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->issueTimestamp:Ljava/lang/String;

    .line 583
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 584
    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->expiryTimestamp:Ljava/lang/String;

    .line 587
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_9

    .line 588
    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->sandboxId:Ljava/lang/String;

    .line 591
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_b

    .line 592
    :cond_a
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->deviceType:Ljava/lang/String;

    .line 595
    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_d

    .line 596
    :cond_c
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->xblDeviceId:Ljava/lang/String;

    .line 599
    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_f

    .line 600
    :cond_e
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->signedInUsers:Ljava/lang/String;

    .line 603
    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_11

    .line 604
    :cond_10
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->isDevelopmentAccount:Ljava/lang/String;

    .line 607
    :cond_11
    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_13

    .line 608
    :cond_12
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->isTestAccount:Ljava/lang/String;

    .line 611
    :cond_13
    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_15

    .line 612
    :cond_14
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->titleId:Ljava/lang/String;

    .line 614
    :cond_15
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 615
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 506
    const-string v0, "xbox"

    const-string v1, "Microsoft.Telemetry.Extensions.xbox"

    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/xbox;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 510
    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Extension;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->sti:Ljava/lang/String;

    .line 512
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->eventSequence:Ljava/lang/String;

    .line 513
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->issueTimestamp:Ljava/lang/String;

    .line 514
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->expiryTimestamp:Ljava/lang/String;

    .line 515
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->sandboxId:Ljava/lang/String;

    .line 516
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->deviceType:Ljava/lang/String;

    .line 517
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->xblDeviceId:Ljava/lang/String;

    .line 518
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->signedInUsers:Ljava/lang/String;

    .line 519
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->isDevelopmentAccount:Ljava/lang/String;

    .line 520
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->isTestAccount:Ljava/lang/String;

    .line 521
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/xbox;->titleId:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public final setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/xbox;->deviceType:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public final setEventSequence(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/xbox;->eventSequence:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public final setExpiryTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/xbox;->expiryTimestamp:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 435
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 470
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 437
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/xbox;->sti:Ljava/lang/String;

    goto :goto_0

    .line 440
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/xbox;->eventSequence:Ljava/lang/String;

    goto :goto_0

    .line 443
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/xbox;->issueTimestamp:Ljava/lang/String;

    goto :goto_0

    .line 446
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/xbox;->expiryTimestamp:Ljava/lang/String;

    goto :goto_0

    .line 449
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/xbox;->sandboxId:Ljava/lang/String;

    goto :goto_0

    .line 452
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_5
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/xbox;->deviceType:Ljava/lang/String;

    goto :goto_0

    .line 455
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_6
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/xbox;->xblDeviceId:Ljava/lang/String;

    goto :goto_0

    .line 458
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_7
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/xbox;->signedInUsers:Ljava/lang/String;

    goto :goto_0

    .line 461
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_8
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/xbox;->isDevelopmentAccount:Ljava/lang/String;

    goto :goto_0

    .line 464
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_9
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/xbox;->isTestAccount:Ljava/lang/String;

    goto :goto_0

    .line 467
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_a
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/xbox;->titleId:Ljava/lang/String;

    goto :goto_0

    .line 435
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
        0x3c -> :sswitch_5
        0x46 -> :sswitch_6
        0x50 -> :sswitch_7
        0x5a -> :sswitch_8
        0x64 -> :sswitch_9
        0x6e -> :sswitch_a
    .end sparse-switch
.end method

.method public final setIsDevelopmentAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/xbox;->isDevelopmentAccount:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public final setIsTestAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/xbox;->isTestAccount:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public final setIssueTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/xbox;->issueTimestamp:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public final setSandboxId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/xbox;->sandboxId:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public final setSignedInUsers(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/xbox;->signedInUsers:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public final setSti(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/xbox;->sti:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public final setTitleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/xbox;->titleId:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public final setXblDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/xbox;->xblDeviceId:Ljava/lang/String;

    .line 158
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
    .line 528
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 529
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
    .line 535
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 536
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

    .line 695
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 697
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/xbox;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 700
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/xbox;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 706
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 707
    return-void

    .line 704
    :cond_0
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/xbox;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

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

    .line 710
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 711
    .local v0, "canOmitFields":Z
    sget-object v1, LMicrosoft/Telemetry/Extensions/xbox$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 712
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 714
    if-eqz v0, :cond_0

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->sti:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_b

    .line 715
    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 716
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->sti:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 722
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->eventSequence:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_c

    .line 723
    :cond_1
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v4, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 724
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->eventSequence:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 730
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->issueTimestamp:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_d

    .line 731
    :cond_2
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v5, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 732
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->issueTimestamp:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 738
    :goto_2
    if-eqz v0, :cond_3

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->expiryTimestamp:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_e

    .line 739
    :cond_3
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 740
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->expiryTimestamp:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 746
    :goto_3
    if-eqz v0, :cond_4

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->sandboxId:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_f

    .line 747
    :cond_4
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v7, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 748
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->sandboxId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 754
    :goto_4
    if-eqz v0, :cond_5

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->deviceType:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_10

    .line 755
    :cond_5
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x3c

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 756
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->deviceType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 762
    :goto_5
    if-eqz v0, :cond_6

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->xblDeviceId:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_11

    .line 763
    :cond_6
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x46

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 764
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->xblDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 770
    :goto_6
    if-eqz v0, :cond_7

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->signedInUsers:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$700()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_12

    .line 771
    :cond_7
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x50

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$700()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 772
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->signedInUsers:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 778
    :goto_7
    if-eqz v0, :cond_8

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->isDevelopmentAccount:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$800()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_13

    .line 779
    :cond_8
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x5a

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$800()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 780
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->isDevelopmentAccount:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 786
    :goto_8
    if-eqz v0, :cond_9

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->isTestAccount:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$900()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_14

    .line 787
    :cond_9
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x64

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$900()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 788
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->isTestAccount:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 794
    :goto_9
    if-eqz v0, :cond_a

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->titleId:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$1000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_15

    .line 795
    :cond_a
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x6e

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$1000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 796
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/xbox;->titleId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 802
    :goto_a
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 803
    return-void

    .line 719
    :cond_b
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_0

    .line 727
    :cond_c
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v4, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_1

    .line 735
    :cond_d
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v5, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_2

    .line 743
    :cond_e
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_3

    .line 751
    :cond_f
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v7, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_4

    .line 759
    :cond_10
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x3c

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_5

    .line 767
    :cond_11
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x46

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_6

    .line 775
    :cond_12
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x50

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$700()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_7

    .line 783
    :cond_13
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x5a

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$800()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_8

    .line 791
    :cond_14
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x64

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$900()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_9

    .line 799
    :cond_15
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x6e

    invoke-static {}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->access$1000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_a
.end method
