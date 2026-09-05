.class public Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;
.super LMicrosoft/Telemetry/Base;
.source "CommonData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;
    }
.end annotation


# instance fields
.field private accessibilityInfo:Ljava/lang/String;

.field private additionalInfo:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appSessionId:Ljava/lang/String;

.field private clientLanguage:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private eventVersion:Ljava/lang/String;

.field private network:I

.field private sandboxId:Ljava/lang/String;

.field private titleDeviceId:Ljava/lang/String;

.field private titleSessionId:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private xsapiVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0}, LMicrosoft/Telemetry/Base;-><init>()V

    .line 586
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 579
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/microsoft/bond/BondSerializable;
    .locals 1

    .prologue
    .line 27
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
    .line 24
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 1
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 563
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAccessibilityInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdditionalInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 478
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 506
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 480
    :sswitch_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    goto :goto_0

    .line 482
    :sswitch_1
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    goto :goto_0

    .line 484
    :sswitch_2
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    goto :goto_0

    .line 486
    :sswitch_3
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    goto :goto_0

    .line 488
    :sswitch_4
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    goto :goto_0

    .line 490
    :sswitch_5
    iget v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 492
    :sswitch_6
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    goto :goto_0

    .line 494
    :sswitch_7
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    goto :goto_0

    .line 496
    :sswitch_8
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    goto :goto_0

    .line 498
    :sswitch_9
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    goto :goto_0

    .line 500
    :sswitch_a
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    goto :goto_0

    .line 502
    :sswitch_b
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    goto :goto_0

    .line 504
    :sswitch_c
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    goto :goto_0

    .line 478
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
        0x78 -> :sswitch_b
        0x82 -> :sswitch_c
    .end sparse-switch
.end method

.method public final getNetwork()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    return v0
.end method

.method public final getSandboxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 571
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final getXsapiVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

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
    .line 857
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 858
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 940
    if-nez p1, :cond_1

    .line 946
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 944
    check-cast v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    .line 946
    .local v0, "that":Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->memberwiseCompareQuick(Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->memberwiseCompareDeep(Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;)Z
    .locals 5
    .param p1, "that"    # Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 981
    const/4 v0, 0x1

    .line 982
    .local v0, "equals":Z
    if-eqz v0, :cond_c

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Base;->memberwiseCompareDeep(LMicrosoft/Telemetry/Base;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v0, v1

    .line 983
    :goto_0
    if-eqz v0, :cond_e

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    if-nez v3, :cond_d

    :cond_0
    move v0, v1

    .line 984
    :goto_1
    if-eqz v0, :cond_10

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    if-nez v3, :cond_f

    :cond_1
    move v0, v1

    .line 985
    :goto_2
    if-eqz v0, :cond_12

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    if-nez v3, :cond_11

    :cond_2
    move v0, v1

    .line 986
    :goto_3
    if-eqz v0, :cond_14

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    if-nez v3, :cond_13

    :cond_3
    move v0, v1

    .line 987
    :goto_4
    if-eqz v0, :cond_16

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    if-nez v3, :cond_15

    :cond_4
    move v0, v1

    .line 988
    :goto_5
    if-eqz v0, :cond_18

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    if-nez v3, :cond_17

    :cond_5
    move v0, v1

    .line 989
    :goto_6
    if-eqz v0, :cond_1a

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    if-nez v3, :cond_19

    :cond_6
    move v0, v1

    .line 990
    :goto_7
    if-eqz v0, :cond_1c

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    if-nez v3, :cond_1b

    :cond_7
    move v0, v1

    .line 991
    :goto_8
    if-eqz v0, :cond_1e

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    if-nez v3, :cond_1d

    :cond_8
    move v0, v1

    .line 992
    :goto_9
    if-eqz v0, :cond_20

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    if-nez v3, :cond_1f

    :cond_9
    move v0, v1

    .line 993
    :goto_a
    if-eqz v0, :cond_22

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    if-nez v3, :cond_21

    :cond_a
    move v0, v1

    .line 994
    :goto_b
    if-eqz v0, :cond_24

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    if-nez v3, :cond_23

    :cond_b
    move v0, v1

    .line 995
    :goto_c
    return v0

    :cond_c
    move v0, v2

    .line 982
    goto :goto_0

    .line 983
    :cond_d
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_e
    move v0, v2

    goto :goto_1

    .line 984
    :cond_f
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_10
    move v0, v2

    goto :goto_2

    .line 985
    :cond_11
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_12
    move v0, v2

    goto :goto_3

    .line 986
    :cond_13
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_14
    move v0, v2

    goto :goto_4

    .line 987
    :cond_15
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_16
    move v0, v2

    goto :goto_5

    .line 988
    :cond_17
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_18
    move v0, v2

    goto :goto_6

    .line 989
    :cond_19
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_1a
    move v0, v2

    goto :goto_7

    .line 990
    :cond_1b
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_1c
    move v0, v2

    goto :goto_8

    .line 991
    :cond_1d
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_1e
    move v0, v2

    goto/16 :goto_9

    .line 992
    :cond_1f
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_20
    move v0, v2

    goto/16 :goto_a

    .line 993
    :cond_21
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_22
    move v0, v2

    goto/16 :goto_b

    .line 994
    :cond_23
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_24
    move v0, v2

    goto/16 :goto_c
.end method

.method protected memberwiseCompareQuick(Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;)Z
    .locals 5
    .param p1, "that"    # Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 950
    const/4 v0, 0x1

    .line 951
    .local v0, "equals":Z
    if-eqz v0, :cond_c

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Base;->memberwiseCompareQuick(LMicrosoft/Telemetry/Base;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v0, v2

    .line 952
    :goto_0
    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    if-nez v1, :cond_d

    move v1, v2

    :goto_1
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    if-nez v4, :cond_e

    move v4, v2

    :goto_2
    if-ne v1, v4, :cond_f

    move v0, v2

    .line 953
    :goto_3
    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    if-nez v1, :cond_10

    :cond_0
    move v0, v2

    .line 954
    :goto_4
    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    if-nez v1, :cond_12

    move v1, v2

    :goto_5
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    if-nez v4, :cond_13

    move v4, v2

    :goto_6
    if-ne v1, v4, :cond_14

    move v0, v2

    .line 955
    :goto_7
    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    if-nez v1, :cond_15

    :cond_1
    move v0, v2

    .line 956
    :goto_8
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    if-nez v1, :cond_17

    move v1, v2

    :goto_9
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    if-nez v4, :cond_18

    move v4, v2

    :goto_a
    if-ne v1, v4, :cond_19

    move v0, v2

    .line 957
    :goto_b
    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    if-nez v1, :cond_1a

    :cond_2
    move v0, v2

    .line 958
    :goto_c
    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    if-nez v1, :cond_1c

    move v1, v2

    :goto_d
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    if-nez v4, :cond_1d

    move v4, v2

    :goto_e
    if-ne v1, v4, :cond_1e

    move v0, v2

    .line 959
    :goto_f
    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    if-nez v1, :cond_1f

    :cond_3
    move v0, v2

    .line 960
    :goto_10
    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    if-nez v1, :cond_21

    move v1, v2

    :goto_11
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    if-nez v4, :cond_22

    move v4, v2

    :goto_12
    if-ne v1, v4, :cond_23

    move v0, v2

    .line 961
    :goto_13
    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    if-nez v1, :cond_24

    :cond_4
    move v0, v2

    .line 962
    :goto_14
    if-eqz v0, :cond_26

    iget v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    iget v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    if-ne v1, v4, :cond_26

    move v0, v2

    .line 963
    :goto_15
    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    if-nez v1, :cond_27

    move v1, v2

    :goto_16
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    if-nez v4, :cond_28

    move v4, v2

    :goto_17
    if-ne v1, v4, :cond_29

    move v0, v2

    .line 964
    :goto_18
    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    if-nez v1, :cond_2a

    :cond_5
    move v0, v2

    .line 965
    :goto_19
    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    if-nez v1, :cond_2c

    move v1, v2

    :goto_1a
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    if-nez v4, :cond_2d

    move v4, v2

    :goto_1b
    if-ne v1, v4, :cond_2e

    move v0, v2

    .line 966
    :goto_1c
    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    if-nez v1, :cond_2f

    :cond_6
    move v0, v2

    .line 967
    :goto_1d
    if-eqz v0, :cond_33

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    if-nez v1, :cond_31

    move v1, v2

    :goto_1e
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    if-nez v4, :cond_32

    move v4, v2

    :goto_1f
    if-ne v1, v4, :cond_33

    move v0, v2

    .line 968
    :goto_20
    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    if-nez v1, :cond_34

    :cond_7
    move v0, v2

    .line 969
    :goto_21
    if-eqz v0, :cond_38

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    if-nez v1, :cond_36

    move v1, v2

    :goto_22
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    if-nez v4, :cond_37

    move v4, v2

    :goto_23
    if-ne v1, v4, :cond_38

    move v0, v2

    .line 970
    :goto_24
    if-eqz v0, :cond_3a

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    if-nez v1, :cond_39

    :cond_8
    move v0, v2

    .line 971
    :goto_25
    if-eqz v0, :cond_3d

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    if-nez v1, :cond_3b

    move v1, v2

    :goto_26
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    if-nez v4, :cond_3c

    move v4, v2

    :goto_27
    if-ne v1, v4, :cond_3d

    move v0, v2

    .line 972
    :goto_28
    if-eqz v0, :cond_3f

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    if-nez v1, :cond_3e

    :cond_9
    move v0, v2

    .line 973
    :goto_29
    if-eqz v0, :cond_42

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    if-nez v1, :cond_40

    move v1, v2

    :goto_2a
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    if-nez v4, :cond_41

    move v4, v2

    :goto_2b
    if-ne v1, v4, :cond_42

    move v0, v2

    .line 974
    :goto_2c
    if-eqz v0, :cond_44

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    if-nez v1, :cond_43

    :cond_a
    move v0, v2

    .line 975
    :goto_2d
    if-eqz v0, :cond_47

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    if-nez v1, :cond_45

    move v1, v2

    :goto_2e
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    if-nez v4, :cond_46

    move v4, v2

    :goto_2f
    if-ne v1, v4, :cond_47

    move v0, v2

    .line 976
    :goto_30
    if-eqz v0, :cond_49

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    if-nez v1, :cond_48

    :cond_b
    move v0, v2

    .line 977
    :goto_31
    return v0

    :cond_c
    move v0, v3

    .line 951
    goto/16 :goto_0

    :cond_d
    move v1, v3

    .line 952
    goto/16 :goto_1

    :cond_e
    move v4, v3

    goto/16 :goto_2

    :cond_f
    move v0, v3

    goto/16 :goto_3

    .line 953
    :cond_10
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_0

    :cond_11
    move v0, v3

    goto/16 :goto_4

    :cond_12
    move v1, v3

    .line 954
    goto/16 :goto_5

    :cond_13
    move v4, v3

    goto/16 :goto_6

    :cond_14
    move v0, v3

    goto/16 :goto_7

    .line 955
    :cond_15
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_1

    :cond_16
    move v0, v3

    goto/16 :goto_8

    :cond_17
    move v1, v3

    .line 956
    goto/16 :goto_9

    :cond_18
    move v4, v3

    goto/16 :goto_a

    :cond_19
    move v0, v3

    goto/16 :goto_b

    .line 957
    :cond_1a
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_2

    :cond_1b
    move v0, v3

    goto/16 :goto_c

    :cond_1c
    move v1, v3

    .line 958
    goto/16 :goto_d

    :cond_1d
    move v4, v3

    goto/16 :goto_e

    :cond_1e
    move v0, v3

    goto/16 :goto_f

    .line 959
    :cond_1f
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_3

    :cond_20
    move v0, v3

    goto/16 :goto_10

    :cond_21
    move v1, v3

    .line 960
    goto/16 :goto_11

    :cond_22
    move v4, v3

    goto/16 :goto_12

    :cond_23
    move v0, v3

    goto/16 :goto_13

    .line 961
    :cond_24
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_4

    :cond_25
    move v0, v3

    goto/16 :goto_14

    :cond_26
    move v0, v3

    .line 962
    goto/16 :goto_15

    :cond_27
    move v1, v3

    .line 963
    goto/16 :goto_16

    :cond_28
    move v4, v3

    goto/16 :goto_17

    :cond_29
    move v0, v3

    goto/16 :goto_18

    .line 964
    :cond_2a
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_5

    :cond_2b
    move v0, v3

    goto/16 :goto_19

    :cond_2c
    move v1, v3

    .line 965
    goto/16 :goto_1a

    :cond_2d
    move v4, v3

    goto/16 :goto_1b

    :cond_2e
    move v0, v3

    goto/16 :goto_1c

    .line 966
    :cond_2f
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_6

    :cond_30
    move v0, v3

    goto/16 :goto_1d

    :cond_31
    move v1, v3

    .line 967
    goto/16 :goto_1e

    :cond_32
    move v4, v3

    goto/16 :goto_1f

    :cond_33
    move v0, v3

    goto/16 :goto_20

    .line 968
    :cond_34
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_7

    :cond_35
    move v0, v3

    goto/16 :goto_21

    :cond_36
    move v1, v3

    .line 969
    goto/16 :goto_22

    :cond_37
    move v4, v3

    goto/16 :goto_23

    :cond_38
    move v0, v3

    goto/16 :goto_24

    .line 970
    :cond_39
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_8

    :cond_3a
    move v0, v3

    goto/16 :goto_25

    :cond_3b
    move v1, v3

    .line 971
    goto/16 :goto_26

    :cond_3c
    move v4, v3

    goto/16 :goto_27

    :cond_3d
    move v0, v3

    goto/16 :goto_28

    .line 972
    :cond_3e
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_9

    :cond_3f
    move v0, v3

    goto/16 :goto_29

    :cond_40
    move v1, v3

    .line 973
    goto/16 :goto_2a

    :cond_41
    move v4, v3

    goto/16 :goto_2b

    :cond_42
    move v0, v3

    goto/16 :goto_2c

    .line 974
    :cond_43
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_a

    :cond_44
    move v0, v3

    goto/16 :goto_2d

    :cond_45
    move v1, v3

    .line 975
    goto/16 :goto_2e

    :cond_46
    move v4, v3

    goto/16 :goto_2f

    :cond_47
    move v0, v3

    goto/16 :goto_30

    .line 976
    :cond_48
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_b

    :cond_49
    move v0, v3

    goto/16 :goto_31
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
    .line 630
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 631
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 632
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 633
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
    .line 651
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

    .line 639
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 640
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
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

    .line 768
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 770
    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Base;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 849
    :goto_0
    return v2

    .line 787
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :sswitch_0
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    .line 843
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    .line 777
    .end local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 779
    .restart local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_3

    .line 781
    :cond_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_2

    .line 846
    .local v1, "isPartial":Z
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    move v2, v1

    .line 849
    goto :goto_0

    .end local v1    # "isPartial":Z
    :cond_2
    move v1, v2

    .line 781
    goto :goto_2

    .line 785
    :cond_3
    iget v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    sparse-switch v3, :sswitch_data_0

    .line 839
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    .line 791
    :sswitch_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    goto :goto_1

    .line 795
    :sswitch_2
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    goto :goto_1

    .line 799
    :sswitch_3
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    goto :goto_1

    .line 803
    :sswitch_4
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    goto :goto_1

    .line 807
    :sswitch_5
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readUInt32(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)I

    move-result v3

    iput v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    goto :goto_1

    .line 811
    :sswitch_6
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    goto :goto_1

    .line 815
    :sswitch_7
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    goto :goto_1

    .line 819
    :sswitch_8
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    goto :goto_1

    .line 823
    :sswitch_9
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    goto :goto_1

    .line 827
    :sswitch_a
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    goto/16 :goto_1

    .line 831
    :sswitch_b
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    goto/16 :goto_1

    .line 835
    :sswitch_c
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    goto/16 :goto_1

    .line 785
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
        0x78 -> :sswitch_b
        0x82 -> :sswitch_c
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
    .line 654
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 656
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 657
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Base;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 659
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 660
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    .line 667
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 668
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    .line 675
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 676
    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    .line 683
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 684
    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    .line 691
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_9

    .line 692
    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    .line 699
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_b

    .line 700
    :cond_a
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    .line 707
    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_d

    .line 708
    :cond_c
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    .line 715
    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_f

    .line 716
    :cond_e
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    .line 723
    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_11

    .line 724
    :cond_10
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    .line 731
    :cond_11
    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_13

    .line 732
    :cond_12
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    .line 739
    :cond_13
    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_15

    .line 740
    :cond_14
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    .line 747
    :cond_15
    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_17

    .line 748
    :cond_16
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    .line 755
    :cond_17
    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_19

    .line 756
    :cond_18
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    .line 762
    :cond_19
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 763
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 592
    const-string v0, "CommonData"

    const-string v1, "com.microsoft.xbox.idp.telemetry.utc.CommonData"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 596
    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Base;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    .line 598
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    .line 599
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    .line 600
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    .line 601
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    .line 602
    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    .line 603
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    .line 604
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    .line 605
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    .line 606
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    .line 607
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    .line 608
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    .line 609
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    .line 610
    return-void
.end method

.method public final setAccessibilityInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public final setAdditionalInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public final setAppSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public final setClientLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public final setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public final setEventVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 515
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 556
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 517
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    goto :goto_0

    .line 520
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    goto :goto_0

    .line 523
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    goto :goto_0

    .line 526
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    goto :goto_0

    .line 529
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    goto :goto_0

    .line 532
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_5
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    goto :goto_0

    .line 535
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_6
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    goto :goto_0

    .line 538
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_7
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    goto :goto_0

    .line 541
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_8
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    goto :goto_0

    .line 544
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_9
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    goto :goto_0

    .line 547
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_a
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    goto :goto_0

    .line 550
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_b
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    goto :goto_0

    .line 553
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_c
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    goto :goto_0

    .line 515
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
        0x78 -> :sswitch_b
        0x82 -> :sswitch_c
    .end sparse-switch
.end method

.method public final setNetwork(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    .line 154
    return-void
.end method

.method public final setSandboxId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public final setTitleDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public final setTitleSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public final setXsapiVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

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
    .line 616
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 617
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
    .line 623
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 624
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

    .line 864
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 866
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 869
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 875
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 876
    return-void

    .line 873
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

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
    .line 879
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 880
    .local v0, "canOmitFields":Z
    sget-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 881
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Base;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 883
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0xa

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 884
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 887
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x14

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 888
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 891
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x1e

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 892
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 895
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x28

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 896
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 899
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x32

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 900
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 903
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x3c

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 904
    iget v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->network:I

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeUInt32(I)V

    .line 905
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 907
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x46

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 908
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 909
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 911
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x50

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$700()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 912
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 915
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x5a

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$800()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 916
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 919
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x64

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$900()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 920
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->additionalInfo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 921
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 923
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x6e

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$1000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 924
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 927
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x78

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$1100()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 928
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 931
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x82

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->access$1200()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 932
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 935
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 936
    return-void
.end method
