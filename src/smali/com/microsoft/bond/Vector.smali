.class public Lcom/microsoft/bond/Vector;
.super Ljava/lang/Object;
.source "Vector.java"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;
.implements Lcom/microsoft/bond/BondMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/Vector$Schema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/microsoft/bond/BondSerializable;",
        "U::",
        "Lcom/microsoft/bond/BondSerializable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/bond/BondSerializable;",
        "Lcom/microsoft/bond/BondMirror;"
    }
.end annotation


# instance fields
.field private generic_type_T:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private generic_type_U:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TU;>;"
        }
    .end annotation
.end field

.field private value:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 162
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-direct {p0}, Lcom/microsoft/bond/Vector;->getGenericTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 164
    .local v0, "genericTypes":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .line 165
    .local v1, "typeIndex":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "typeIndex":I
    .local v2, "typeIndex":I
    aget-object v3, v0, v1

    check-cast v3, Ljava/lang/Class;

    iput-object v3, p0, Lcom/microsoft/bond/Vector;->generic_type_T:Ljava/lang/Class;

    .line 166
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "typeIndex":I
    .restart local v1    # "typeIndex":I
    aget-object v3, v0, v2

    check-cast v3, Ljava/lang/Class;

    iput-object v3, p0, Lcom/microsoft/bond/Vector;->generic_type_U:Ljava/lang/Class;

    .line 167
    invoke-virtual {p0}, Lcom/microsoft/bond/Vector;->reset()V

    .line 168
    return-void
.end method

.method private getGenericTypeArguments()[Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .line 375
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 376
    .local v1, "superclass":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 377
    .local v0, "actualTypeArguments":[Ljava/lang/reflect/Type;
    return-object v0
.end method

.method public static getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/microsoft/bond/Vector$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    return-object v0
.end method

.method private readFieldImpl_value(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .locals 6
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p2, "typeInPayload"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {p2, v4}, Lcom/microsoft/bond/internal/ReadHelper;->validateType(Lcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    .line 274
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;

    move-result-object v3

    .line 275
    .local v3, "tag1":Lcom/microsoft/bond/ProtocolReader$ListTag;
    iget-object v4, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    iget v5, v3, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 276
    const/4 v2, 0x0

    .local v2, "i3":I
    :goto_0
    iget v4, v3, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    if-ge v2, v4, :cond_0

    .line 277
    const/4 v1, 0x0

    .line 279
    .local v1, "element2":Lcom/microsoft/bond/BondSerializable;, "TT;"
    :try_start_0
    iget-object v4, p0, Lcom/microsoft/bond/Vector;->generic_type_T:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/microsoft/bond/BondSerializable;

    move-object v1, v0

    .line 280
    invoke-interface {v1, p1}, Lcom/microsoft/bond/BondSerializable;->readNested(Lcom/microsoft/bond/ProtocolReader;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_1
    iget-object v4, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    .end local v1    # "element2":Lcom/microsoft/bond/BondSerializable;, "TT;"
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    .line 288
    return-void

    .line 282
    .restart local v1    # "element2":Lcom/microsoft/bond/BondSerializable;, "TT;"
    :catch_0
    move-exception v4

    goto :goto_1

    .line 281
    :catch_1
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public clone()Lcom/microsoft/bond/BondSerializable;
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
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
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    invoke-virtual {p0}, Lcom/microsoft/bond/Vector;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/microsoft/bond/StructDef;)Lcom/microsoft/bond/BondMirror;
    .locals 1
    .param p1, "structDef"    # Lcom/microsoft/bond/StructDef;

    .prologue
    .line 135
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getField(Lcom/microsoft/bond/FieldDef;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;

    .prologue
    .line 110
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getSchema()Lcom/microsoft/bond/SchemaDef;
    .locals 1

    .prologue
    .line 143
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    invoke-static {}, Lcom/microsoft/bond/Vector;->getRuntimeSchema()Lcom/microsoft/bond/SchemaDef;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    iget-object v0, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

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
    .line 295
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 296
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    const/4 v1, 0x0

    .line 339
    if-nez p1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 343
    check-cast v0, Lcom/microsoft/bond/Vector;

    .line 345
    .local v0, "that":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    invoke-virtual {p0, v0}, Lcom/microsoft/bond/Vector;->memberwiseCompareQuick(Lcom/microsoft/bond/Vector;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/Vector;->memberwiseCompareDeep(Lcom/microsoft/bond/Vector;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareDeep(Lcom/microsoft/bond/Vector;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/bond/Vector",
            "<TT;TU;>;)Z"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    .local p1, "that":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    const/4 v0, 0x1

    .line 359
    .local v0, "equals":Z
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 360
    const/4 v1, 0x0

    .local v1, "i1":I
    :goto_0
    iget-object v4, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 361
    iget-object v4, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/bond/BondSerializable;

    .line 362
    .local v2, "val2":Lcom/microsoft/bond/BondSerializable;, "TT;"
    iget-object v4, p1, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/bond/BondSerializable;

    .line 365
    .local v3, "val3":Lcom/microsoft/bond/BondSerializable;, "TT;"
    if-nez v0, :cond_1

    .line 370
    .end local v1    # "i1":I
    .end local v2    # "val2":Lcom/microsoft/bond/BondSerializable;, "TT;"
    .end local v3    # "val3":Lcom/microsoft/bond/BondSerializable;, "TT;"
    :cond_0
    return v0

    .line 360
    .restart local v1    # "i1":I
    .restart local v2    # "val2":Lcom/microsoft/bond/BondSerializable;, "TT;"
    .restart local v3    # "val3":Lcom/microsoft/bond/BondSerializable;, "TT;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected memberwiseCompareQuick(Lcom/microsoft/bond/Vector;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/bond/Vector",
            "<TT;TU;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    .local p1, "that":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 349
    const/4 v0, 0x1

    .line 351
    .local v0, "equals":Z
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iget-object v4, p1, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    move v4, v2

    :goto_1
    if-ne v1, v4, :cond_3

    move v0, v2

    .line 352
    :goto_2
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    :cond_0
    move v0, v2

    .line 353
    :goto_3
    return v0

    :cond_1
    move v1, v3

    .line 351
    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    .line 352
    :cond_4
    iget-object v1, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v4, p1, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v1, v4, :cond_0

    :cond_5
    move v0, v3

    goto :goto_3
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
    .line 204
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readBegin()V

    .line 205
    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Vector;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 206
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readEnd()V

    .line 207
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
    .line 225
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
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
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    const/4 v1, 0x0

    .line 213
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Vector;->readUntagged(Lcom/microsoft/bond/ProtocolReader;Z)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Vector;->readTagged(Lcom/microsoft/bond/ProtocolReader;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
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
    .line 242
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 246
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldBegin()Lcom/microsoft/bond/ProtocolReader$FieldTag;

    move-result-object v0

    .line 248
    .local v0, "fieldTag":Lcom/microsoft/bond/ProtocolReader$FieldTag;
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_2

    .line 250
    :cond_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 266
    .local v1, "isPartial":Z
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readStructEnd()V

    .line 268
    return v1

    .line 250
    .end local v1    # "isPartial":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 254
    :cond_2
    iget v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    packed-switch v2, :pswitch_data_0

    .line 259
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 263
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldEnd()V

    goto :goto_0

    .line 256
    :pswitch_0
    iget-object v2, v0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v2}, Lcom/microsoft/bond/Vector;->readFieldImpl_value(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

    goto :goto_2

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 228
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 230
    .local v0, "canOmitFields":Z
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolReader;->readStructBegin(Z)V

    .line 233
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->readFieldOmitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    :cond_0
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-direct {p0, p1, v1}, Lcom/microsoft/bond/Vector;->readFieldImpl_value(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V

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
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    const-string v0, "Vector"

    const-string v1, "com.microsoft.bond.Vector"

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/Vector;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method protected reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 179
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    iget-object v0, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setField(Lcom/microsoft/bond/FieldDef;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldDef"    # Lcom/microsoft/bond/FieldDef;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 123
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    invoke-virtual {p1}, Lcom/microsoft/bond/FieldDef;->getId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 125
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final setValue(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    .local p1, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iput-object p1, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    .line 43
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
    .line 190
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 191
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
    .line 197
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 198
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
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    const/4 v1, 0x0

    .line 302
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeBegin()V

    .line 304
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->getFirstPassWriter()Lcom/microsoft/bond/ProtocolWriter;

    move-result-object v0

    .local v0, "firstPassWriter":Lcom/microsoft/bond/ProtocolWriter;
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/bond/Vector;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 307
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Vector;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    .line 313
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeEnd()V

    .line 314
    return-void

    .line 311
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/bond/Vector;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

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
    .local p0, "this":Lcom/microsoft/bond/Vector;, "Lcom/microsoft/bond/Vector<TT;TU;>;"
    const/4 v6, 0x0

    .line 317
    sget-object v4, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v4}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    .line 318
    .local v0, "canOmitFields":Z
    sget-object v4, Lcom/microsoft/bond/Vector$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {p1, v4, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V

    .line 321
    iget-object v4, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 322
    .local v3, "size1":I
    if-eqz v0, :cond_0

    if-eqz v3, :cond_2

    .line 323
    :cond_0
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Vector$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v6, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    .line 324
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v3, v4}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V

    .line 325
    iget-object v4, p0, Lcom/microsoft/bond/Vector;->value:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/bond/BondSerializable;

    .line 326
    .local v2, "item2":Lcom/microsoft/bond/BondSerializable;, "TT;"
    invoke-interface {v2, p1, v6}, Lcom/microsoft/bond/BondSerializable;->writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V

    goto :goto_0

    .line 328
    .end local v2    # "item2":Lcom/microsoft/bond/BondSerializable;, "TT;"
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeContainerEnd()V

    .line 329
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldEnd()V

    .line 334
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-virtual {p1, p2}, Lcom/microsoft/bond/ProtocolWriter;->writeStructEnd(Z)V

    .line 335
    return-void

    .line 331
    :cond_2
    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    invoke-static {}, Lcom/microsoft/bond/Vector$Schema;->access$000()Lcom/microsoft/bond/Metadata;

    move-result-object v5

    invoke-virtual {p1, v4, v6, v5}, Lcom/microsoft/bond/ProtocolWriter;->writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V

    goto :goto_1
.end method
