.class public Lcom/microsoft/bond/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/Metadata$Schema;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/HashMap;
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

.field private default_value:Lcom/microsoft/bond/Variant;

.field private modifier:Lcom/microsoft/bond/Modifier;

.field private name:Ljava/lang/String;

.field private qualified_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    invoke-virtual {p0}, Lcom/microsoft/bond/Metadata;->reset()V

    .line 297
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method

.method private readFieldImpl_attributes(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .locals 5
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p2, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-static {p2, v4}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 437
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readMapContainerBegin()Lcom/microsoft/bond/ProtocolReader$MapTag;

    move-result-object v2

    .line 439
    .local v2, "tag1":Lcom/microsoft/bond/ProtocolReader$MapTag;
    const/4 v0, 0x0

    .local v0, "i2":I
    :goto_0
    iget v4, v2, Lcom/microsoft/bond/ProtocolReader$MapTag;->size:I

    if-ge v0, v4, :cond_0

    .line 440
    const-string v1, ""

    .line 441
    .local v1, "key3":Ljava/lang/String;
    const-string v3, ""

    .line 444
    .local v3, "val4":Ljava/lang/String;
    iget-object v4, v2, Lcom/microsoft/bond/ProtocolReader$MapTag;->keyType:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v4}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v1

    .line 447
    iget-object v4, v2, Lcom/microsoft/bond/ProtocolReader$MapTag;->valueType:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v4}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    .line 449
    iget-object v4, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    .end local v1    # "key3":Ljava/lang/String;
    .end local v3    # "val4":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    .line 453
    return-void
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
    invoke-virtual {p0}, Lcom/microsoft/bond/Metadata;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 2
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 270
    sget-object v0, Lcom/microsoft/bond/Variant$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 271
    new-instance v0, Lcom/microsoft/bond/Variant;

    invoke-direct {v0}, Lcom/microsoft/bond/Variant;-><init>()V

    .line 274
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAttributes()Ljava/util/HashMap;
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
    .line 75
    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getDefault_value()Lcom/microsoft/bond/Variant;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 237
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    goto :goto_0

    .line 231
    :pswitch_2
    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    goto :goto_0

    .line 233
    :pswitch_3
    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    goto :goto_0

    .line 235
    :pswitch_4
    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final getModifier()Lcom/microsoft/bond/Modifier;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getQualified_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/microsoft/bond/Metadata;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

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
    .line 460
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 461
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 535
    if-nez p1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 539
    check-cast v0, Lcom/microsoft/bond/Metadata;

    .line 541
    .local v0, "that":Lcom/microsoft/bond/Metadata;
    invoke-virtual {p0, v0}, Lcom/microsoft/bond/Metadata;->memberwiseCompareQuick(Lcom/microsoft/bond/Metadata;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/Metadata;->memberwiseCompareDeep(Lcom/microsoft/bond/Metadata;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(Lcom/microsoft/bond/Metadata;)Z
    .locals 9
    .param p1, "that"    # Lcom/microsoft/bond/Metadata;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 558
    const/4 v1, 0x1

    .line 560
    .local v1, "equals":Z
    if-eqz v1, :cond_9

    iget-object v7, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    if-nez v7, :cond_8

    :cond_0
    move v1, v5

    .line 561
    :goto_0
    if-eqz v1, :cond_b

    iget-object v7, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    if-nez v7, :cond_a

    :cond_1
    move v1, v5

    .line 562
    :goto_1
    if-eqz v1, :cond_6

    iget-object v7, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-eqz v7, :cond_6

    .line 564
    iget-object v7, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 565
    .local v0, "e3":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 566
    .local v3, "val1":Ljava/lang/String;
    iget-object v7, p1, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 567
    .local v4, "val2":Ljava/lang/String;
    if-eqz v1, :cond_c

    iget-object v7, p1, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move v1, v5

    .line 568
    :goto_2
    if-eqz v1, :cond_5

    .line 569
    if-eqz v1, :cond_f

    if-nez v3, :cond_d

    move v8, v5

    :goto_3
    if-nez v4, :cond_e

    move v7, v5

    :goto_4
    if-ne v8, v7, :cond_f

    move v1, v5

    .line 570
    :goto_5
    if-eqz v1, :cond_11

    if-nez v3, :cond_10

    :cond_3
    move v1, v5

    .line 571
    :goto_6
    if-eqz v1, :cond_13

    if-nez v3, :cond_12

    :cond_4
    move v1, v5

    .line 573
    :cond_5
    :goto_7
    if-nez v1, :cond_2

    .line 578
    .end local v0    # "e3":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "val1":Ljava/lang/String;
    .end local v4    # "val2":Ljava/lang/String;
    :cond_6
    if-eqz v1, :cond_15

    iget-object v7, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    if-nez v7, :cond_14

    :cond_7
    move v1, v5

    .line 579
    :goto_8
    return v1

    .line 560
    :cond_8
    iget-object v7, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    iget-object v8, p1, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_9
    move v1, v6

    goto :goto_0

    .line 561
    :cond_a
    iget-object v7, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    iget-object v8, p1, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_b
    move v1, v6

    goto :goto_1

    .restart local v0    # "e3":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "val1":Ljava/lang/String;
    .restart local v4    # "val2":Ljava/lang/String;
    :cond_c
    move v1, v6

    .line 567
    goto :goto_2

    :cond_d
    move v8, v6

    .line 569
    goto :goto_3

    :cond_e
    move v7, v6

    goto :goto_4

    :cond_f
    move v1, v6

    goto :goto_5

    .line 570
    :cond_10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v7, v8, :cond_3

    :cond_11
    move v1, v6

    goto :goto_6

    .line 571
    :cond_12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_13
    move v1, v6

    goto :goto_7

    .line 578
    .end local v0    # "e3":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "val1":Ljava/lang/String;
    .end local v4    # "val2":Ljava/lang/String;
    :cond_14
    iget-object v7, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    iget-object v8, p1, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    invoke-virtual {v7, v8}, Lcom/microsoft/bond/Variant;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_15
    move v1, v6

    goto :goto_8
.end method

.method protected memberwiseCompareQuick(Lcom/microsoft/bond/Metadata;)Z
    .locals 5
    .param p1, "that"    # Lcom/microsoft/bond/Metadata;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 545
    const/4 v0, 0x1

    .line 547
    .local v0, "equals":Z
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    iget-object v4, p1, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    if-nez v4, :cond_4

    move v4, v2

    :goto_1
    if-ne v1, v4, :cond_5

    move v0, v2

    .line 548
    :goto_2
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_0
    move v0, v2

    .line 549
    :goto_3
    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    if-nez v1, :cond_8

    move v1, v2

    :goto_4
    iget-object v4, p1, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    if-nez v4, :cond_9

    move v4, v2

    :goto_5
    if-ne v1, v4, :cond_a

    move v0, v2

    .line 550
    :goto_6
    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    if-nez v1, :cond_b

    :cond_1
    move v0, v2

    .line 551
    :goto_7
    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    if-nez v1, :cond_d

    move v1, v2

    :goto_8
    iget-object v4, p1, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    if-nez v4, :cond_e

    move v4, v2

    :goto_9
    if-ne v1, v4, :cond_f

    move v0, v2

    .line 552
    :goto_a
    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    if-nez v1, :cond_10

    :cond_2
    move v0, v2

    .line 553
    :goto_b
    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    iget-object v4, p1, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    if-ne v1, v4, :cond_12

    move v0, v2

    .line 554
    :goto_c
    return v0

    :cond_3
    move v1, v3

    .line 547
    goto :goto_0

    :cond_4
    move v4, v3

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_2

    .line 548
    :cond_6
    iget-object v1, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_0

    :cond_7
    move v0, v3

    goto :goto_3

    :cond_8
    move v1, v3

    .line 549
    goto :goto_4

    :cond_9
    move v4, v3

    goto :goto_5

    :cond_a
    move v0, v3

    goto :goto_6

    .line 550
    :cond_b
    iget-object v1, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_1

    :cond_c
    move v0, v3

    goto :goto_7

    :cond_d
    move v1, v3

    .line 551
    goto :goto_8

    :cond_e
    move v4, v3

    goto :goto_9

    :cond_f
    move v0, v3

    goto :goto_a

    .line 552
    :cond_10
    iget-object v1, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eq v1, v4, :cond_2

    :cond_11
    move v0, v3

    goto :goto_b

    :cond_12
    move v0, v3

    .line 553
    goto :goto_c
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
    .line 337
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 338
    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Metadata;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 339
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 340
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
    .line 358
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

    .line 346
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Metadata;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Metadata;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
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
    .line 391
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 395
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 397
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_2

    .line 399
    :cond_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 428
    .local v1, "isPartial":Z
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 430
    return v1

    .line 399
    .end local v1    # "isPartial":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 403
    :cond_2
    iget v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    packed-switch v2, :pswitch_data_0

    .line 421
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 425
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    .line 405
    :pswitch_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    goto :goto_2

    .line 408
    :pswitch_1
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    goto :goto_2

    .line 411
    :pswitch_2
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v2}, Lcom/microsoft/bond/Metadata;->readFieldImpl_attributes(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    goto :goto_2

    .line 414
    :pswitch_3
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v2}, Lcom/microsoft/bond/internal/ReadHelper;->readInt32(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)I

    move-result v2

    invoke-static {v2}, Lcom/microsoft/bond/Modifier;->fromValue(I)Lcom/microsoft/bond/Modifier;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    goto :goto_2

    .line 417
    :pswitch_4
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-static {v2, v3}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 418
    iget-object v2, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    invoke-virtual {v2, p1}, Lcom/microsoft/bond/Variant;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    goto :goto_2

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
    .line 361
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 363
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 366
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 367
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    .line 370
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 371
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    .line 374
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 375
    :cond_4
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v1}, Lcom/microsoft/bond/Metadata;->readFieldImpl_attributes(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    .line 378
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 379
    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readInt32()I

    move-result v1

    invoke-static {v1}, Lcom/microsoft/bond/Modifier;->fromValue(I)Lcom/microsoft/bond/Modifier;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    .line 382
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_9

    .line 383
    :cond_8
    iget-object v1, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    invoke-virtual {v1, p1}, Lcom/microsoft/bond/Variant;->read(Lcom/microsoft/bond/ProtocolReader;)V

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
    const-string v0, "Metadata"

    const-string v1, "com.microsoft.bond.Metadata"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/Metadata;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 308
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    .line 309
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    .line 315
    :goto_0
    sget-object v0, Lcom/microsoft/bond/Modifier;->Optional:Lcom/microsoft/bond/Modifier;

    iput-object v0, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    .line 316
    new-instance v0, Lcom/microsoft/bond/Variant;

    invoke-direct {v0}, Lcom/microsoft/bond/Variant;-><init>()V

    iput-object v0, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    .line 317
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public final setAttributes(Ljava/util/HashMap;)V
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
    .line 82
    .local p1, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    .line 83
    return-void
.end method

.method public final setDefault_value(Lcom/microsoft/bond/Variant;)V
    .locals 0
    .param p1, "value"    # Lcom/microsoft/bond/Variant;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    .line 111
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 263
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 248
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    goto :goto_0

    .line 251
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    goto :goto_0

    .line 254
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/util/HashMap;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    goto :goto_0

    .line 257
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Lcom/microsoft/bond/Modifier;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    goto :goto_0

    .line 260
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Lcom/microsoft/bond/Variant;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final setModifier(Lcom/microsoft/bond/Modifier;)V
    .locals 0
    .param p1, "value"    # Lcom/microsoft/bond/Modifier;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    .line 97
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public final setQualified_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    .line 69
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
    .line 323
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 324
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
    .line 330
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 331
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

    .line 467
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 469
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/Metadata;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 472
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Metadata;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 478
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 479
    return-void

    .line 476
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Metadata;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

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

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 482
    sget-object v4, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v4}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 483
    .local v0, "canOmitFields":Z
    sget-object v4, Lcom/microsoft/bond/Metadata$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v4, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 486
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_3

    .line 487
    :cond_0
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v8, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 488
    iget-object v4, p0, Lcom/microsoft/bond/Metadata;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 494
    :goto_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_4

    .line 495
    :cond_1
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v6, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 496
    iget-object v4, p0, Lcom/microsoft/bond/Metadata;->qualified_name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 502
    :goto_1
    iget-object v4, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 503
    .local v3, "size3":I
    if-eqz v0, :cond_2

    if-eqz v3, :cond_7

    .line 504
    :cond_2
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v7, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 505
    iget-object v4, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    sget-object v5, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    sget-object v6, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v4, v5, v6}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 506
    iget-object v4, p0, Lcom/microsoft/bond/Metadata;->attributes:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 508
    .local v1, "e4":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 510
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 491
    .end local v1    # "e4":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "size3":I
    :cond_3
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v8, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_0

    .line 499
    :cond_4
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v6, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1

    .line 512
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "size3":I
    :cond_5
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    .line 513
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 518
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v4}, Lcom/microsoft/bond/Modifier;->getValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/bond/Variant;->getInt_value()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    .line 519
    :cond_6
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v9, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 520
    iget-object v4, p0, Lcom/microsoft/bond/Metadata;->modifier:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v4}, Lcom/microsoft/bond/Modifier;->getValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeInt32(I)V

    .line 521
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 526
    :goto_4
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    const/4 v5, 0x4

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 527
    iget-object v4, p0, Lcom/microsoft/bond/Metadata;->default_value:Lcom/microsoft/bond/Variant;

    invoke-virtual {v4, p1, v8}, Lcom/microsoft/bond/Variant;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 528
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 530
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 531
    return-void

    .line 515
    :cond_7
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v7, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_3

    .line 523
    :cond_8
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Metadata$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v9, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_4
.end method
