.class public Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;
.super Ljava/lang/Object;
.source "CommonData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Schema"
.end annotation


# static fields
.field private static final accessibilityInfo_metadata:Lcom/microsoft/bond/Metadata;

.field private static final additionalInfo_metadata:Lcom/microsoft/bond/Metadata;

.field private static final appName_metadata:Lcom/microsoft/bond/Metadata;

.field private static final appSessionId_metadata:Lcom/microsoft/bond/Metadata;

.field private static final clientLanguage_metadata:Lcom/microsoft/bond/Metadata;

.field private static final deviceModel_metadata:Lcom/microsoft/bond/Metadata;

.field private static final eventVersion_metadata:Lcom/microsoft/bond/Metadata;

.field public static final metadata:Lcom/microsoft/bond/Metadata;

.field private static final network_metadata:Lcom/microsoft/bond/Metadata;

.field private static final sandboxId_metadata:Lcom/microsoft/bond/Metadata;

.field public static final schemaDef:Lcom/microsoft/bond/SchemaDef;

.field private static final titleDeviceId_metadata:Lcom/microsoft/bond/Metadata;

.field private static final titleSessionId_metadata:Lcom/microsoft/bond/Metadata;

.field private static final userId_metadata:Lcom/microsoft/bond/Metadata;

.field private static final xsapiVersion_metadata:Lcom/microsoft/bond/Metadata;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 275
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    .line 276
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "CommonData"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "com.microsoft.xbox.idp.telemetry.utc.CommonData"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setQualified_name(Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "OnlineId base event with required fields"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->eventVersion_metadata:Lcom/microsoft/bond/Metadata;

    .line 283
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->eventVersion_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "eventVersion"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->eventVersion_metadata:Lcom/microsoft/bond/Metadata;

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    .line 285
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->eventVersion_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "The event\'s version in the form of A.B.C where each subfield is the version for Part A, B, or C respectively.  This helps the backend cookers and processers adjust to different versions of the event schema"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->deviceModel_metadata:Lcom/microsoft/bond/Metadata;

    .line 289
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->deviceModel_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "deviceModel"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->deviceModel_metadata:Lcom/microsoft/bond/Metadata;

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    .line 291
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->deviceModel_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "The specific model of the device.  On Android this is from the constant: android.os.Build.MODEL.  NOTE: For completeness, one should prepend android.os.Build.MANUFACTURER to this value if the MFG name is not part of the model name."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->xsapiVersion_metadata:Lcom/microsoft/bond/Metadata;

    .line 295
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->xsapiVersion_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "xsapiVersion"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 296
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->xsapiVersion_metadata:Lcom/microsoft/bond/Metadata;

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    .line 297
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->xsapiVersion_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "The xsapi version.  Should get this from the xsapi build properties"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appName_metadata:Lcom/microsoft/bond/Metadata;

    .line 301
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appName_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "appName"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appName_metadata:Lcom/microsoft/bond/Metadata;

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    .line 303
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appName_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "The application name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->clientLanguage_metadata:Lcom/microsoft/bond/Metadata;

    .line 307
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->clientLanguage_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "clientLanguage"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 308
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->clientLanguage_metadata:Lcom/microsoft/bond/Metadata;

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    .line 309
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->clientLanguage_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "The system language-region (for example, en-US = english in USA)."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->network_metadata:Lcom/microsoft/bond/Metadata;

    .line 313
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->network_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->network_metadata:Lcom/microsoft/bond/Metadata;

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    .line 315
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->network_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "The network connection being used (0 = unknown | 1 = wifi | 2 = cellular | 3 = wired)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->network_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getDefault_value()Lcom/microsoft/bond/Variant;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/microsoft/bond/Variant;->setUint_value(J)V

    .line 319
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->sandboxId_metadata:Lcom/microsoft/bond/Metadata;

    .line 320
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->sandboxId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "sandboxId"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->sandboxId_metadata:Lcom/microsoft/bond/Metadata;

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    .line 322
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->sandboxId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "The xsapi sandbox for service calls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appSessionId_metadata:Lcom/microsoft/bond/Metadata;

    .line 326
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appSessionId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "appSessionId"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appSessionId_metadata:Lcom/microsoft/bond/Metadata;

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    .line 328
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appSessionId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "The sessionId for the app; gets set on first use of telemetry -- useful for binding events together into scenarios and analyzing flow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->userId_metadata:Lcom/microsoft/bond/Metadata;

    .line 332
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->userId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "userId"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 333
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->userId_metadata:Lcom/microsoft/bond/Metadata;

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    .line 334
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->userId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "The User Id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->additionalInfo_metadata:Lcom/microsoft/bond/Metadata;

    .line 338
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->additionalInfo_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "additionalInfo"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->additionalInfo_metadata:Lcom/microsoft/bond/Metadata;

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    .line 340
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->additionalInfo_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "The json key-value collection of data that gives greater meaning to the event"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->accessibilityInfo_metadata:Lcom/microsoft/bond/Metadata;

    .line 344
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->accessibilityInfo_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "accessibilityInfo"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 345
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->accessibilityInfo_metadata:Lcom/microsoft/bond/Metadata;

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    .line 346
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->accessibilityInfo_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "The json key-value collection of accessibility settings -- information within will differ by platform"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleDeviceId_metadata:Lcom/microsoft/bond/Metadata;

    .line 350
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleDeviceId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "titleDeviceId"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 351
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleDeviceId_metadata:Lcom/microsoft/bond/Metadata;

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    .line 352
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleDeviceId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "The device guid from the title hosting xsapi idp or tcui"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleSessionId_metadata:Lcom/microsoft/bond/Metadata;

    .line 356
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleSessionId_metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "titleSessionId"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 357
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleSessionId_metadata:Lcom/microsoft/bond/Metadata;

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setModifier(Lcom/microsoft/bond/Modifier;)V

    .line 358
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleSessionId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    const-string v2, "The session guid from the title hosting xsapi idp or tcui"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    new-instance v0, Lcom/microsoft/bond/SchemaDef;

    invoke-direct {v0}, Lcom/microsoft/bond/SchemaDef;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    .line 361
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    sget-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/SchemaDef;->setRoot(Lcom/microsoft/bond/TypeDef;)V

    .line 362
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->eventVersion_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$100()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->deviceModel_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->accessibilityInfo_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleDeviceId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleSessionId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$200()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->xsapiVersion_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$300()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appName_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$400()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->clientLanguage_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$500()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->network_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$600()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->sandboxId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$700()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appSessionId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$800()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->userId_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method static synthetic access$900()Lcom/microsoft/bond/Metadata;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->additionalInfo_metadata:Lcom/microsoft/bond/Metadata;

    return-object v0
.end method

.method private static getStructDef(Lcom/microsoft/bond/SchemaDef;)S
    .locals 5
    .param p0, "schema"    # Lcom/microsoft/bond/SchemaDef;

    .prologue
    .line 376
    const/4 v1, 0x0

    .local v1, "pos":S
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/bond/StructDef;

    invoke-virtual {v3}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v3

    sget-object v4, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    if-ne v3, v4, :cond_0

    .line 470
    :goto_1
    return v1

    .line 376
    :cond_0
    add-int/lit8 v3, v1, 0x1

    int-to-short v1, v3

    goto :goto_0

    .line 384
    :cond_1
    new-instance v2, Lcom/microsoft/bond/StructDef;

    invoke-direct {v2}, Lcom/microsoft/bond/StructDef;-><init>()V

    .line 385
    .local v2, "structDef":Lcom/microsoft/bond/StructDef;
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v3, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/StructDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 388
    invoke-static {p0}, LMicrosoft/Telemetry/Base$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/bond/StructDef;->setBase_def(Lcom/microsoft/bond/TypeDef;)V

    .line 392
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 393
    .local v0, "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 394
    sget-object v3, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->eventVersion_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 395
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 396
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 399
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 400
    sget-object v3, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->deviceModel_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 401
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 402
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 405
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 406
    sget-object v3, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->xsapiVersion_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 407
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 408
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 411
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 412
    sget-object v3, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appName_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 413
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 414
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 417
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 418
    sget-object v3, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->clientLanguage_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 419
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 420
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 423
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 424
    sget-object v3, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->network_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 425
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 426
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 429
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x46

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 430
    sget-object v3, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->sandboxId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 431
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 432
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 435
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x50

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 436
    sget-object v3, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->appSessionId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 437
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 438
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 441
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x5a

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 442
    sget-object v3, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->userId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 443
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 444
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 447
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 448
    sget-object v3, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->additionalInfo_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 449
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 450
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 453
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x6e

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 454
    sget-object v3, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->accessibilityInfo_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 455
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 456
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 459
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 460
    sget-object v3, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleDeviceId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 461
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 462
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance v0, Lcom/microsoft/bond/FieldDef;

    .end local v0    # "field":Lcom/microsoft/bond/FieldDef;
    invoke-direct {v0}, Lcom/microsoft/bond/FieldDef;-><init>()V

    .line 465
    .restart local v0    # "field":Lcom/microsoft/bond/FieldDef;
    const/16 v3, 0x82

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setId(S)V

    .line 466
    sget-object v3, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->titleSessionId_metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v0, v3}, Lcom/microsoft/bond/FieldDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    .line 467
    invoke-virtual {v0}, Lcom/microsoft/bond/FieldDef;->getType()Lcom/microsoft/bond/TypeDef;

    move-result-object v3

    sget-object v4, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v3, v4}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 468
    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public static getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;
    .locals 2
    .param p0, "schema"    # Lcom/microsoft/bond/SchemaDef;

    .prologue
    .line 366
    new-instance v0, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v0}, Lcom/microsoft/bond/TypeDef;-><init>()V

    .line 367
    .local v0, "type":Lcom/microsoft/bond/TypeDef;
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 368
    invoke-static {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData$Schema;->getStructDef(Lcom/microsoft/bond/SchemaDef;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/TypeDef;->setStruct_def(S)V

    .line 369
    return-object v0
.end method
