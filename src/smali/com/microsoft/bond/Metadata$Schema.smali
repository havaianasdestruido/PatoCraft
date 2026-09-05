.class public Lcom/microsoft/bond/Metadata$Schema;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/bond/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Schema"
.end annotation


# static fields
.field private static final attributes_metadata:Lcom/microsoft/bond/Metadata;

.field private static final default_value_metadata:Lcom/microsoft/bond/Metadata;

.field public static final metadata:Lcom/microsoft/bond/Metadata;

.field private static final modifier_metadata:Lcom/microsoft/bond/Metadata;

.field private static final name_metadata:Lcom/microsoft/bond/Metadata;

.field private static final qualified_name_metadata:Lcom/microsoft/bond/Metadata;

.field public static final schemaDef:Lcom/microsoft/bond/SchemaDef;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 126
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/bond/Metadata$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    .line 127
    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "Metadata"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "com.microsoft.bond.Metadata"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setQualified_name(Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/bond/Metadata$Schema;->name_metadata:Lcom/microsoft/bond/Metadata;

    .line 133
    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->name_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/bond/Metadata$Schema;->qualified_name_metadata:Lcom/microsoft/bond/Metadata;

    .line 137
    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->qualified_name_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "qualified_name"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/bond/Metadata$Schema;->attributes_metadata:Lcom/microsoft/bond/Metadata;

    .line 141
    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->attributes_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "attributes"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 144
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/bond/Metadata$Schema;->modifier_metadata:Lcom/microsoft/bond/Metadata;

    .line 145
    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->modifier_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "modifier"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->modifier_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v0

    sget-object v1, Lcom/microsoft/bond/Modifier;->Optional:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v1}, Lcom/microsoft/bond/Modifier;->getValue()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/microsoft/bond/Variant;->setInt_value(J)V

    .line 149
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/bond/Metadata$Schema;->default_value_metadata:Lcom/microsoft/bond/Metadata;

    .line 150
    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->default_value_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "default_value"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/microsoft/bond/SchemaDef;

    invoke-direct {v0}, Lcom/microsoft/bond/SchemaDef;-><init>()V

    sput-object v0, Lcom/microsoft/bond/Metadata$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    .line 153
    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    sget-object v1, Lcom/microsoft/bond/Metadata$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    invoke-static {v1}, Lcom/microsoft/bond/Metadata$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/SchemaDef;->setRoot(Lcom/microsoft/bond/TypeDef;)V

    .line 154
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->name_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$100()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->qualified_name_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$200()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->attributes_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$300()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->modifier_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$400()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/microsoft/bond/Metadata$Schema;->default_value_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method private static getStructDef(Lcom/microsoft/bond/SchemaDef;)S
    .locals 5
    .param p0, "schema"    # Lcom/microsoft/bond/SchemaDef;

    .prologue
    .line 168
    const/4 v1, 0x0

    .local v1, "pos":S
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/bond/StructDef;

    invoke-virtual {v3}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/Metadata$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    if-ne v3, v4, :cond_0

    .line 217
    :goto_1
    return v1

    .line 168
    :cond_0
    add-int/lit8 v3, v1, 0x1

    int-to-short v1, v3

    goto :goto_0

    .line 176
    :cond_1
    new-instance v2, Lcom/microsoft/bond/StructDef;

    invoke-direct {v2}, Lcom/microsoft/bond/StructDef;-><init>()V

    .line 177
    .local v2, "structDef":Lcom/microsoft/bond/StructDef;
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v3, Lcom/microsoft/bond/Metadata$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/StructDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 183
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 184
    .local v0, "field":Lcom/microsoft/bond/FieldDef;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 185
    sget-object v3, Lcom/microsoft/bond/Metadata$Schema;->name_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 186
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 187
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 190
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 191
    sget-object v3, Lcom/microsoft/bond/Metadata$Schema;->qualified_name_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 192
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 193
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 196
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 197
    sget-object v3, Lcom/microsoft/bond/Metadata$Schema;->attributes_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 198
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 199
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    new-instance v4, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v4}, Lcom/microsoft/bond/TypeDef;-><init>()V

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setKey(Lcom/microsoft/bond/TypeDef;)V

    .line 200
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    new-instance v4, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v4}, Lcom/microsoft/bond/TypeDef;-><init>()V

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setElement(Lcom/microsoft/bond/TypeDef;)V

    .line 201
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/bond/TypeDef;->getKey()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 202
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/bond/TypeDef;->getElement()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 203
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 206
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 207
    sget-object v3, Lcom/microsoft/bond/Metadata$Schema;->modifier_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 208
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 209
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 212
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 213
    sget-object v3, Lcom/microsoft/bond/Metadata$Schema;->default_value_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 214
    invoke-static {p0}, Lcom/microsoft/bond/Variant$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setType(Lcom/microsoft/bond/TypeDef;)V

    .line 215
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public static getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;
    .locals 2
    .param p0, "schema"    # Lcom/microsoft/bond/SchemaDef;

    .prologue
    .line 158
    new-instance v0, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v0}, Lcom/microsoft/bond/TypeDef;-><init>()V

    .line 159
    .local v0, "type":Lcom/microsoft/bond/TypeDef;
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 160
    invoke-static {p0}, Lcom/microsoft/bond/Metadata$Schema;->getStructDef(Lcom/microsoft/bond/SchemaDef;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/TypeDef;->setStruct_def(S)V

    .line 161
    return-object v0
.end method
