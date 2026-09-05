.class public LMicrosoft/Telemetry/Extensions/xbox$Schema;
.super Ljava/lang/Object;
.source "xbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMicrosoft/Telemetry/Extensions/xbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Schema"
.end annotation


# static fields
.field private static final deviceType_metadata:Lcom/microsoft/bond/Metadata;

.field private static final eventSequence_metadata:Lcom/microsoft/bond/Metadata;

.field private static final expiryTimestamp_metadata:Lcom/microsoft/bond/Metadata;

.field private static final isDevelopmentAccount_metadata:Lcom/microsoft/bond/Metadata;

.field private static final isTestAccount_metadata:Lcom/microsoft/bond/Metadata;

.field private static final issueTimestamp_metadata:Lcom/microsoft/bond/Metadata;

.field public static final metadata:Lcom/microsoft/bond/Metadata;

.field private static final sandboxId_metadata:Lcom/microsoft/bond/Metadata;

.field public static final schemaDef:Lcom/microsoft/bond/SchemaDef;

.field private static final signedInUsers_metadata:Lcom/microsoft/bond/Metadata;

.field private static final sti_metadata:Lcom/microsoft/bond/Metadata;

.field private static final titleId_metadata:Lcom/microsoft/bond/Metadata;

.field private static final xblDeviceId_metadata:Lcom/microsoft/bond/Metadata;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 235
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    .line 236
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "xbox"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 237
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "Microsoft.Telemetry.Extensions.xbox"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setQualified_name(Ljava/lang/String;)V

    .line 239
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "Describes the XBox related fields and might be populated by the console."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->sti_metadata:Lcom/microsoft/bond/Metadata;

    .line 243
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->sti_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "sti"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 244
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->sti_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "XBox supporting token index."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->eventSequence_metadata:Lcom/microsoft/bond/Metadata;

    .line 248
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->eventSequence_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "eventSequence"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 249
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->eventSequence_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "XBox event sequence."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->issueTimestamp_metadata:Lcom/microsoft/bond/Metadata;

    .line 253
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->issueTimestamp_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "issueTimestamp"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 254
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->issueTimestamp_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "Xbox token issue timestamp."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->expiryTimestamp_metadata:Lcom/microsoft/bond/Metadata;

    .line 258
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->expiryTimestamp_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "expiryTimestamp"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 259
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->expiryTimestamp_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "XBox token expiry timestamp."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->sandboxId_metadata:Lcom/microsoft/bond/Metadata;

    .line 263
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->sandboxId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "sandboxId"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 264
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->sandboxId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "Xbox sandboxId."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->deviceType_metadata:Lcom/microsoft/bond/Metadata;

    .line 268
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->deviceType_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "deviceType"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 269
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->deviceType_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "XBox device type."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->xblDeviceId_metadata:Lcom/microsoft/bond/Metadata;

    .line 273
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->xblDeviceId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "xblDeviceId"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 274
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->xblDeviceId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "Xbox live deviceId."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->signedInUsers_metadata:Lcom/microsoft/bond/Metadata;

    .line 278
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->signedInUsers_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "signedInUsers"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 279
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->signedInUsers_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "XBox signed in Xuids."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->isDevelopmentAccount_metadata:Lcom/microsoft/bond/Metadata;

    .line 283
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->isDevelopmentAccount_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "isDevelopmentAccount"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 284
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->isDevelopmentAccount_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "XBox is development account."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->isTestAccount_metadata:Lcom/microsoft/bond/Metadata;

    .line 288
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->isTestAccount_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "isTestAccount"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 289
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->isTestAccount_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "XBox is test account."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->titleId_metadata:Lcom/microsoft/bond/Metadata;

    .line 293
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->titleId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "titleId"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 294
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->titleId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "XBox titleId."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v0, Lcom/microsoft/bond/SchemaDef;

    invoke-direct {v0}, Lcom/microsoft/bond/SchemaDef;-><init>()V

    sput-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    .line 297
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    sget-object v1, LMicrosoft/Telemetry/Extensions/xbox$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    invoke-static {v1}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/SchemaDef;->setRoot(Lcom/microsoft/bond/TypeDef;)V

    .line 298
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 219
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->sti_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$100()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 219
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->eventSequence_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 219
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->titleId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$200()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 219
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->issueTimestamp_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$300()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 219
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->expiryTimestamp_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$400()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 219
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->sandboxId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$500()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 219
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->deviceType_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$600()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 219
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->xblDeviceId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$700()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 219
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->signedInUsers_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$800()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 219
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->isDevelopmentAccount_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$900()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 219
    sget-object v0, LMicrosoft/Telemetry/Extensions/xbox$Schema;->isTestAccount_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method private static getStructDef(Lcom/microsoft/bond/SchemaDef;)S
    .locals 5
    .param p0, "schema"    # Lcom/microsoft/bond/SchemaDef;

    .prologue
    .line 312
    const/4 v1, 0x0

    .local v1, "pos":S
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/bond/StructDef;

    invoke-virtual {v3}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    sget-object v4, LMicrosoft/Telemetry/Extensions/xbox$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    if-ne v3, v4, :cond_0

    .line 394
    :goto_1
    return v1

    .line 312
    :cond_0
    add-int/lit8 v3, v1, 0x1

    int-to-short v1, v3

    goto :goto_0

    .line 320
    :cond_1
    new-instance v2, Lcom/microsoft/bond/StructDef;

    invoke-direct {v2}, Lcom/microsoft/bond/StructDef;-><init>()V

    .line 321
    .local v2, "structDef":Lcom/microsoft/bond/StructDef;
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v3, LMicrosoft/Telemetry/Extensions/xbox$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/StructDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 324
    invoke-static {p0}, LMicrosoft/Telemetry/Extension$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/StructDef;->setBase_def(Lcom/microsoft/bond/TypeDef;)V

    .line 328
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 329
    .local v0, "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 330
    sget-object v3, LMicrosoft/Telemetry/Extensions/xbox$Schema;->sti_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 331
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 332
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 335
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 336
    sget-object v3, LMicrosoft/Telemetry/Extensions/xbox$Schema;->eventSequence_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 337
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 338
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 341
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 342
    sget-object v3, LMicrosoft/Telemetry/Extensions/xbox$Schema;->issueTimestamp_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 343
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 344
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 347
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 348
    sget-object v3, LMicrosoft/Telemetry/Extensions/xbox$Schema;->expiryTimestamp_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 349
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 350
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 353
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 354
    sget-object v3, LMicrosoft/Telemetry/Extensions/xbox$Schema;->sandboxId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 355
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 356
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 359
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 360
    sget-object v3, LMicrosoft/Telemetry/Extensions/xbox$Schema;->deviceType_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 361
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 362
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 365
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x46

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 366
    sget-object v3, LMicrosoft/Telemetry/Extensions/xbox$Schema;->xblDeviceId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 367
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 368
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 371
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x50

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 372
    sget-object v3, LMicrosoft/Telemetry/Extensions/xbox$Schema;->signedInUsers_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 373
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 374
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 377
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x5a

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 378
    sget-object v3, LMicrosoft/Telemetry/Extensions/xbox$Schema;->isDevelopmentAccount_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 379
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 380
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 383
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 384
    sget-object v3, LMicrosoft/Telemetry/Extensions/xbox$Schema;->isTestAccount_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 385
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 386
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 389
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x6e

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 390
    sget-object v3, LMicrosoft/Telemetry/Extensions/xbox$Schema;->titleId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 391
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 392
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public static getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;
    .locals 2
    .param p0, "schema"    # Lcom/microsoft/bond/SchemaDef;

    .prologue
    .line 302
    new-instance v0, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v0}, Lcom/microsoft/bond/TypeDef;-><init>()V

    .line 303
    .local v0, "type":Lcom/microsoft/bond/TypeDef;
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 304
    invoke-static {p0}, LMicrosoft/Telemetry/Extensions/xbox$Schema;->getStructDef(Lcom/microsoft/bond/SchemaDef;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/TypeDef;->setStruct_def(S)V

    .line 305
    return-object v0
.end method
