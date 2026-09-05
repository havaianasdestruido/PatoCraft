.class public LMicrosoft/Telemetry/Extensions/ingest$Schema;
.super Ljava/lang/Object;
.source "ingest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMicrosoft/Telemetry/Extensions/ingest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Schema"
.end annotation


# static fields
.field private static final auth_metadata:Lcom/microsoft/bond/Metadata;

.field private static final clientIp_metadata:Lcom/microsoft/bond/Metadata;

.field public static final metadata:Lcom/microsoft/bond/Metadata;

.field private static final quality_metadata:Lcom/microsoft/bond/Metadata;

.field public static final schemaDef:Lcom/microsoft/bond/SchemaDef;

.field private static final time_metadata:Lcom/microsoft/bond/Metadata;

.field private static final uploadTime_metadata:Lcom/microsoft/bond/Metadata;

.field private static final userAgent_metadata:Lcom/microsoft/bond/Metadata;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 145
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    .line 146
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "ingest"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 147
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "Microsoft.Telemetry.Extensions.ingest"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setQualified_name(Ljava/lang/String;)V

    .line 149
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "Describes the fields added dynamically by the service. Clients should NOT use this section since it is adding dynamically by the service."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->time_metadata:Lcom/microsoft/bond/Metadata;

    .line 153
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->time_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 154
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->time_metadata:Lcom/microsoft/bond/Metadata;

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    .line 155
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->time_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Name"

    const-string v2, "IngestDateTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->clientIp_metadata:Lcom/microsoft/bond/Metadata;

    .line 159
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->clientIp_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "clientIp"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 160
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->clientIp_metadata:Lcom/microsoft/bond/Metadata;

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    .line 161
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->clientIp_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Name"

    const-string v2, "ClientIp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->auth_metadata:Lcom/microsoft/bond/Metadata;

    .line 165
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->auth_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "auth"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 166
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->auth_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Name"

    const-string v2, "DataAuthorization"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->auth_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/bond/Variant;->setInt_value(J)V

    .line 170
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->quality_metadata:Lcom/microsoft/bond/Metadata;

    .line 171
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->quality_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "quality"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 172
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->quality_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Name"

    const-string v2, "DataQuality"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->quality_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/bond/Variant;->setInt_value(J)V

    .line 176
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->uploadTime_metadata:Lcom/microsoft/bond/Metadata;

    .line 177
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->uploadTime_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "uploadTime"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 178
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->uploadTime_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Name"

    const-string v2, "UploadDateTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->userAgent_metadata:Lcom/microsoft/bond/Metadata;

    .line 182
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->userAgent_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "userAgent"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 183
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->userAgent_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Name"

    const-string v2, "UserAgent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v0, Lcom/microsoft/bond/SchemaDef;

    invoke-direct {v0}, Lcom/microsoft/bond/SchemaDef;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    .line 186
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    sget-object v1, LMicrosoft/Telemetry/Extensions/ingest$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    invoke-static {v1}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/SchemaDef;->setRoot(Lcom/microsoft/bond/TypeDef;)V

    .line 187
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 134
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->time_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$100()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 134
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->clientIp_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$200()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 134
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->auth_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$300()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 134
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->quality_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$400()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 134
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->uploadTime_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$500()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 134
    sget-object v0, LMicrosoft/Telemetry/Extensions/ingest$Schema;->userAgent_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method private static getStructDef(Lcom/microsoft/bond/SchemaDef;)S
    .locals 5
    .param p0, "schema"    # Lcom/microsoft/bond/SchemaDef;

    .prologue
    .line 201
    const/4 v1, 0x0

    .local v1, "pos":S
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/bond/StructDef;

    invoke-virtual {v3}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    sget-object v4, LMicrosoft/Telemetry/Extensions/ingest$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    if-ne v3, v4, :cond_0

    .line 253
    :goto_1
    return v1

    .line 201
    :cond_0
    add-int/lit8 v3, v1, 0x1

    int-to-short v1, v3

    goto :goto_0

    .line 209
    :cond_1
    new-instance v2, Lcom/microsoft/bond/StructDef;

    invoke-direct {v2}, Lcom/microsoft/bond/StructDef;-><init>()V

    .line 210
    .local v2, "structDef":Lcom/microsoft/bond/StructDef;
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v3, LMicrosoft/Telemetry/Extensions/ingest$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/StructDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 213
    invoke-static {p0}, LMicrosoft/Telemetry/Extension$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/StructDef;->setBase_def(Lcom/microsoft/bond/TypeDef;)V

    .line 217
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 218
    .local v0, "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 219
    sget-object v3, LMicrosoft/Telemetry/Extensions/ingest$Schema;->time_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 220
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 221
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 224
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 225
    sget-object v3, LMicrosoft/Telemetry/Extensions/ingest$Schema;->clientIp_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 226
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 227
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 230
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 231
    sget-object v3, LMicrosoft/Telemetry/Extensions/ingest$Schema;->auth_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 232
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 233
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 236
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 237
    sget-object v3, LMicrosoft/Telemetry/Extensions/ingest$Schema;->quality_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 238
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 239
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 242
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 243
    sget-object v3, LMicrosoft/Telemetry/Extensions/ingest$Schema;->uploadTime_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 244
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 245
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 248
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 249
    sget-object v3, LMicrosoft/Telemetry/Extensions/ingest$Schema;->userAgent_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 250
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 251
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public static getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;
    .locals 2
    .param p0, "schema"    # Lcom/microsoft/bond/SchemaDef;

    .prologue
    .line 191
    new-instance v0, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v0}, Lcom/microsoft/bond/TypeDef;-><init>()V

    .line 192
    .local v0, "type":Lcom/microsoft/bond/TypeDef;
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 193
    invoke-static {p0}, LMicrosoft/Telemetry/Extensions/ingest$Schema;->getStructDef(Lcom/microsoft/bond/SchemaDef;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/TypeDef;->setStruct_def(S)V

    .line 194
    return-object v0
.end method
