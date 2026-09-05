.class public Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;
.super LMicrosoft/Telemetry/Data;
.source "PageAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/telemetry/utc/PageAction$Schema;
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
.field private actionName:Ljava/lang/String;

.field private pageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, LMicrosoft/Telemetry/Data;-><init>()V

    .line 196
    return-void
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

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
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 1
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 149
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 145
    :sswitch_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->actionName:Ljava/lang/String;

    goto :goto_0

    .line 147
    :sswitch_1
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->pageName:Ljava/lang/String;

    goto :goto_0

    .line 143
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

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
    .line 324
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 325
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 363
    if-nez p1, :cond_1

    .line 369
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 367
    check-cast v0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;

    .line 369
    .local v0, "that":Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->memberwiseCompareQuick(Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->memberwiseCompareDeep(Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;)Z
    .locals 5
    .param p1, "that"    # Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 383
    const/4 v0, 0x1

    .line 384
    .local v0, "equals":Z
    if-eqz v0, :cond_2

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Data;->memberwiseCompareDeep(LMicrosoft/Telemetry/Data;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 385
    :goto_0
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->actionName:Ljava/lang/String;

    if-nez v3, :cond_3

    :cond_0
    move v0, v1

    .line 386
    :goto_1
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->pageName:Ljava/lang/String;

    if-nez v3, :cond_5

    :cond_1
    move v0, v1

    .line 387
    :goto_2
    return v0

    :cond_2
    move v0, v2

    .line 384
    goto :goto_0

    .line 385
    :cond_3
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->actionName:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->actionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v0, v2

    goto :goto_1

    .line 386
    :cond_5
    iget-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->pageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->pageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method protected memberwiseCompareQuick(Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;)Z
    .locals 5
    .param p1, "that"    # Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 373
    const/4 v0, 0x1

    .line 374
    .local v0, "equals":Z
    if-eqz v0, :cond_2

    invoke-super {p0, p1}, LMicrosoft/Telemetry/Data;->memberwiseCompareQuick(LMicrosoft/Telemetry/Data;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 375
    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->actionName:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->actionName:Ljava/lang/String;

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    if-ne v1, v4, :cond_5

    move v0, v2

    .line 376
    :goto_3
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->actionName:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_0
    move v0, v2

    .line 377
    :goto_4
    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->pageName:Ljava/lang/String;

    if-nez v1, :cond_8

    move v1, v2

    :goto_5
    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->pageName:Ljava/lang/String;

    if-nez v4, :cond_9

    move v4, v2

    :goto_6
    if-ne v1, v4, :cond_a

    move v0, v2

    .line 378
    :goto_7
    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->pageName:Ljava/lang/String;

    if-nez v1, :cond_b

    :cond_1
    move v0, v2

    .line 379
    :goto_8
    return v0

    :cond_2
    move v0, v3

    .line 374
    goto :goto_0

    :cond_3
    move v1, v3

    .line 375
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3

    .line 376
    :cond_6
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->actionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->actionName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_0

    :cond_7
    move v0, v3

    goto :goto_4

    :cond_8
    move v1, v3

    .line 377
    goto :goto_5

    :cond_9
    move v4, v3

    goto :goto_6

    :cond_a
    move v0, v3

    goto :goto_7

    .line 378
    :cond_b
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->pageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->pageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_1

    :cond_c
    move v0, v3

    goto :goto_8
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
    .line 229
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 230
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 231
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 232
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
    .line 250
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

    .line 238
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
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

    .line 279
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 281
    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Data;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 316
    :goto_0
    return v2

    .line 298
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :sswitch_0
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->actionName:Ljava/lang/String;

    .line 310
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    .line 288
    .end local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 290
    .restart local v0    # "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_3

    .line 292
    :cond_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v3, v4, :cond_2

    .line 313
    .local v1, "isPartial":Z
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    move v2, v1

    .line 316
    goto :goto_0

    .end local v1    # "isPartial":Z
    :cond_2
    move v1, v2

    .line 292
    goto :goto_2

    .line 296
    :cond_3
    iget v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    sparse-switch v3, :sswitch_data_0

    .line 306
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v3}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    goto :goto_1

    .line 302
    :sswitch_1
    iget-object v3, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-static {p1, v3}, Lcom/microsoft/bond/internal/ReadHelper;->readWString(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->pageName:Ljava/lang/String;

    goto :goto_1

    .line 296
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
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
    .line 253
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 255
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 256
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Data;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 258
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->actionName:Ljava/lang/String;

    .line 266
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 267
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->pageName:Ljava/lang/String;

    .line 273
    :cond_3
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 274
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "PageAction"

    const-string v1, "com.microsoft.xbox.idp.telemetry.utc.PageAction"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, LMicrosoft/Telemetry/Data;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->actionName:Ljava/lang/String;

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->pageName:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public final setActionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->actionName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 166
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 160
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->actionName:Ljava/lang/String;

    goto :goto_0

    .line 163
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->pageName:Ljava/lang/String;

    goto :goto_0

    .line 158
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public final setPageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->pageName:Ljava/lang/String;

    .line 61
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
    .line 215
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 216
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
    .line 222
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 223
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

    .line 331
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 333
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 336
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 342
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 343
    return-void

    .line 340
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

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
    .line 346
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 347
    .local v0, "canOmitFields":Z
    sget-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 348
    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, LMicrosoft/Telemetry/Data;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 350
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0xa

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 351
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->actionName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 354
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    const/16 v2, 0x14

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction$Schema;->access$100()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 355
    iget-object v1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->pageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolWriter;->writeWString(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 358
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 359
    return-void
.end method
