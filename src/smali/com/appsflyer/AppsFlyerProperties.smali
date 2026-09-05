.class public Lcom/appsflyer/AppsFlyerProperties;
.super Ljava/lang/Object;
.source "AppsFlyerProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;
    }
.end annotation


# static fields
.field public static final ADDITIONAL_CUSTOM_DATA:Ljava/lang/String; = "additionalCustomData"

.field public static final AF_KEY:Ljava/lang/String; = "AppsFlyerKey"

.field private static final AF_REFERRER:Ljava/lang/String; = "AF_REFERRER"

.field static final AF_UNINSTALL_TOKEN:Ljava/lang/String; = "afUninstallToken"

.field public static final APP_ID:Ljava/lang/String; = "appid"

.field public static final APP_USER_ID:Ljava/lang/String; = "AppUserId"

.field public static final CHANNEL:Ljava/lang/String; = "channel"

.field public static final COLLECT_ANDROID_ID:Ljava/lang/String; = "collectAndroidId"

.field public static final COLLECT_FACEBOOK_ATTR_ID:Ljava/lang/String; = "collectFacebookAttrId"

.field public static final COLLECT_FINGER_PRINT:Ljava/lang/String; = "collectFingerPrint"

.field public static final COLLECT_IMEI:Ljava/lang/String; = "collectIMEI"

.field public static final COLLECT_MAC:Ljava/lang/String; = "collectMAC"

.field public static final CURRENCY_CODE:Ljava/lang/String; = "currencyCode"

.field public static final DEVICE_TRACKING_DISABLED:Ljava/lang/String; = "deviceTrackingDisabled"

.field public static final DISABLE_LOGS_COMPLETELY:Ljava/lang/String; = "disableLogs"

.field public static final DISABLE_OTHER_SDK:Ljava/lang/String; = "disableOtherSdk"

.field public static final EMAIL_CRYPT_TYPE:Ljava/lang/String; = "userEmailsCryptType"

.field public static final ENABLE_GPS_FALLBACK:Ljava/lang/String; = "enableGpsFallback"

.field public static final EXTENSION:Ljava/lang/String; = "sdkExtension"

.field static final GCM_PROJECT_NUMBER:Ljava/lang/String; = "gcmProjectNumber"

.field public static final IS_MONITOR:Ljava/lang/String; = "shouldMonitor"

.field public static final IS_UPDATE:Ljava/lang/String; = "IS_UPDATE"

.field static final PUSH_PAYLOAD_HISTORY_SIZE:Ljava/lang/String; = "pushPayloadHistorySize"

.field static final PUSH_PAYLOAD_MAX_AGING:Ljava/lang/String; = "pushPayloadMaxAging"

.field private static final SAVED_PROPERTIES:Ljava/lang/String; = "savedProperties"

.field private static final SHOULD_LOG:Ljava/lang/String; = "shouldLog"

.field public static final USER_EMAIL:Ljava/lang/String; = "userEmail"

.field public static final USER_EMAILS:Ljava/lang/String; = "userEmails"

.field public static final USE_HTTP_FALLBACK:Ljava/lang/String; = "useHttpFallback"

.field private static instance:Lcom/appsflyer/AppsFlyerProperties;


# instance fields
.field private isLaunchCalled:Z

.field private isOnReceiveCalled:Z

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private propertiesLoadedFlag:Z

.field private referrer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/appsflyer/AppsFlyerProperties;

    invoke-direct {v0}, Lcom/appsflyer/AppsFlyerProperties;-><init>()V

    sput-object v0, Lcom/appsflyer/AppsFlyerProperties;->instance:Lcom/appsflyer/AppsFlyerProperties;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->properties:Ljava/util/Map;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsflyer/AppsFlyerProperties;->propertiesLoadedFlag:Z

    .line 77
    return-void
.end method

.method public static getInstance()Lcom/appsflyer/AppsFlyerProperties;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/appsflyer/AppsFlyerProperties;->instance:Lcom/appsflyer/AppsFlyerProperties;

    return-object v0
.end method

.method private isPropertiesLoaded()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/appsflyer/AppsFlyerProperties;->propertiesLoadedFlag:Z

    return v0
.end method


# virtual methods
.method public enableLogOutput(Z)V
    .locals 1
    .param p1, "shouldEnable"    # Z

    .prologue
    .line 185
    const-string v0, "shouldLog"

    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 186
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 121
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 129
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 137
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getReferrer(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerProperties;->referrer:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 171
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerProperties;->referrer:Ljava/lang/String;

    .line 180
    :cond_0
    :goto_0
    return-object v1

    .line 172
    :cond_1
    const-string v2, "AF_REFERRER"

    invoke-virtual {p0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 173
    const-string v1, "AF_REFERRER"

    invoke-virtual {p0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 176
    :cond_2
    if-eqz p1, :cond_0

    .line 179
    const-string v2, "appsflyer-data"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 180
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "referrer"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isEnableLog()Z
    .locals 3

    .prologue
    .line 189
    const-string v1, "shouldLog"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 190
    .local v0, "isEnableLog":Z
    return v0
.end method

.method protected isFirstLaunchCalled()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/appsflyer/AppsFlyerProperties;->isLaunchCalled:Z

    return v0
.end method

.method public isLogsDisabledCompletely()Z
    .locals 2

    .prologue
    .line 194
    const-string v0, "disableLogs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected isOnReceiveCalled()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/appsflyer/AppsFlyerProperties;->isOnReceiveCalled:Z

    return v0
.end method

.method public isOtherSdkStringDisabled()Z
    .locals 2

    .prologue
    .line 197
    const-string v0, "disableOtherSdk"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public loadProperties(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/appsflyer/AppsFlyerProperties;->isPropertiesLoaded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const-string v6, "appsflyer-data"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 221
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v6, "savedProperties"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "propertiesString":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 223
    const-string v6, "Loading properties.."

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 225
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 226
    .local v2, "jsonProperties":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 227
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 229
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/appsflyer/AppsFlyerProperties;->properties:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 230
    iget-object v6, p0, Lcom/appsflyer/AppsFlyerProperties;->properties:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 234
    .end local v0    # "iterator":Ljava/util/Iterator;
    .end local v2    # "jsonProperties":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 235
    .local v1, "jex":Lorg/json/JSONException;
    const-string v6, "Failed loading properties"

    invoke-static {v6, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    .end local v1    # "jex":Lorg/json/JSONException;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Done loading properties: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/appsflyer/AppsFlyerProperties;->propertiesLoadedFlag:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    .restart local v0    # "iterator":Ljava/util/Iterator;
    .restart local v2    # "jsonProperties":Lorg/json/JSONObject;
    :cond_3
    const/4 v6, 0x1

    :try_start_1
    iput-boolean v6, p0, Lcom/appsflyer/AppsFlyerProperties;->propertiesLoadedFlag:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public saveProperties(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerProperties;->properties:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "propertiesJson":Ljava/lang/String;
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 206
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "savedProperties"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public set(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->properties:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public set(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 96
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->properties:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public set(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->properties:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public set(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public setCustomData(Ljava/lang/String;)V
    .locals 2
    .param p1, "customData"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->properties:Ljava/util/Map;

    const-string v1, "additionalCustomData"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method protected setFirstLaunchCalled()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsflyer/AppsFlyerProperties;->isLaunchCalled:Z

    .line 162
    return-void
.end method

.method protected setFirstLaunchCalled(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/appsflyer/AppsFlyerProperties;->isLaunchCalled:Z

    .line 159
    return-void
.end method

.method protected setOnReceiveCalled()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsflyer/AppsFlyerProperties;->isOnReceiveCalled:Z

    .line 151
    return-void
.end method

.method protected setReferrer(Ljava/lang/String;)V
    .locals 1
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    .line 165
    const-string v0, "AF_REFERRER"

    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerProperties;->referrer:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setUserEmails(Ljava/lang/String;)V
    .locals 2
    .param p1, "emails"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerProperties;->properties:Ljava/util/Map;

    const-string v1, "userEmails"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method
