.class Lcom/appsflyer/RemoteDebuggingManager;
.super Ljava/lang/Object;
.source "RemoteDebuggingManager.java"


# static fields
.field private static final MONITORING_REQUEST_MAX_SIZE_KB:I = 0x18000

.field static final REMOTE_DEBUGGING_SERVER_FLAG:Ljava/lang/String; = "monitor"

.field private static instance:Lcom/appsflyer/RemoteDebuggingManager;

.field private static shouldCollectPreLaunchDebugData:Z

.field private static shouldEnableRemoteDebuggingForThisApp:Z


# instance fields
.field private final APP_DATA_APP_ID:Ljava/lang/String;

.field private final APP_DATA_APP_VERSION:Ljava/lang/String;

.field private final APP_DATA_CHANNEL:Ljava/lang/String;

.field private final APP_DATA_PRE_INSTALL:Ljava/lang/String;

.field private final BQ_DATE_FORMAT:Ljava/lang/String;

.field private final CHRONOLOGICAL_EVENTS_DATA:Ljava/lang/String;

.field private final DEVICE_DATA_ANDROID_ID:Ljava/lang/String;

.field private final DEVICE_DATA_BRAND:Ljava/lang/String;

.field private final DEVICE_DATA_GAID:Ljava/lang/String;

.field private final DEVICE_DATA_IMEI:Ljava/lang/String;

.field private final DEVICE_DATA_MODEL:Ljava/lang/String;

.field private final DEVICE_DATA_PLATFORM_NAME:Ljava/lang/String;

.field private final DEVICE_DATA_PLATFORM_VERSION:Ljava/lang/String;

.field private final EVENT_DATE_FORMAT:Ljava/lang/String;

.field private final EXCEPTION:Ljava/lang/String;

.field private final PUBLIC_API_CALL:Ljava/lang/String;

.field private final REMOTE_DEBUGGING_STARTED:Ljava/lang/String;

.field private final REMOTE_DEBUGGING_STOPPED:Ljava/lang/String;

.field private final SDK_DATA_CURRENT_AF_UID:Ljava/lang/String;

.field private final SDK_DATA_DEV_KEY:Ljava/lang/String;

.field private final SDK_DATA_ORIGINAL_AF_UID:Ljava/lang/String;

.field private final SDK_DATA_SDK_VERSION:Ljava/lang/String;

.field private final SERVER_REQUEST:Ljava/lang/String;

.field private final SERVER_RESPONSE:Ljava/lang/String;

.field private chronologicalEvents:Lorg/json/JSONArray;

.field private remoteDebuggingEnabledFromServer:Z

.field private remoteDebuggingJSON:Lorg/json/JSONObject;

.field private requestSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 22
    sput-boolean v0, Lcom/appsflyer/RemoteDebuggingManager;->shouldCollectPreLaunchDebugData:Z

    .line 23
    sput-boolean v0, Lcom/appsflyer/RemoteDebuggingManager;->shouldEnableRemoteDebuggingForThisApp:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "brand"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->DEVICE_DATA_BRAND:Ljava/lang/String;

    .line 25
    const-string v0, "model"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->DEVICE_DATA_MODEL:Ljava/lang/String;

    .line 26
    const-string v0, "platform"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->DEVICE_DATA_PLATFORM_NAME:Ljava/lang/String;

    .line 27
    const-string v0, "platform_version"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->DEVICE_DATA_PLATFORM_VERSION:Ljava/lang/String;

    .line 28
    const-string v0, "advertiserId"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->DEVICE_DATA_GAID:Ljava/lang/String;

    .line 29
    const-string v0, "imei"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->DEVICE_DATA_IMEI:Ljava/lang/String;

    .line 30
    const-string v0, "android_id"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->DEVICE_DATA_ANDROID_ID:Ljava/lang/String;

    .line 31
    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->SDK_DATA_SDK_VERSION:Ljava/lang/String;

    .line 32
    const-string v0, "devkey"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->SDK_DATA_DEV_KEY:Ljava/lang/String;

    .line 33
    const-string v0, "originalAppsFlyerId"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->SDK_DATA_ORIGINAL_AF_UID:Ljava/lang/String;

    .line 34
    const-string v0, "uid"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->SDK_DATA_CURRENT_AF_UID:Ljava/lang/String;

    .line 35
    const-string v0, "app_id"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->APP_DATA_APP_ID:Ljava/lang/String;

    .line 36
    const-string v0, "app_version"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->APP_DATA_APP_VERSION:Ljava/lang/String;

    .line 37
    const-string v0, "channel"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->APP_DATA_CHANNEL:Ljava/lang/String;

    .line 38
    const-string v0, "preInstall"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->APP_DATA_PRE_INSTALL:Ljava/lang/String;

    .line 39
    const-string v0, "data"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->CHRONOLOGICAL_EVENTS_DATA:Ljava/lang/String;

    .line 40
    const-string v0, "r_debugging_off"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->REMOTE_DEBUGGING_STOPPED:Ljava/lang/String;

    .line 41
    const-string v0, "r_debugging_on"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->REMOTE_DEBUGGING_STARTED:Ljava/lang/String;

    .line 42
    const-string v0, "public_api_call"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->PUBLIC_API_CALL:Ljava/lang/String;

    .line 43
    const-string v0, "exception"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->EXCEPTION:Ljava/lang/String;

    .line 44
    const-string v0, "server_request"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->SERVER_REQUEST:Ljava/lang/String;

    .line 45
    const-string v0, "server_response"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->SERVER_RESPONSE:Ljava/lang/String;

    .line 46
    const-string v0, "yyyy-MM-dd HH:mm:ssZ"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->BQ_DATE_FORMAT:Ljava/lang/String;

    .line 47
    const-string v0, "MM-dd HH:mm:ss.SSS"

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->EVENT_DATE_FORMAT:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/appsflyer/RemoteDebuggingManager;->requestSize:I

    .line 55
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->chronologicalEvents:Lorg/json/JSONArray;

    .line 56
    iput v1, p0, Lcom/appsflyer/RemoteDebuggingManager;->requestSize:I

    .line 57
    iput-boolean v1, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingEnabledFromServer:Z

    .line 58
    return-void
.end method

.method private varargs declared-synchronized addEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "body"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 195
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/appsflyer/RemoteDebuggingManager;->isRemoteDebugging()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/appsflyer/RemoteDebuggingManager;->requestSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v8, 0x18000

    if-lt v7, v8, :cond_1

    .line 227
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 199
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 200
    .local v4, "now":J
    const-string v0, ""

    .line 201
    .local v0, "bodyStr":Ljava/lang/String;
    array-length v7, p3

    if-lez v7, :cond_3

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v6, "sb":Ljava/lang/StringBuilder;
    array-length v7, p3

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_1
    if-lt v3, v9, :cond_2

    .line 204
    aget-object v7, p3, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 208
    :cond_2
    const/4 v7, 0x0

    aget-object v7, p3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .end local v3    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "MM-dd HH:mm:ss.SSS"

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "formattedTimestamp":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 214
    const-string v7, "%18s %5s _/%s [%s] %s %s"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "AppsFlyer_4.7.1"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p1, v8, v9

    const/4 v9, 0x4

    aput-object p2, v8, v9

    const/4 v9, 0x5

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "event":Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/appsflyer/RemoteDebuggingManager;->chronologicalEvents:Lorg/json/JSONArray;

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 222
    iget v7, p0, Lcom/appsflyer/RemoteDebuggingManager;->requestSize:I

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/appsflyer/RemoteDebuggingManager;->requestSize:I

    goto :goto_0

    .line 224
    .end local v0    # "bodyStr":Ljava/lang/String;
    .end local v1    # "event":Ljava/lang/String;
    .end local v2    # "formattedTimestamp":Ljava/lang/String;
    .end local v4    # "now":J
    :catch_0
    move-exception v7

    goto :goto_0

    .line 216
    .restart local v0    # "bodyStr":Ljava/lang/String;
    .restart local v2    # "formattedTimestamp":Ljava/lang/String;
    .restart local v4    # "now":J
    :cond_4
    const-string v7, "%18s %5s %s/%s %s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    const-string v10, "AppsFlyer_4.7.1"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .restart local v1    # "event":Ljava/lang/String;
    goto :goto_2

    .line 195
    .end local v0    # "bodyStr":Ljava/lang/String;
    .end local v1    # "event":Ljava/lang/String;
    .end local v2    # "formattedTimestamp":Ljava/lang/String;
    .end local v4    # "now":J
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private addStartEvent(J)V
    .locals 5
    .param p1, "startTime"    # J

    .prologue
    .line 164
    const-string v0, "r_debugging_on"

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private addStopEvent(J)V
    .locals 5
    .param p1, "endTime"    # J

    .prologue
    .line 169
    const-string v0, "r_debugging_off"

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private declared-synchronized clearData()V
    .locals 1

    .prologue
    .line 302
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->chronologicalEvents:Lorg/json/JSONArray;

    .line 303
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->chronologicalEvents:Lorg/json/JSONArray;

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->requestSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static getInstance()Lcom/appsflyer/RemoteDebuggingManager;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/appsflyer/RemoteDebuggingManager;->instance:Lcom/appsflyer/RemoteDebuggingManager;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/appsflyer/RemoteDebuggingManager;

    invoke-direct {v0}, Lcom/appsflyer/RemoteDebuggingManager;-><init>()V

    sput-object v0, Lcom/appsflyer/RemoteDebuggingManager;->instance:Lcom/appsflyer/RemoteDebuggingManager;

    .line 64
    :cond_0
    sget-object v0, Lcom/appsflyer/RemoteDebuggingManager;->instance:Lcom/appsflyer/RemoteDebuggingManager;

    return-object v0
.end method

.method private declared-synchronized getJSONString(Z)Ljava/lang/String;
    .locals 6
    .param p1, "shouldClearData"    # Z

    .prologue
    .line 230
    monitor-enter p0

    const/4 v2, 0x0

    .line 232
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 233
    .local v0, "now":J
    iget-object v3, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v4, "data"

    iget-object v5, p0, Lcom/appsflyer/RemoteDebuggingManager;->chronologicalEvents:Lorg/json/JSONArray;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    iget-object v3, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    if-eqz p1, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/appsflyer/RemoteDebuggingManager;->clearData()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .end local v0    # "now":J
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 230
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 239
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getThrowableStringData(Ljava/lang/String;[Ljava/lang/StackTraceElement;)[Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    const/4 v3, 0x0

    .line 286
    if-nez p2, :cond_1

    .line 287
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    aput-object p1, v1, v3

    .line 294
    :cond_0
    return-object v1

    .line 289
    :cond_1
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 290
    .local v1, "strArr":[Ljava/lang/String;
    aput-object p1, v1, v3

    .line 291
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 292
    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized loadStaticData(Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v11

    .line 249
    .local v11, "props":Lcom/appsflyer/AppsFlyerProperties;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v7

    .line 250
    .local v7, "afLib":Lcom/appsflyer/AppsFlyerLib;
    const-string v0, "remote_debug_static_data"

    invoke-virtual {v11, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 251
    .local v12, "remoteDebugStaticDataFromProperties":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 253
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :goto_0
    monitor-exit p0

    return-void

    .line 257
    :cond_0
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    .line 258
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v0, "advertiserId"

    .line 262
    invoke-virtual {v11, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Lcom/appsflyer/AppsFlyerLib;->userCustomImei:Ljava/lang/String;

    iget-object v6, v7, Lcom/appsflyer/AppsFlyerLib;->userCustomAndroidId:Ljava/lang/String;

    move-object v0, p0

    .line 258
    invoke-direct/range {v0 .. v6}, Lcom/appsflyer/RemoteDebuggingManager;->setDeviceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v0, "4.7.1.314"

    const-string v1, "AppsFlyerKey"

    .line 267
    invoke-virtual {v11, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KSAppsFlyerId"

    .line 268
    invoke-virtual {v11, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uid"

    .line 269
    invoke-virtual {v11, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/appsflyer/RemoteDebuggingManager;->setSDKData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v10, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 274
    .local v10, "appVersionCode":I
    const-string v0, "channel"

    invoke-virtual {v11, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 275
    .local v8, "appChannel":Ljava/lang/String;
    const-string v0, "preInstallName"

    invoke-virtual {v11, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 277
    .local v9, "appPreInstallName":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v8, v9}, Lcom/appsflyer/RemoteDebuggingManager;->setAppData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    .end local v8    # "appChannel":Ljava/lang/String;
    .end local v9    # "appPreInstallName":Ljava/lang/String;
    .end local v10    # "appVersionCode":I
    :goto_1
    :try_start_4
    const-string v0, "remote_debug_static_data"

    iget-object v1, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 248
    .end local v7    # "afLib":Lcom/appsflyer/AppsFlyerLib;
    .end local v11    # "props":Lcom/appsflyer/AppsFlyerProperties;
    .end local v12    # "remoteDebugStaticDataFromProperties":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 278
    .restart local v7    # "afLib":Lcom/appsflyer/AppsFlyerLib;
    .restart local v11    # "props":Lcom/appsflyer/AppsFlyerProperties;
    .restart local v12    # "remoteDebugStaticDataFromProperties":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 254
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized setAppData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "channel"    # Ljava/lang/String;
    .param p4, "preInstall"    # Ljava/lang/String;

    .prologue
    .line 146
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "app_version"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "channel"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "preInstall"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized setDeviceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "brand"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "osVersion"    # Ljava/lang/String;
    .param p4, "gaid"    # Ljava/lang/String;
    .param p5, "imei"    # Ljava/lang/String;
    .param p6, "androidId"    # Ljava/lang/String;

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "brand"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    iget-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "model"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    iget-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "platform"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    iget-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "platform_version"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "advertiserId"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "imei"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "android_id"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized setSDKData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "devKey"    # Ljava/lang/String;
    .param p3, "originalAFUID"    # Ljava/lang/String;
    .param p4, "currentAFUID"    # Ljava/lang/String;

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "devkey"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "originalAppsFlyerId"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "uid"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method varargs addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 174
    const-string v0, "public_api_call"

    invoke-direct {p0, v0, p1, p2}, Lcom/appsflyer/RemoteDebuggingManager;->addEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method addExceptionEvent(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 178
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 179
    .local v0, "cause":Ljava/lang/Throwable;
    const-string v3, "exception"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/appsflyer/RemoteDebuggingManager;->getThrowableStringData(Ljava/lang/String;[Ljava/lang/StackTraceElement;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v4, v1}, Lcom/appsflyer/RemoteDebuggingManager;->addEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 180
    return-void

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    goto :goto_1
.end method

.method addLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 191
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, v0, p1, v1}, Lcom/appsflyer/RemoteDebuggingManager;->addEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method addServerRequestEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestBody"    # Ljava/lang/String;

    .prologue
    .line 183
    const-string v0, "server_request"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, v0, p1, v1}, Lcom/appsflyer/RemoteDebuggingManager;->addEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method addServerResponseEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseCode"    # I
    .param p3, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 187
    const-string v0, "server_response"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-direct {p0, v0, p1, v1}, Lcom/appsflyer/RemoteDebuggingManager;->addEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method disableRemoteDebuggingForThisApp()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    sput-boolean v0, Lcom/appsflyer/RemoteDebuggingManager;->shouldEnableRemoteDebuggingForThisApp:Z

    .line 315
    return-void
.end method

.method declared-synchronized dropPreLaunchDebugData()V
    .locals 1

    .prologue
    .line 309
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/appsflyer/RemoteDebuggingManager;->shouldCollectPreLaunchDebugData:Z

    .line 310
    invoke-direct {p0}, Lcom/appsflyer/RemoteDebuggingManager;->clearData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNumberOfLines()I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->chronologicalEvents:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method isRemoteDebugging()Z
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/appsflyer/RemoteDebuggingManager;->shouldEnableRemoteDebuggingForThisApp:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/appsflyer/RemoteDebuggingManager;->shouldCollectPreLaunchDebugData:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingEnabledFromServer:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRemoteDebuggingEnabledFromServer()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingEnabledFromServer:Z

    return v0
.end method

.method declared-synchronized releaseRemoteDebugging()V
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingJSON:Lorg/json/JSONObject;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->chronologicalEvents:Lorg/json/JSONArray;

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/appsflyer/RemoteDebuggingManager;->instance:Lcom/appsflyer/RemoteDebuggingManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method sendRemoteDebuggingData(Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 88
    :try_start_0
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v2

    invoke-direct {v2, p1, p2}, Lcom/appsflyer/RemoteDebuggingManager;->loadStaticData(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 89
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/appsflyer/RemoteDebuggingManager;->getJSONString(Z)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "remoteDebuggingData":Ljava/lang/String;
    new-instance v1, Lcom/appsflyer/BackgroundHttpTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/appsflyer/BackgroundHttpTask;-><init>(Landroid/content/Context;)V

    .line 93
    .local v1, "remoteDebuggingTask":Lcom/appsflyer/BackgroundHttpTask;
    iput-object v0, v1, Lcom/appsflyer/BackgroundHttpTask;->bodyAsString:Ljava/lang/String;

    .line 94
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/appsflyer/BackgroundHttpTask;->setRemoteDebugMode(Z)V

    .line 95
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://monitorsdk.appsflyer.com/remote-debug?app_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/appsflyer/BackgroundHttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "remoteDebuggingData":Ljava/lang/String;
    .end local v1    # "remoteDebuggingTask":Lcom/appsflyer/BackgroundHttpTask;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method declared-synchronized startRemoteDebuggingMode()V
    .locals 2

    .prologue
    .line 68
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingEnabledFromServer:Z

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/appsflyer/RemoteDebuggingManager;->addStartEvent(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stopRemoteDebuggingMode()V
    .locals 2

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/appsflyer/RemoteDebuggingManager;->addStopEvent(J)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsflyer/RemoteDebuggingManager;->remoteDebuggingEnabledFromServer:Z

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/appsflyer/RemoteDebuggingManager;->shouldCollectPreLaunchDebugData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
