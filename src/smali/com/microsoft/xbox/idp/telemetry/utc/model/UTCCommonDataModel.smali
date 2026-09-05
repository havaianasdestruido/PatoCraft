.class public Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;
.super Ljava/lang/Object;
.source "UTCCommonDataModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;
    }
.end annotation


# static fields
.field static final DEFAULTSANDBOX:Ljava/lang/String; = "RETAIL"

.field static final DEFAULTSERVICES:Ljava/lang/String; = "none"

.field static final EVENTVERSION:Ljava/lang/String; = "1.1"

.field static final UNKNOWNAPP:Ljava/lang/String; = "UNKNOWN"

.field static final UNKNOWNUSER:Ljava/lang/String; = "0"

.field static accessibilityInfo:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

.field static appName:Ljava/lang/String;

.field static applicationSession:Ljava/util/UUID;

.field static deviceModel:Ljava/lang/String;

.field static netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

.field static osLocale:Ljava/lang/String;

.field static userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->UNKNOWN:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    .line 52
    sput-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->deviceModel:Ljava/lang/String;

    .line 53
    sput-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->osLocale:Ljava/lang/String;

    .line 54
    sput-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->applicationSession:Ljava/util/UUID;

    .line 55
    const-string v0, "UNKNOWN"

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->appName:Ljava/lang/String;

    .line 56
    const-string v0, "0"

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->userId:Ljava/lang/String;

    .line 57
    sput-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->accessibilityInfo:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAccessibilityInfo()Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 299
    sget-object v6, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->accessibilityInfo:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

    if-eqz v6, :cond_0

    .line 300
    sget-object v6, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->accessibilityInfo:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

    .line 329
    .local v0, "ctx":Landroid/content/Context;
    :goto_0
    return-object v6

    .line 303
    .end local v0    # "ctx":Landroid/content/Context;
    :cond_0
    new-instance v6, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

    invoke-direct {v6}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;-><init>()V

    sput-object v6, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->accessibilityInfo:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

    .line 305
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 306
    .restart local v0    # "ctx":Landroid/content/Context;
    if-eqz v0, :cond_3

    .line 308
    const-string v6, "accessibility"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    .line 311
    .local v3, "manager":Landroid/view/accessibility/AccessibilityManager;
    sget-object v6, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->accessibilityInfo:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

    const-string v7, "isenabled"

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v4

    .line 314
    .local v4, "serviceInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    const-string v5, "none"

    .line 315
    .local v5, "services":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 316
    .local v2, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const-string v7, "none"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 317
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 319
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 323
    .end local v2    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_2
    sget-object v6, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->accessibilityInfo:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

    const-string v7, "enabledservices"

    invoke-virtual {v6, v7, v5}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v3    # "manager":Landroid/view/accessibility/AccessibilityManager;
    .end local v4    # "serviceInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v5    # "services":Ljava/lang/String;
    :cond_3
    :goto_2
    sget-object v6, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->accessibilityInfo:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

    goto :goto_0

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static getAppName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 161
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 162
    .local v0, "ctx":Landroid/content/Context;
    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->appName:Ljava/lang/String;

    const-string v3, "UNKNOWN"

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->appName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_0
    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->appName:Ljava/lang/String;

    return-object v2

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    const-string v2, "UNKNOWN"

    sput-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->appName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getAppSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->applicationSession:Ljava/util/UUID;

    if-nez v0, :cond_0

    .line 231
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->applicationSession:Ljava/util/UUID;

    .line 233
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->applicationSession:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCommonData(I)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;
    .locals 1
    .param p0, "partCVersion"    # I

    .prologue
    .line 66
    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    invoke-static {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object v0

    return-object v0
.end method

.method public static getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;
    .locals 6
    .param p0, "partCVersion"    # I
    .param p1, "additionalInfo"    # Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    .prologue
    .line 82
    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;-><init>()V

    .line 85
    .local v0, "common":Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;
    const-string v2, "%s.%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "1.1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setEventVersion(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setDeviceModel(Ljava/lang/String;)V

    .line 92
    const-string v2, "1.0"

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setXsapiVersion(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setAppName(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getDeviceLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setClientLanguage(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getNetworkConnection()Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setNetwork(I)V

    .line 104
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getSandboxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setSandboxId(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getAppSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setAppSessionId(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setUserId(Ljava/lang/String;)V

    .line 111
    move-object v1, p1

    .line 114
    .local v1, "info":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    if-nez v1, :cond_0

    .line 115
    new-instance v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    .end local v1    # "info":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    invoke-direct {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    .line 119
    .restart local v1    # "info":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    :cond_0
    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setAdditionalInfo(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getAccessibilityInfo()Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAccessibilityInfoModel;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setAccessibilityInfo(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getTitleDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setTitleDeviceId(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getTitleSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->setTitleSessionId(Ljava/lang/String;)V

    .line 130
    return-object v0
.end method

.method private static getDeviceLocale()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 197
    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->osLocale:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 199
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 200
    .local v0, "deviceLocale":Ljava/util/Locale;
    const-string v2, "%s-%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->osLocale:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->osLocale:Ljava/lang/String;

    return-object v2

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getDeviceModel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->deviceModel:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 181
    const-string v1, "UNKNOWN"

    .line 182
    .local v1, "unknown":Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 183
    .local v0, "model":Ljava/lang/String;
    sput-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->deviceModel:Ljava/lang/String;

    .line 185
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->removePipes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->deviceModel:Ljava/lang/String;

    .line 189
    :cond_0
    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->deviceModel:Ljava/lang/String;

    return-object v2
.end method

.method private static getNetworkConnection()Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;
    .locals 6

    .prologue
    .line 258
    sget-object v4, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    sget-object v5, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->UNKNOWN:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    if-ne v4, v5, :cond_1

    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 261
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 264
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 266
    .local v1, "defaultNetworkInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 267
    sget-object v4, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    .line 295
    .end local v1    # "defaultNetworkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return-object v4

    .line 270
    .restart local v1    # "defaultNetworkInfo":Landroid/net/NetworkInfo;
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 271
    .local v3, "state":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_1

    .line 272
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 284
    sget-object v4, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->UNKNOWN:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    sput-object v4, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v1    # "defaultNetworkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_1
    :goto_1
    sget-object v4, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    goto :goto_0

    .line 275
    .restart local v1    # "defaultNetworkInfo":Landroid/net/NetworkInfo;
    .restart local v3    # "state":Landroid/net/NetworkInfo$State;
    :sswitch_0
    :try_start_1
    sget-object v4, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->CELLULAR:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    sput-object v4, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 290
    .end local v1    # "defaultNetworkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :catch_0
    move-exception v2

    .line 291
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    sget-object v4, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->UNKNOWN:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    sput-object v4, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    goto :goto_1

    .line 278
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v1    # "defaultNetworkInfo":Landroid/net/NetworkInfo;
    .restart local v3    # "state":Landroid/net/NetworkInfo$State;
    :sswitch_1
    :try_start_2
    sget-object v4, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->WIFI:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    sput-object v4, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    goto :goto_1

    .line 281
    :sswitch_2
    sget-object v4, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->WIRED:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    sput-object v4, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->netType:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 272
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method private static getSandboxId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 215
    :try_start_0
    new-instance v0, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;-><init>()V

    .line 216
    .local v0, "conf":Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;
    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->getSandbox()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 220
    :goto_0
    return-object v2

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    const-string v2, "RETAIL"

    goto :goto_0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->userId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 139
    const-string v0, "0"

    .line 141
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->userId:Ljava/lang/String;

    goto :goto_0
.end method

.method private static removePipes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "parameter"    # Ljava/lang/String;

    .prologue
    .line 242
    if-eqz p0, :cond_0

    .line 243
    const-string v0, "|"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 245
    .end local p0    # "parameter":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 149
    if-eqz p0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->userId:Ljava/lang/String;

    .line 152
    :cond_0
    return-void
.end method
