.class public LMicrosoft/Telemetry/Extensions/cloud;
.super LMicrosoft/Telemetry/Extension;
.source "cloud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMicrosoft/Telemetry/Extensions/cloud$Schema;
    }
.end annotation


# instance fields
.field private deploymentUnit:Ljava/lang/String;

.field private environment:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private role:Ljava/lang/String;

.field private roleInstance:Ljava/lang/String;

.field private roleVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, LMicrosoft/Telemetry/Extension;-><init>()V

    .line 368
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 361
    sget-object v0, LMicrosoft/Telemetry/Extensions/cloud$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

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
    invoke-virtual {p0}, LMicrosoft/Telemetry/Extensions/cloud;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 1
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDeploymentUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnvironment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 290
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 306
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 292
    :sswitch_0
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    goto :goto_0

    .line 294
    :sswitch_1
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    goto :goto_0

    .line 296
    :sswitch_2
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    goto :goto_0

    .line 298
    :sswitch_3
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    goto :goto_0

    .line 300
    :sswitch_4
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    goto :goto_0

    .line 302
    :sswitch_5
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    goto :goto_0

    .line 304
    :sswitch_6
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    goto :goto_0

    .line 290
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
        0x3c -> :sswitch_5
        0x46 -> :sswitch_6
    .end sparse-switch
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    return-object v0
.end method

.method public final getRoleInstance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    return-object v0
.end method

.method public final getRoleVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 353
    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

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
    .line 546
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 547
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 617
    if-nez p1, :cond_1

    .line 623
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 621
    check-cast v0, LMicrosoft/Telemetry/Extensions/cloud;

    .line 623
    .local v0, "that":LMicrosoft/Telemetry/Extensions/cloud;
    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Extensions/cloud;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/cloud;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, LMicrosoft/Telemetry/Extensions/cloud;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/cloud;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(LMicrosoft/Telemetry/Extensions/cloud;)Z
    .locals 5
    .param p1, "that"    # LMicrosoft/Telemetry/Extensions/cloud;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 647
    const/4 v0, 0x1

    .line 648
    .local v0, "equals":Z
    if-eqz v0, :cond_7

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Extension;->memberwiseCompareDeep(LMicrosoft/Telemetry/Extension;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v1

    .line 649
    :goto_0
    if-eqz v0, :cond_9

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    if-nez v3, :cond_8

    :cond_0
    move v0, v1

    .line 650
    :goto_1
    if-eqz v0, :cond_b

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    if-nez v3, :cond_a

    :cond_1
    move v0, v1

    .line 651
    :goto_2
    if-eqz v0, :cond_d

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    if-nez v3, :cond_c

    :cond_2
    move v0, v1

    .line 652
    :goto_3
    if-eqz v0, :cond_f

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    if-nez v3, :cond_e

    :cond_3
    move v0, v1

    .line 653
    :goto_4
    if-eqz v0, :cond_11

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    if-nez v3, :cond_10

    :cond_4
    move v0, v1

    .line 654
    :goto_5
    if-eqz v0, :cond_13

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    if-nez v3, :cond_12

    :cond_5
    move v0, v1

    .line 655
    :goto_6
    if-eqz v0, :cond_15

    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    if-nez v3, :cond_14

    :cond_6
    move v0, v1

    .line 656
    :goto_7
    return v0

    :cond_7
    move v0, v2

    .line 648
    goto :goto_0

    .line 649
    :cond_8
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_9
    move v0, v2

    goto :goto_1

    .line 650
    :cond_a
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_b
    move v0, v2

    goto :goto_2

    .line 651
    :cond_c
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_d
    move v0, v2

    goto :goto_3

    .line 652
    :cond_e
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_f
    move v0, v2

    goto :goto_4

    .line 653
    :cond_10
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_11
    move v0, v2

    goto :goto_5

    .line 654
    :cond_12
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_13
    move v0, v2

    goto :goto_6

    .line 655
    :cond_14
    iget-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_15
    move v0, v2

    goto :goto_7
.end method

.method protected memberwiseCompareQuick(LMicrosoft/Telemetry/Extensions/cloud;)Z
    .locals 5
    .param p1, "that"    # LMicrosoft/Telemetry/Extensions/cloud;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 627
    const/4 v0, 0x1

    .line 628
    .local v0, "equals":Z
    if-eqz v0, :cond_7

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Extension;->memberwiseCompareQuick(LMicrosoft/Telemetry/Extension;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v2

    .line 629
    :goto_0
    if-eqz v0, :cond_a

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    if-nez v1, :cond_8

    move v1, v2

    :goto_1
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    if-nez v4, :cond_9

    move v4, v2

    :goto_2
    if-ne v1, v4, :cond_a

    move v0, v2

    .line 630
    :goto_3
    if-eqz v0, :cond_c

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    if-nez v1, :cond_b

    :cond_0
    move v0, v2

    .line 631
    :goto_4
    if-eqz v0, :cond_f

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    if-nez v1, :cond_d

    move v1, v2

    :goto_5
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    if-nez v4, :cond_e

    move v4, v2

    :goto_6
    if-ne v1, v4, :cond_f

    move v0, v2

    .line 632
    :goto_7
    if-eqz v0, :cond_11

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    if-nez v1, :cond_10

    :cond_1
    move v0, v2

    .line 633
    :goto_8
    if-eqz v0, :cond_14

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    if-nez v1, :cond_12

    move v1, v2

    :goto_9
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    if-nez v4, :cond_13

    move v4, v2

    :goto_a
    if-ne v1, v4, :cond_14

    move v0, v2

    .line 634
    :goto_b
    if-eqz v0, :cond_16

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    if-nez v1, :cond_15

    :cond_2
    move v0, v2

    .line 635
    :goto_c
    if-eqz v0, :cond_19

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    if-nez v1, :cond_17

    move v1, v2

    :goto_d
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    if-nez v4, :cond_18

    move v4, v2

    :goto_e
    if-ne v1, v4, :cond_19

    move v0, v2

    .line 636
    :goto_f
    if-eqz v0, :cond_1b

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    if-nez v1, :cond_1a

    :cond_3
    move v0, v2

    .line 637
    :goto_10
    if-eqz v0, :cond_1e

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    if-nez v1, :cond_1c

    move v1, v2

    :goto_11
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    if-nez v4, :cond_1d

    move v4, v2

    :goto_12
    if-ne v1, v4, :cond_1e

    move v0, v2

    .line 638
    :goto_13
    if-eqz v0, :cond_20

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    if-nez v1, :cond_1f

    :cond_4
    move v0, v2

    .line 639
    :goto_14
    if-eqz v0, :cond_23

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    if-nez v1, :cond_21

    move v1, v2

    :goto_15
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    if-nez v4, :cond_22

    move v4, v2

    :goto_16
    if-ne v1, v4, :cond_23

    move v0, v2

    .line 640
    :goto_17
    if-eqz v0, :cond_25

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    if-nez v1, :cond_24

    :cond_5
    move v0, v2

    .line 641
    :goto_18
    if-eqz v0, :cond_28

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    if-nez v1, :cond_26

    move v1, v2

    :goto_19
    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    if-nez v4, :cond_27

    move v4, v2

    :goto_1a
    if-ne v1, v4, :cond_28

    move v0, v2

    .line 642
    :goto_1b
    if-eqz v0, :cond_2a

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    if-nez v1, :cond_29

    :cond_6
    move v0, v2

    .line 643
    :goto_1c
    return v0

    :cond_7
    move v0, v3

    .line 628
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 629
    goto/16 :goto_1

    :cond_9
    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v0, v3

    goto/16 :goto_3

    .line 630
    :cond_b
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_0

    :cond_c
    move v0, v3

    goto/16 :goto_4

    :cond_d
    move v1, v3

    .line 631
    goto/16 :goto_5

    :cond_e
    move v4, v3

    goto/16 :goto_6

    :cond_f
    move v0, v3

    goto/16 :goto_7

    .line 632
    :cond_10
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_1

    :cond_11
    move v0, v3

    goto/16 :goto_8

    :cond_12
    move v1, v3

    .line 633
    goto/16 :goto_9

    :cond_13
    move v4, v3

    goto/16 :goto_a

    :cond_14
    move v0, v3

    goto/16 :goto_b

    .line 634
    :cond_15
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_2

    :cond_16
    move v0, v3

    goto/16 :goto_c

    :cond_17
    move v1, v3

    .line 635
    goto/16 :goto_d

    :cond_18
    move v4, v3

    goto/16 :goto_e

    :cond_19
    move v0, v3

    goto/16 :goto_f

    .line 636
    :cond_1a
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_3

    :cond_1b
    move v0, v3

    goto/16 :goto_10

    :cond_1c
    move v1, v3

    .line 637
    goto/16 :goto_11

    :cond_1d
    move v4, v3

    goto/16 :goto_12

    :cond_1e
    move v0, v3

    goto/16 :goto_13

    .line 638
    :cond_1f
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_4

    :cond_20
    move v0, v3

    goto/16 :goto_14

    :cond_21
    move v1, v3

    .line 639
    goto/16 :goto_15

    :cond_22
    move v4, v3

    goto/16 :goto_16

    :cond_23
    move v0, v3

    goto/16 :goto_17

    .line 640
    :cond_24
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_5

    :cond_25
    move v0, v3

    goto/16 :goto_18

    :cond_26
    move v1, v3

    .line 641
    goto/16 :goto_19

    :cond_27
    move v4, v3

    goto/16 :goto_1a

    :cond_28
    move v0, v3

    goto/16 :goto_1b

    .line 642
    :cond_29
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_6

    :cond_2a
    move v0, v3

    goto/16 :goto_1c
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
    .line 406
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 407
    invoke-virtual {p0, p1}, LMicrosoft/Telemetry/Extensions/cloud;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 408
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 409
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
    .line 427
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

    .line 415
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/cloud;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/cloud;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
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

    .line 484
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 486
    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 538
    :goto_0
    return v2

    .line 503
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :sswitch_0
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    .line 532
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    .line 493
    .end local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 495
    .restart local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_3

    .line 497
    :cond_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_2

    .line 535
    .local v1, "isPartial":Z
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    move v2, v1

    .line 538
    goto :goto_0

    .end local v1    # "isPartial":Z
    :cond_2
    move v1, v2

    .line 497
    goto :goto_2

    .line 501
    :cond_3
    iget v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    sparse-switch v3, :sswitch_data_0

    .line 528
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    .line 507
    :sswitch_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    goto :goto_1

    .line 511
    :sswitch_2
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    goto :goto_1

    .line 515
    :sswitch_3
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    goto :goto_1

    .line 519
    :sswitch_4
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    goto :goto_1

    .line 522
    :sswitch_5
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    goto :goto_1

    .line 525
    :sswitch_6
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    goto :goto_1

    .line 501
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
    .line 430
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 432
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 433
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 435
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 436
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    .line 443
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 444
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    .line 451
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 452
    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    .line 459
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 460
    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    .line 467
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_9

    .line 468
    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    .line 471
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_b

    .line 472
    :cond_a
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    .line 475
    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_d

    .line 476
    :cond_c
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    .line 478
    :cond_d
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 479
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 374
    const-string v0, "cloud"

    const-string v1, "Microsoft.Telemetry.Extensions.cloud"

    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/cloud;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 378
    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Extension;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    .line 380
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    .line 381
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    .line 382
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    .line 383
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    .line 384
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    .line 385
    const-string v0, ""

    iput-object v0, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public final setDeploymentUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public final setEnvironment(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 338
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 317
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    goto :goto_0

    .line 320
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    goto :goto_0

    .line 323
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    goto :goto_0

    .line 326
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    goto :goto_0

    .line 329
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    goto :goto_0

    .line 332
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_5
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    goto :goto_0

    .line 335
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_6
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    goto :goto_0

    .line 315
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
    .end sparse-switch
.end method

.method public final setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public final setRole(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public final setRoleInstance(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public final setRoleVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    .line 118
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
    .line 392
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 393
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
    .line 399
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 400
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

    .line 553
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 555
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p0, v0, v1}, LMicrosoft/Telemetry/Extensions/cloud;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 558
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/cloud;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 564
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 565
    return-void

    .line 562
    :cond_0
    invoke-virtual {p0, p1, v1}, LMicrosoft/Telemetry/Extensions/cloud;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

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
    const/16 v6, 0x46

    const/16 v5, 0x3c

    const/16 v4, 0x32

    .line 568
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 569
    .local v0, "canOmitFields":Z
    sget-object v1, LMicrosoft/Telemetry/Extensions/cloud$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 570
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Extension;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 572
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0xa

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 573
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 576
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x14

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 577
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->role:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 580
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x1e

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$200()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 581
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleInstance:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 584
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x28

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$300()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 585
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->location:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 588
    if-eqz v0, :cond_0

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 589
    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v4, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 590
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->roleVer:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 596
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 597
    :cond_1
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v5, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 598
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->environment:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 604
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/bond/Variant;->getString_value()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 605
    :cond_2
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 606
    iget-object v1, p0, LMicrosoft/Telemetry/Extensions/cloud;->deploymentUnit:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeString(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 612
    :goto_2
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 613
    return-void

    .line 593
    :cond_3
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$400()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v4, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_0

    .line 601
    :cond_4
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$500()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v5, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1

    .line 609
    :cond_5
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, LMicrosoft/Telemetry/Extensions/cloud$Schema;->access$600()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_2
.end method
