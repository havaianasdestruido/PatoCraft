.class public LMicrosoft/Telemetry/Envelope;
.super Ljava/lang/Object;
.source "Envelope.java"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMicrosoft/Telemetry/Envelope$Schema;
    }
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private appVer:Ljava/lang/String;

.field private cV:Ljava/lang/String;

.field private data:Lcom/microsoft/bond/Bonded;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/bond/Bonded",
            "<",
            "LMicrosoft/Telemetry/Base;",
            ">;"
        }
    .end annotation
.end field

.field private epoch:Ljava/lang/String;

.field private ext:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/bond/Bonded",
            "<",
            "LMicrosoft/Telemetry/Extension;",
            ">;>;"
        }
    .end annotation
.end field

.field private flags:J

.field private iKey:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private osVer:Ljava/lang/String;

.field private popSample:D

.field private seqNum:J

.field private tags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private time:Ljava/lang/String;

.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    invoke-virtual {p0}, LMicrosoft/Telemetry/Envelope;->reset()V

    .line 691
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 684
    sget-object v0, LMicrosoft/Telemetry/Envelope$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method

.method private readFieldImpl_ext(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .locals 6
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p2, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 960
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-static {p2, v4}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 962
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readMapContainerBegin()Lcom/microsoft/bond/ProtocolReader$MapTag;

    move-result-object v2

    .line 963
    .local v2, "tag1":Lcom/microsoft/bond/ProtocolReader$MapTag;
    iget-object v4, v2, Lcom/microsoft/bond/ProtocolReader$MapTag;->valueType:Lcom/microsoft/bond/BondDataType;

    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v4, v5}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 965
    const/4 v0, 0x0

    .local v0, "i2":I
    :goto_0
    iget v4, v2, Lcom/microsoft/bond/ProtocolReader$MapTag;->size:I

    if-ge v0, v4, :cond_0

    .line 966
    const-string v1, ""

    .line 967
    .local v1, "key3":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/bond/Bonded;

    invoke-direct {v3}, Lcom/microsoft/bond/Bonded;-><init>()V

    .line 970
    .local v3, "val4":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Extension;>;"
    iget-object v4, v2, Lcom/microsoft/bond/ProtocolReader$MapTag;->keyType:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v4}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v1

    .line 973
    invoke-virtual {v3, p1}, Lcom/microsoft/bond/Bonded;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 975
    iget-object v4, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    .end local v1    # "key3":Ljava/lang/String;
    .end local v3    # "val4":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Extension;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    .line 979
    return-void
.end method

.method private readFieldImpl_tags(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .locals 5
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p2, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 938
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-static {p2, v4}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 940
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readMapContainerBegin()Lcom/microsoft/bond/ProtocolReader$MapTag;

    move-result-object v2

    .line 942
    .local v2, "tag1":Lcom/microsoft/bond/ProtocolReader$MapTag;
    const/4 v0, 0x0

    .local v0, "i2":I
    :goto_0
    iget v4, v2, Lcom/microsoft/bond/ProtocolReader$MapTag;->size:I

    if-ge v0, v4, :cond_0

    .line 943
    const-string v1, ""

    .line 944
    .local v1, "key3":Ljava/lang/String;
    const-string v3, ""

    .line 947
    .local v3, "val4":Ljava/lang/String;
    iget-object v4, v2, Lcom/microsoft/bond/ProtocolReader$MapTag;->keyType:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v4}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v1

    .line 950
    iget-object v4, v2, Lcom/microsoft/bond/ProtocolReader$MapTag;->valueType:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v4}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    .line 952
    iget-object v4, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 955
    .end local v1    # "key3":Ljava/lang/String;
    .end local v3    # "val4":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    .line 956
    return-void
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
    invoke-virtual {p0}, LMicrosoft/Telemetry/Envelope;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 2
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 660
    sget-object v0, LMicrosoft/Telemetry/Extension$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 661
    new-instance v0, LMicrosoft/Telemetry/Extension;

    invoke-direct {v0}, LMicrosoft/Telemetry/Extension;-><init>()V

    .line 668
    :goto_0
    return-object v0

    .line 664
    :cond_0
    sget-object v0, LMicrosoft/Telemetry/Base$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 665
    new-instance v0, LMicrosoft/Telemetry/Base;

    invoke-direct {v0}, LMicrosoft/Telemetry/Base;-><init>()V

    goto :goto_0

    .line 668
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    return-object v0
.end method

.method public final getCV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    return-object v0
.end method

.method public final getData()Lcom/microsoft/bond/Bonded;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/bond/Bonded",
            "<",
            "LMicrosoft/Telemetry/Base;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    return-object v0
.end method

.method public final getEpoch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    return-object v0
.end method

.method public final getExt()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/bond/Bonded",
            "<",
            "LMicrosoft/Telemetry/Extension;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 560
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 594
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 562
    :sswitch_0
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    goto :goto_0

    .line 564
    :sswitch_1
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    goto :goto_0

    .line 566
    :sswitch_2
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    goto :goto_0

    .line 568
    :sswitch_3
    iget-wide v0, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 570
    :sswitch_4
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    goto :goto_0

    .line 572
    :sswitch_5
    iget-wide v0, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 574
    :sswitch_6
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    goto :goto_0

    .line 576
    :sswitch_7
    iget-wide v0, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 578
    :sswitch_8
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    goto :goto_0

    .line 580
    :sswitch_9
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    goto :goto_0

    .line 582
    :sswitch_a
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    goto :goto_0

    .line 584
    :sswitch_b
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    goto :goto_0

    .line 586
    :sswitch_c
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    goto :goto_0

    .line 588
    :sswitch_d
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    goto :goto_0

    .line 590
    :sswitch_e
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    goto :goto_0

    .line 592
    :sswitch_f
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    goto :goto_0

    .line 560
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
        0x1f4 -> :sswitch_d
        0x1fe -> :sswitch_e
        0x3e7 -> :sswitch_f
    .end sparse-switch
.end method

.method public final getFlags()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    return-wide v0
.end method

.method public final getIKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    return-object v0
.end method

.method public final getOsVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    return-object v0
.end method

.method public final getPopSample()D
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    return-wide v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 676
    invoke-static {}, LMicrosoft/Telemetry/Envelope;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getSeqNum()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    return-wide v0
.end method

.method public final getTags()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    return-object v0
.end method

.method public final getVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

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
    .line 986
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 987
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1145
    if-nez p1, :cond_1

    .line 1151
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1149
    check-cast v0, LMicrosoft/Telemetry/Envelope;

    .line 1151
    .local v0, "that":LMicrosoft/Telemetry/Envelope;
    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Envelope;->memberwiseCompareQuick(LMicrosoft/Telemetry/Envelope;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Envelope;->memberwiseCompareDeep(LMicrosoft/Telemetry/Envelope;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(LMicrosoft/Telemetry/Envelope;)Z
    .locals 12
    .param p1, "that"    # LMicrosoft/Telemetry/Envelope;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1188
    const/4 v2, 0x1

    .line 1190
    .local v2, "equals":Z
    if-eqz v2, :cond_15

    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    if-nez v9, :cond_14

    :cond_0
    move v2, v7

    .line 1191
    :goto_0
    if-eqz v2, :cond_17

    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    if-nez v9, :cond_16

    :cond_1
    move v2, v7

    .line 1192
    :goto_1
    if-eqz v2, :cond_19

    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    if-nez v9, :cond_18

    :cond_2
    move v2, v7

    .line 1193
    :goto_2
    if-eqz v2, :cond_1b

    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    if-nez v9, :cond_1a

    :cond_3
    move v2, v7

    .line 1194
    :goto_3
    if-eqz v2, :cond_1d

    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    if-nez v9, :cond_1c

    :cond_4
    move v2, v7

    .line 1195
    :goto_4
    if-eqz v2, :cond_1f

    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    if-nez v9, :cond_1e

    :cond_5
    move v2, v7

    .line 1196
    :goto_5
    if-eqz v2, :cond_21

    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    if-nez v9, :cond_20

    :cond_6
    move v2, v7

    .line 1197
    :goto_6
    if-eqz v2, :cond_23

    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    if-nez v9, :cond_22

    :cond_7
    move v2, v7

    .line 1198
    :goto_7
    if-eqz v2, :cond_25

    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    if-nez v9, :cond_24

    :cond_8
    move v2, v7

    .line 1199
    :goto_8
    if-eqz v2, :cond_27

    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    if-nez v9, :cond_26

    :cond_9
    move v2, v7

    .line 1200
    :goto_9
    if-eqz v2, :cond_e

    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    if-eqz v9, :cond_e

    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-eqz v9, :cond_e

    .line 1202
    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1203
    .local v0, "e3":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1204
    .local v3, "val1":Ljava/lang/String;
    iget-object v9, p1, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1205
    .local v4, "val2":Ljava/lang/String;
    if-eqz v2, :cond_28

    iget-object v9, p1, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28

    move v2, v7

    .line 1206
    :goto_a
    if-eqz v2, :cond_d

    .line 1207
    if-eqz v2, :cond_2b

    if-nez v3, :cond_29

    move v10, v7

    :goto_b
    if-nez v4, :cond_2a

    move v9, v7

    :goto_c
    if-ne v10, v9, :cond_2b

    move v2, v7

    .line 1208
    :goto_d
    if-eqz v2, :cond_2d

    if-nez v3, :cond_2c

    :cond_b
    move v2, v7

    .line 1209
    :goto_e
    if-eqz v2, :cond_2f

    if-nez v3, :cond_2e

    :cond_c
    move v2, v7

    .line 1211
    :cond_d
    :goto_f
    if-nez v2, :cond_a

    .line 1216
    .end local v0    # "e3":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "val1":Ljava/lang/String;
    .end local v4    # "val2":Ljava/lang/String;
    :cond_e
    if-eqz v2, :cond_12

    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    if-eqz v9, :cond_12

    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-eqz v9, :cond_12

    .line 1218
    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1219
    .local v1, "e6":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Extension;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/bond/Bonded;

    .line 1220
    .local v5, "val4":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Extension;>;"
    iget-object v9, p1, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/bond/Bonded;

    .line 1221
    .local v6, "val5":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Extension;>;"
    if-eqz v2, :cond_30

    iget-object v9, p1, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    move v2, v7

    .line 1222
    :goto_10
    if-eqz v2, :cond_11

    .line 1223
    if-eqz v2, :cond_33

    if-nez v5, :cond_31

    move v10, v7

    :goto_11
    if-nez v6, :cond_32

    move v9, v7

    :goto_12
    if-ne v10, v9, :cond_33

    move v2, v7

    .line 1224
    :goto_13
    if-eqz v2, :cond_35

    if-nez v5, :cond_34

    :cond_10
    move v2, v7

    .line 1226
    :cond_11
    :goto_14
    if-nez v2, :cond_f

    .line 1231
    .end local v1    # "e6":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Extension;>;>;"
    .end local v5    # "val4":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Extension;>;"
    .end local v6    # "val5":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Extension;>;"
    :cond_12
    if-eqz v2, :cond_37

    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    if-nez v9, :cond_36

    :cond_13
    move v2, v7

    .line 1232
    :goto_15
    return v2

    .line 1190
    :cond_14
    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    iget-object v10, p1, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_15
    move v2, v8

    goto/16 :goto_0

    .line 1191
    :cond_16
    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    iget-object v10, p1, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_17
    move v2, v8

    goto/16 :goto_1

    .line 1192
    :cond_18
    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    iget-object v10, p1, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_19
    move v2, v8

    goto/16 :goto_2

    .line 1193
    :cond_1a
    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    iget-object v10, p1, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_1b
    move v2, v8

    goto/16 :goto_3

    .line 1194
    :cond_1c
    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    iget-object v10, p1, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_1d
    move v2, v8

    goto/16 :goto_4

    .line 1195
    :cond_1e
    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    iget-object v10, p1, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_1f
    move v2, v8

    goto/16 :goto_5

    .line 1196
    :cond_20
    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    iget-object v10, p1, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    :cond_21
    move v2, v8

    goto/16 :goto_6

    .line 1197
    :cond_22
    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    iget-object v10, p1, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    :cond_23
    move v2, v8

    goto/16 :goto_7

    .line 1198
    :cond_24
    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    iget-object v10, p1, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_25
    move v2, v8

    goto/16 :goto_8

    .line 1199
    :cond_26
    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    iget-object v10, p1, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    :cond_27
    move v2, v8

    goto/16 :goto_9

    .restart local v0    # "e3":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "val1":Ljava/lang/String;
    .restart local v4    # "val2":Ljava/lang/String;
    :cond_28
    move v2, v8

    .line 1205
    goto/16 :goto_a

    :cond_29
    move v10, v8

    .line 1207
    goto/16 :goto_b

    :cond_2a
    move v9, v8

    goto/16 :goto_c

    :cond_2b
    move v2, v8

    goto/16 :goto_d

    .line 1208
    :cond_2c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v9, v10, :cond_b

    :cond_2d
    move v2, v8

    goto/16 :goto_e

    .line 1209
    :cond_2e
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    :cond_2f
    move v2, v8

    goto/16 :goto_f

    .end local v0    # "e3":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "val1":Ljava/lang/String;
    .end local v4    # "val2":Ljava/lang/String;
    .restart local v1    # "e6":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Extension;>;>;"
    .restart local v5    # "val4":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Extension;>;"
    .restart local v6    # "val5":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Extension;>;"
    :cond_30
    move v2, v8

    .line 1221
    goto/16 :goto_10

    :cond_31
    move v10, v8

    .line 1223
    goto/16 :goto_11

    :cond_32
    move v9, v8

    goto/16 :goto_12

    :cond_33
    move v2, v8

    goto/16 :goto_13

    .line 1224
    :cond_34
    invoke-virtual {v5, v6}, Lcom/microsoft/bond/Bonded;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    :cond_35
    move v2, v8

    goto/16 :goto_14

    .line 1231
    .end local v1    # "e6":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Extension;>;>;"
    .end local v5    # "val4":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Extension;>;"
    .end local v6    # "val5":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Extension;>;"
    :cond_36
    iget-object v9, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    iget-object v10, p1, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    invoke-virtual {v9, v10}, Lcom/microsoft/bond/Bonded;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    :cond_37
    move v2, v8

    goto/16 :goto_15
.end method

.method protected memberwiseCompareQuick(LMicrosoft/Telemetry/Envelope;)Z
    .locals 8
    .param p1, "that"    # LMicrosoft/Telemetry/Envelope;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1155
    const/4 v0, 0x1

    .line 1157
    .local v0, "equals":Z
    if-eqz v0, :cond_f

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    if-nez v1, :cond_d

    move v1, v2

    :goto_0
    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    if-nez v4, :cond_e

    move v4, v2

    :goto_1
    if-ne v1, v4, :cond_f

    move v0, v2

    .line 1158
    :goto_2
    if-eqz v0, :cond_11

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    if-nez v1, :cond_10

    :cond_0
    move v0, v2

    .line 1159
    :goto_3
    if-eqz v0, :cond_14

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    if-nez v1, :cond_12

    move v1, v2

    :goto_4
    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    if-nez v4, :cond_13

    move v4, v2

    :goto_5
    if-ne v1, v4, :cond_14

    move v0, v2

    .line 1160
    :goto_6
    if-eqz v0, :cond_16

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    if-nez v1, :cond_15

    :cond_1
    move v0, v2

    .line 1161
    :goto_7
    if-eqz v0, :cond_19

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    if-nez v1, :cond_17

    move v1, v2

    :goto_8
    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    if-nez v4, :cond_18

    move v4, v2

    :goto_9
    if-ne v1, v4, :cond_19

    move v0, v2

    .line 1162
    :goto_a
    if-eqz v0, :cond_1b

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    if-nez v1, :cond_1a

    :cond_2
    move v0, v2

    .line 1163
    :goto_b
    if-eqz v0, :cond_1d

    iget-wide v4, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-wide v4, p1, LMicrosoft/Telemetry/Envelope;->popSample:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_3
    move v0, v2

    .line 1164
    :goto_c
    if-eqz v0, :cond_20

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    if-nez v1, :cond_1e

    move v1, v2

    :goto_d
    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    if-nez v4, :cond_1f

    move v4, v2

    :goto_e
    if-ne v1, v4, :cond_20

    move v0, v2

    .line 1165
    :goto_f
    if-eqz v0, :cond_22

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    if-nez v1, :cond_21

    :cond_4
    move v0, v2

    .line 1166
    :goto_10
    if-eqz v0, :cond_23

    iget-wide v4, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    iget-wide v6, p1, LMicrosoft/Telemetry/Envelope;->seqNum:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_23

    move v0, v2

    .line 1167
    :goto_11
    if-eqz v0, :cond_26

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    if-nez v1, :cond_24

    move v1, v2

    :goto_12
    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    if-nez v4, :cond_25

    move v4, v2

    :goto_13
    if-ne v1, v4, :cond_26

    move v0, v2

    .line 1168
    :goto_14
    if-eqz v0, :cond_28

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    if-nez v1, :cond_27

    :cond_5
    move v0, v2

    .line 1169
    :goto_15
    if-eqz v0, :cond_29

    iget-wide v4, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    iget-wide v6, p1, LMicrosoft/Telemetry/Envelope;->flags:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_29

    move v0, v2

    .line 1170
    :goto_16
    if-eqz v0, :cond_2c

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    if-nez v1, :cond_2a

    move v1, v2

    :goto_17
    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    if-nez v4, :cond_2b

    move v4, v2

    :goto_18
    if-ne v1, v4, :cond_2c

    move v0, v2

    .line 1171
    :goto_19
    if-eqz v0, :cond_2e

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    if-nez v1, :cond_2d

    :cond_6
    move v0, v2

    .line 1172
    :goto_1a
    if-eqz v0, :cond_31

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    if-nez v1, :cond_2f

    move v1, v2

    :goto_1b
    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    if-nez v4, :cond_30

    move v4, v2

    :goto_1c
    if-ne v1, v4, :cond_31

    move v0, v2

    .line 1173
    :goto_1d
    if-eqz v0, :cond_33

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    if-nez v1, :cond_32

    :cond_7
    move v0, v2

    .line 1174
    :goto_1e
    if-eqz v0, :cond_36

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    if-nez v1, :cond_34

    move v1, v2

    :goto_1f
    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    if-nez v4, :cond_35

    move v4, v2

    :goto_20
    if-ne v1, v4, :cond_36

    move v0, v2

    .line 1175
    :goto_21
    if-eqz v0, :cond_38

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    if-nez v1, :cond_37

    :cond_8
    move v0, v2

    .line 1176
    :goto_22
    if-eqz v0, :cond_3b

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    if-nez v1, :cond_39

    move v1, v2

    :goto_23
    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    if-nez v4, :cond_3a

    move v4, v2

    :goto_24
    if-ne v1, v4, :cond_3b

    move v0, v2

    .line 1177
    :goto_25
    if-eqz v0, :cond_3d

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    if-nez v1, :cond_3c

    :cond_9
    move v0, v2

    .line 1178
    :goto_26
    if-eqz v0, :cond_40

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    if-nez v1, :cond_3e

    move v1, v2

    :goto_27
    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    if-nez v4, :cond_3f

    move v4, v2

    :goto_28
    if-ne v1, v4, :cond_40

    move v0, v2

    .line 1179
    :goto_29
    if-eqz v0, :cond_42

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    if-nez v1, :cond_41

    :cond_a
    move v0, v2

    .line 1180
    :goto_2a
    if-eqz v0, :cond_45

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    if-nez v1, :cond_43

    move v1, v2

    :goto_2b
    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    if-nez v4, :cond_44

    move v4, v2

    :goto_2c
    if-ne v1, v4, :cond_45

    move v0, v2

    .line 1181
    :goto_2d
    if-eqz v0, :cond_47

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    if-nez v1, :cond_46

    :cond_b
    move v0, v2

    .line 1182
    :goto_2e
    if-eqz v0, :cond_4a

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    if-nez v1, :cond_48

    move v1, v2

    :goto_2f
    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    if-nez v4, :cond_49

    move v4, v2

    :goto_30
    if-ne v1, v4, :cond_4a

    move v0, v2

    .line 1183
    :goto_31
    if-eqz v0, :cond_4c

    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    if-nez v1, :cond_4b

    :cond_c
    move v0, v2

    .line 1184
    :goto_32
    return v0

    :cond_d
    move v1, v3

    .line 1157
    goto/16 :goto_0

    :cond_e
    move v4, v3

    goto/16 :goto_1

    :cond_f
    move v0, v3

    goto/16 :goto_2

    .line 1158
    :cond_10
    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_0

    :cond_11
    move v0, v3

    goto/16 :goto_3

    :cond_12
    move v1, v3

    .line 1159
    goto/16 :goto_4

    :cond_13
    move v4, v3

    goto/16 :goto_5

    :cond_14
    move v0, v3

    goto/16 :goto_6

    .line 1160
    :cond_15
    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_1

    :cond_16
    move v0, v3

    goto/16 :goto_7

    :cond_17
    move v1, v3

    .line 1161
    goto/16 :goto_8

    :cond_18
    move v4, v3

    goto/16 :goto_9

    :cond_19
    move v0, v3

    goto/16 :goto_a

    .line 1162
    :cond_1a
    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_2

    :cond_1b
    move v0, v3

    goto/16 :goto_b

    .line 1163
    :cond_1c
    iget-wide v4, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    iget-wide v6, p1, LMicrosoft/Telemetry/Envelope;->popSample:D

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_3

    :cond_1d
    move v0, v3

    goto/16 :goto_c

    :cond_1e
    move v1, v3

    .line 1164
    goto/16 :goto_d

    :cond_1f
    move v4, v3

    goto/16 :goto_e

    :cond_20
    move v0, v3

    goto/16 :goto_f

    .line 1165
    :cond_21
    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_4

    :cond_22
    move v0, v3

    goto/16 :goto_10

    :cond_23
    move v0, v3

    .line 1166
    goto/16 :goto_11

    :cond_24
    move v1, v3

    .line 1167
    goto/16 :goto_12

    :cond_25
    move v4, v3

    goto/16 :goto_13

    :cond_26
    move v0, v3

    goto/16 :goto_14

    .line 1168
    :cond_27
    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_5

    :cond_28
    move v0, v3

    goto/16 :goto_15

    :cond_29
    move v0, v3

    .line 1169
    goto/16 :goto_16

    :cond_2a
    move v1, v3

    .line 1170
    goto/16 :goto_17

    :cond_2b
    move v4, v3

    goto/16 :goto_18

    :cond_2c
    move v0, v3

    goto/16 :goto_19

    .line 1171
    :cond_2d
    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_6

    :cond_2e
    move v0, v3

    goto/16 :goto_1a

    :cond_2f
    move v1, v3

    .line 1172
    goto/16 :goto_1b

    :cond_30
    move v4, v3

    goto/16 :goto_1c

    :cond_31
    move v0, v3

    goto/16 :goto_1d

    .line 1173
    :cond_32
    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_7

    :cond_33
    move v0, v3

    goto/16 :goto_1e

    :cond_34
    move v1, v3

    .line 1174
    goto/16 :goto_1f

    :cond_35
    move v4, v3

    goto/16 :goto_20

    :cond_36
    move v0, v3

    goto/16 :goto_21

    .line 1175
    :cond_37
    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_8

    :cond_38
    move v0, v3

    goto/16 :goto_22

    :cond_39
    move v1, v3

    .line 1176
    goto/16 :goto_23

    :cond_3a
    move v4, v3

    goto/16 :goto_24

    :cond_3b
    move v0, v3

    goto/16 :goto_25

    .line 1177
    :cond_3c
    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_9

    :cond_3d
    move v0, v3

    goto/16 :goto_26

    :cond_3e
    move v1, v3

    .line 1178
    goto/16 :goto_27

    :cond_3f
    move v4, v3

    goto/16 :goto_28

    :cond_40
    move v0, v3

    goto/16 :goto_29

    .line 1179
    :cond_41
    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_a

    :cond_42
    move v0, v3

    goto/16 :goto_2a

    :cond_43
    move v1, v3

    .line 1180
    goto/16 :goto_2b

    :cond_44
    move v4, v3

    goto/16 :goto_2c

    :cond_45
    move v0, v3

    goto/16 :goto_2d

    .line 1181
    :cond_46
    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eq v1, v4, :cond_b

    :cond_47
    move v0, v3

    goto/16 :goto_2e

    :cond_48
    move v1, v3

    .line 1182
    goto/16 :goto_2f

    :cond_49
    move v4, v3

    goto/16 :goto_30

    :cond_4a
    move v0, v3

    goto/16 :goto_31

    .line 1183
    :cond_4b
    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eq v1, v4, :cond_c

    :cond_4c
    move v0, v3

    goto/16 :goto_32
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
    .line 746
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 747
    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Envelope;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 748
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 749
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
    .line 767
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

    .line 755
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 756
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Envelope;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Envelope;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
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
    .line 856
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 861
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 863
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_2

    .line 865
    :cond_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 930
    .local v1, "isPartial":Z
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 933
    return v1

    .line 865
    .end local v1    # "isPartial":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 869
    :cond_2
    iget v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    sparse-switch v2, :sswitch_data_0

    .line 923
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 927
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    .line 871
    :sswitch_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    goto :goto_2

    .line 875
    :sswitch_1
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    goto :goto_2

    .line 879
    :sswitch_2
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    goto :goto_2

    .line 883
    :sswitch_3
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readDouble(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)D

    move-result-wide v2

    iput-wide v2, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    goto :goto_2

    .line 886
    :sswitch_4
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    goto :goto_2

    .line 889
    :sswitch_5
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J

    move-result-wide v2

    iput-wide v2, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    goto :goto_2

    .line 892
    :sswitch_6
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    goto :goto_2

    .line 895
    :sswitch_7
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readInt64(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)J

    move-result-wide v2

    iput-wide v2, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    goto :goto_2

    .line 898
    :sswitch_8
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    goto :goto_2

    .line 901
    :sswitch_9
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    goto :goto_2

    .line 904
    :sswitch_a
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    goto :goto_2

    .line 907
    :sswitch_b
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    goto :goto_2

    .line 910
    :sswitch_c
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    goto :goto_2

    .line 913
    :sswitch_d
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v2}, LMicrosoft/Telemetry/Envelope;->readFieldImpl_tags(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    goto :goto_2

    .line 916
    :sswitch_e
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v2}, LMicrosoft/Telemetry/Envelope;->readFieldImpl_ext(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    goto/16 :goto_2

    .line 919
    :sswitch_f
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v2, v3}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 920
    iget-object v2, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    invoke-virtual {v2, p1}, Lcom/microsoft/bond/Bonded;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    goto/16 :goto_2

    .line 869
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
        0x1f4 -> :sswitch_d
        0x1fe -> :sswitch_e
        0x3e7 -> :sswitch_f
    .end sparse-switch
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
    .line 770
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 772
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 775
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 776
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    .line 783
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 784
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    .line 791
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 792
    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    .line 799
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 800
    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    .line 803
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_9

    .line 804
    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    .line 807
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_b

    .line 808
    :cond_a
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    .line 811
    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_d

    .line 812
    :cond_c
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    .line 815
    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_f

    .line 816
    :cond_e
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    .line 819
    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_11

    .line 820
    :cond_10
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    .line 823
    :cond_11
    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_13

    .line 824
    :cond_12
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    .line 827
    :cond_13
    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_15

    .line 828
    :cond_14
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    .line 831
    :cond_15
    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_17

    .line 832
    :cond_16
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    .line 835
    :cond_17
    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_19

    .line 836
    :cond_18
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    .line 839
    :cond_19
    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 840
    :cond_1a
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v1}, LMicrosoft/Telemetry/Envelope;->readFieldImpl_tags(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    .line 843
    :cond_1b
    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 844
    :cond_1c
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v1}, LMicrosoft/Telemetry/Envelope;->readFieldImpl_ext(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    .line 847
    :cond_1d
    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 848
    :cond_1e
    iget-object v1, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    invoke-virtual {v1, p1}, Lcom/microsoft/bond/Bonded;->read(Lcom/microsoft/bond/ProtocolReader;)V

    .line 850
    :cond_1f
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 851
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 697
    const-string v0, "Envelope"

    const-string v1, "Microsoft.Telemetry.Envelope"

    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Envelope;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 702
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    .line 703
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    .line 704
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    .line 705
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    .line 706
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    .line 707
    iput-wide v2, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    .line 708
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    .line 709
    iput-wide v2, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    .line 710
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    .line 711
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    .line 712
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    .line 713
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    .line 714
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    .line 715
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 716
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    .line 720
    :goto_0
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 721
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    .line 725
    :goto_1
    new-instance v0, Lcom/microsoft/bond/Bonded;

    invoke-direct {v0}, Lcom/microsoft/bond/Bonded;-><init>()V

    iput-object v0, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    .line 726
    return-void

    .line 718
    :cond_0
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 723
    :cond_1
    iget-object v0, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_1
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public final setAppVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public final setCV(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public final setData(Lcom/microsoft/bond/Bonded;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/bond/Bonded",
            "<",
            "LMicrosoft/Telemetry/Base;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "value":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Base;>;"
    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    .line 299
    return-void
.end method

.method public final setEpoch(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public final setExt(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/bond/Bonded",
            "<",
            "LMicrosoft/Telemetry/Extension;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Extension;>;>;"
    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    .line 285
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 2
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 603
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 653
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 605
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    goto :goto_0

    .line 608
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    goto :goto_0

    .line 611
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    goto :goto_0

    .line 614
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_3
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    goto :goto_0

    .line 617
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    goto :goto_0

    .line 620
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_5
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    goto :goto_0

    .line 623
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_6
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    goto :goto_0

    .line 626
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_7
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    goto :goto_0

    .line 629
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_8
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    goto :goto_0

    .line 632
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_9
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    goto :goto_0

    .line 635
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_a
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    goto :goto_0

    .line 638
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_b
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    goto :goto_0

    .line 641
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_c
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    goto :goto_0

    .line 644
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_d
    check-cast p2, Ljava/util/HashMap;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    goto :goto_0

    .line 647
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_e
    check-cast p2, Ljava/util/HashMap;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    goto :goto_0

    .line 650
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_f
    check-cast p2, Lcom/microsoft/bond/Bonded;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    goto :goto_0

    .line 603
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
        0x1f4 -> :sswitch_d
        0x1fe -> :sswitch_e
        0x3e7 -> :sswitch_f
    .end sparse-switch
.end method

.method public final setFlags(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 186
    iput-wide p1, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    .line 187
    return-void
.end method

.method public final setIKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public final setOs(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public final setOsVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public final setPopSample(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 130
    iput-wide p1, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    .line 131
    return-void
.end method

.method public final setSeqNum(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 158
    iput-wide p1, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    .line 159
    return-void
.end method

.method public final setTags(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    .line 271
    return-void
.end method

.method public final setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public final setVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    .line 89
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
    .line 732
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 733
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
    .line 739
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 740
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

    .line 993
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 995
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Envelope;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 998
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Envelope;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 1004
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 1005
    return-void

    .line 1002
    :cond_0
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Envelope;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

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
    .line 1008
    sget-object v5, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v5}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 1009
    .local v0, "canOmitFields":Z
    sget-object v5, LMicrosoft/Telemetry/Envelope$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v5, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 1012
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0xa

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 1013
    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->ver:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 1016
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x14

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 1017
    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 1020
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x1e

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 1021
    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->time:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 1024
    if-eqz v0, :cond_0

    iget-wide v6, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Variant;->getDouble_value()D

    move-result-wide v8

    cmpl-double v5, v6, v8

    if-eqz v5, :cond_b

    .line 1025
    :cond_0
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x28

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 1026
    iget-wide v6, p0, LMicrosoft/Telemetry/Envelope;->popSample:D

    invoke-virtual {p1, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeDouble(D)V

    .line 1027
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 1032
    :goto_0
    if-eqz v0, :cond_1

    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_c

    .line 1033
    :cond_1
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x32

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 1034
    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->epoch:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 1040
    :goto_1
    if-eqz v0, :cond_2

    iget-wide v6, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Variant;->getInt_value()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_d

    .line 1041
    :cond_2
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x3c

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 1042
    iget-wide v6, p0, LMicrosoft/Telemetry/Envelope;->seqNum:J

    invoke-virtual {p1, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeInt64(J)V

    .line 1043
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 1048
    :goto_2
    if-eqz v0, :cond_3

    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_e

    .line 1049
    :cond_3
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x46

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 1050
    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->iKey:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 1056
    :goto_3
    if-eqz v0, :cond_4

    iget-wide v6, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$700()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Variant;->getInt_value()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_f

    .line 1057
    :cond_4
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x50

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$700()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 1058
    iget-wide v6, p0, LMicrosoft/Telemetry/Envelope;->flags:J

    invoke-virtual {p1, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeInt64(J)V

    .line 1059
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 1064
    :goto_4
    if-eqz v0, :cond_5

    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$800()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_10

    .line 1065
    :cond_5
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x5a

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$800()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 1066
    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->os:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 1072
    :goto_5
    if-eqz v0, :cond_6

    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$900()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_11

    .line 1073
    :cond_6
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x64

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$900()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 1074
    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->osVer:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 1080
    :goto_6
    if-eqz v0, :cond_7

    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1000()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_12

    .line 1081
    :cond_7
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x6e

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1000()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 1082
    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->appId:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 1088
    :goto_7
    if-eqz v0, :cond_8

    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1100()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_13

    .line 1089
    :cond_8
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x78

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1100()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 1090
    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->appVer:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 1096
    :goto_8
    if-eqz v0, :cond_9

    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1200()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_14

    .line 1097
    :cond_9
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x82

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1200()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 1098
    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->cV:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 1104
    :goto_9
    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 1105
    .local v3, "size11":I
    if-eqz v0, :cond_a

    if-eqz v3, :cond_17

    .line 1106
    :cond_a
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x1f4

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1300()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 1107
    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    sget-object v6, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    sget-object v7, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 1108
    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->tags:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1110
    .local v1, "e12":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 1112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 1029
    .end local v1    # "e12":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "size11":I
    :cond_b
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x28

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_0

    .line 1037
    :cond_c
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x32

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_1

    .line 1045
    :cond_d
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x3c

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_2

    .line 1053
    :cond_e
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x46

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_3

    .line 1061
    :cond_f
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x50

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$700()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_4

    .line 1069
    :cond_10
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x5a

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$800()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_5

    .line 1077
    :cond_11
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x64

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$900()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_6

    .line 1085
    :cond_12
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x6e

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1000()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_7

    .line 1093
    :cond_13
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x78

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1100()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_8

    .line 1101
    :cond_14
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x82

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1200()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto/16 :goto_9

    .line 1114
    .restart local v3    # "size11":I
    :cond_15
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    .line 1115
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 1120
    :goto_b
    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 1121
    .local v4, "size13":I
    if-eqz v0, :cond_16

    if-eqz v4, :cond_19

    .line 1122
    :cond_16
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x1fe

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1400()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 1123
    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    sget-object v6, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    sget-object v7, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 1124
    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->ext:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1126
    .local v2, "e14":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Extension;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 1128
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/bond/Bonded;

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v7}, Lcom/microsoft/bond/Bonded;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    goto :goto_c

    .line 1117
    .end local v2    # "e14":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/microsoft/bond/Bonded<LMicrosoft/Telemetry/Extension;>;>;"
    .end local v4    # "size13":I
    :cond_17
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x1f4

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1300()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_b

    .line 1130
    .restart local v4    # "size13":I
    :cond_18
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    .line 1131
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 1136
    :goto_d
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x3e7

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1500()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 1137
    iget-object v5, p0, LMicrosoft/Telemetry/Envelope;->data:Lcom/microsoft/bond/Bonded;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Lcom/microsoft/bond/Bonded;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 1138
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 1140
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 1141
    return-void

    .line 1133
    :cond_19
    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x1fe

    invoke-static {}, LMicrosoft/Telemetry/Envelope$Schema;->access$1400()Lcom/microsoft/bond/Metadata;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_d
.end method
