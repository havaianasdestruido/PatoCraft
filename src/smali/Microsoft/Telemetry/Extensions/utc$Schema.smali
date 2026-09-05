.class public LMicrosoft/Telemetry/Extensions/utc$Schema;
.super Ljava/lang/Object;
.source "utc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMicrosoft/Telemetry/Extensions/utc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Schema"
.end annotation


# static fields
.field private static final aId_metadata:Lcom/microsoft/bond/Metadata;

.field private static final cat_metadata:Lcom/microsoft/bond/Metadata;

.field private static final flags_metadata:Lcom/microsoft/bond/Metadata;

.field public static final metadata:Lcom/microsoft/bond/Metadata;

.field private static final op_metadata:Lcom/microsoft/bond/Metadata;

.field private static final raId_metadata:Lcom/microsoft/bond/Metadata;

.field public static final schemaDef:Lcom/microsoft/bond/SchemaDef;

.field private static final sqmId_metadata:Lcom/microsoft/bond/Metadata;

.field private static final stId_metadata:Lcom/microsoft/bond/Metadata;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 163
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    .line 164
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "utc"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 165
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "Microsoft.Telemetry.Extensions.utc"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setQualified_name(Ljava/lang/String;)V

    .line 167
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "Describes the properties that might be populated by a logging library on Windows."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->stId_metadata:Lcom/microsoft/bond/Metadata;

    .line 171
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->stId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "stId"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 172
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->stId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "Used for UTC scenarios."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->aId_metadata:Lcom/microsoft/bond/Metadata;

    .line 176
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->aId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "aId"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 177
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->aId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "Activity Id in ETW (event tracing for windows)."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->raId_metadata:Lcom/microsoft/bond/Metadata;

    .line 181
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->raId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "raId"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 182
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->raId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "Related Activity Id in ETW."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->op_metadata:Lcom/microsoft/bond/Metadata;

    .line 186
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->op_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "op"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 187
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->op_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "Op Code in ETW."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->cat_metadata:Lcom/microsoft/bond/Metadata;

    .line 191
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->cat_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "cat"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 192
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->cat_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "Categories."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->cat_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/bond/Variant;->setInt_value(J)V

    .line 196
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->flags_metadata:Lcom/microsoft/bond/Metadata;

    .line 197
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->flags_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "flags"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 198
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->flags_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "This captures the characteristics of the traffic. Examples: isTest, isInternal."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->flags_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/bond/Variant;->setInt_value(J)V

    .line 202
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->sqmId_metadata:Lcom/microsoft/bond/Metadata;

    .line 203
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->sqmId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "sqmId"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 204
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->sqmId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "The Windows SQM device ID."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v0, Lcom/microsoft/bond/SchemaDef;

    invoke-direct {v0}, Lcom/microsoft/bond/SchemaDef;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    .line 207
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    sget-object v1, LMicrosoft/Telemetry/Extensions/utc$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    invoke-static {v1}, LMicrosoft/Telemetry/Extensions/utc$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/SchemaDef;->setRoot(Lcom/microsoft/bond/TypeDef;)V

    .line 208
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 151
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->stId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$100()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 151
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->aId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$200()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 151
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->raId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$300()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 151
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->op_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$400()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 151
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->cat_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$500()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 151
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->flags_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$600()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 151
    sget-object v0, LMicrosoft/Telemetry/Extensions/utc$Schema;->sqmId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method private static getStructDef(Lcom/microsoft/bond/SchemaDef;)S
    .locals 5
    .param p0, "schema"    # Lcom/microsoft/bond/SchemaDef;

    .prologue
    .line 222
    const/4 v1, 0x0

    .local v1, "pos":S
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/bond/StructDef;

    invoke-virtual {v3}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    sget-object v4, LMicrosoft/Telemetry/Extensions/utc$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    if-ne v3, v4, :cond_0

    .line 280
    :goto_1
    return v1

    .line 222
    :cond_0
    add-int/lit8 v3, v1, 0x1

    int-to-short v1, v3

    goto :goto_0

    .line 230
    :cond_1
    new-instance v2, Lcom/microsoft/bond/StructDef;

    invoke-direct {v2}, Lcom/microsoft/bond/StructDef;-><init>()V

    .line 231
    .local v2, "structDef":Lcom/microsoft/bond/StructDef;
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v3, LMicrosoft/Telemetry/Extensions/utc$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/StructDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 234
    invoke-static {p0}, LMicrosoft/Telemetry/Extension$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/StructDef;->setBase_def(Lcom/microsoft/bond/TypeDef;)V

    .line 238
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 239
    .local v0, "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 240
    sget-object v3, LMicrosoft/Telemetry/Extensions/utc$Schema;->stId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 241
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 242
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 245
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 246
    sget-object v3, LMicrosoft/Telemetry/Extensions/utc$Schema;->aId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 247
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 248
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 251
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 252
    sget-object v3, LMicrosoft/Telemetry/Extensions/utc$Schema;->raId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 253
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 254
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 257
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 258
    sget-object v3, LMicrosoft/Telemetry/Extensions/utc$Schema;->op_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 259
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 260
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 263
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 264
    sget-object v3, LMicrosoft/Telemetry/Extensions/utc$Schema;->cat_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 265
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 266
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 269
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 270
    sget-object v3, LMicrosoft/Telemetry/Extensions/utc$Schema;->flags_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 271
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 272
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 275
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x46

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 276
    sget-object v3, LMicrosoft/Telemetry/Extensions/utc$Schema;->sqmId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 277
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 278
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public static getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;
    .locals 2
    .param p0, "schema"    # Lcom/microsoft/bond/SchemaDef;

    .prologue
    .line 212
    new-instance v0, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v0}, Lcom/microsoft/bond/TypeDef;-><init>()V

    .line 213
    .local v0, "type":Lcom/microsoft/bond/TypeDef;
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 214
    invoke-static {p0}, LMicrosoft/Telemetry/Extensions/utc$Schema;->getStructDef(Lcom/microsoft/bond/SchemaDef;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/TypeDef;->setStruct_def(S)V

    .line 215
    return-object v0
.end method
