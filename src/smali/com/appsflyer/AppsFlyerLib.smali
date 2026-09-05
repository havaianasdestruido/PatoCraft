.class public Lcom/appsflyer/AppsFlyerLib;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;,
        Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;,
        Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;,
        Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;,
        Lcom/appsflyer/AppsFlyerLib$DataCollector;
    }
.end annotation


# static fields
.field static final AF_COUNTER_PREF:Ljava/lang/String; = "appsFlyerCount"

.field static final AF_EVENT_COUNTER_PREF:Ljava/lang/String; = "appsFlyerInAppEventCount"

.field public static final AF_PRE_INSTALL_PATH:Ljava/lang/String; = "AF_PRE_INSTALL_PATH"

.field static final AF_SHARED_PREF:Ljava/lang/String; = "appsflyer-data"

.field static final AF_TIME_PASSED_SINCE_LAST_LAUNCH:Ljava/lang/String; = "AppsFlyerTimePassedSincePrevLaunch"

.field private static final ANDROID_ID_CACHED_PREF:Ljava/lang/String; = "androidIdCached"

.field public static final APPS_TRACKING_URL:Ljava/lang/String;

.field public static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field public static final ATTRIBUTION_ID_CONTENT_URI:Ljava/lang/String; = "content://com.facebook.katana.provider.AttributionIdProvider"

.field static final ATTRIBUTION_ID_PREF:Ljava/lang/String; = "attributionId"

.field static final BUILD_NUMBER:Ljava/lang/String; = "4.7.1"

.field private static final CACHED_CHANNEL_PREF:Ljava/lang/String; = "CACHED_CHANNEL"

.field private static final CACHED_URL_PARAMETER:Ljava/lang/String; = "&isCachedRequest=true&timeincache="

.field private static final CALL_SERVER_ACTION:Ljava/lang/String; = "call server."

.field private static final CONVERSION_DATA_CACHE_EXPIRATION:Ljava/lang/String; = "appsflyerConversionDataCacheExpiration"

.field private static final CONVERSION_DATA_URL:Ljava/lang/String; = "https://api.appsflyer.com/install_data/v3/"

.field private static final CONVERSION_REQUEST_RETRIES:Ljava/lang/String; = "appsflyerConversionDataRequestRetries"

.field private static final DEEPLINK_ATTR_PREF:Ljava/lang/String; = "deeplinkAttribution"

.field public static final EVENTS_TRACKING_URL:Ljava/lang/String;

.field static final EXTRA_REFERRERS_PREF:Ljava/lang/String; = "extraReferrers"

.field static final FIRST_INSTALL_PREF:Ljava/lang/String; = "appsFlyerFirstInstall"

.field private static final GET_CONVERSION_DATA_TIME:Ljava/lang/String; = "appsflyerGetConversionDataTiming"

.field private static final IGNORABLE_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMEI_CACHED_PREF:Ljava/lang/String; = "imeiCached"

.field private static final INSTALL_STORE_PREF:Ljava/lang/String; = "INSTALL_STORE"

.field static final INSTALL_UPDATE_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd_HHmmssZ"

.field private static final IN_APP_EVENTS_API:Ljava/lang/String; = "1"

.field static final JENKINS_BUILD_NUMBER:Ljava/lang/String; = "314"

.field public static final LOG_TAG:Ljava/lang/String; = "AppsFlyer_4.7.1"

.field private static final NUMBER_OF_CONVERSION_DATA_RETRIES:I = 0x5

.field private static final PREPARE_DATA_ACTION:Ljava/lang/String; = "collect data for server"

.field private static final PREV_EVENT:Ljava/lang/String; = "prev_event"

.field private static final PREV_EVENT_NAME:Ljava/lang/String; = "prev_event_name"

.field private static final PREV_EVENT_TIMESTAMP:Ljava/lang/String; = "prev_event_timestamp"

.field private static final PREV_EVENT_VALUE:Ljava/lang/String; = "prev_event_value"

.field static final PRE_INSTALL_PREF:Ljava/lang/String; = "preInstallName"

.field public static final PRE_INSTALL_SYSTEM_DEFAULT:Ljava/lang/String; = "/data/local/tmp/pre_install.appsflyer"

.field public static final PRE_INSTALL_SYSTEM_DEFAULT_ETC:Ljava/lang/String; = "/etc/pre_install.appsflyer"

.field public static final PRE_INSTALL_SYSTEM_RO_PROP:Ljava/lang/String; = "ro.appsflyer.preinstall.path"

.field private static final PUSH_PAYLOAD_HISTORY_SIZE_DEFAULT_VALUE:I = 0x2

.field private static final PUSH_PAYLOAD_MAX_AGING_DEFAULT_VALUE:J = 0x1b7740L

.field static final RD_BACKEND_URL:Ljava/lang/String; = "https://monitorsdk.appsflyer.com/remote-debug?app_id="

.field static final REFERRER_PREF:Ljava/lang/String; = "referrer"

.field private static final REGISTER_URL:Ljava/lang/String;

.field static final RESPONSE_NOT_JSON:Ljava/lang/String; = "response_not_json"

.field static final SENT_SUCCESSFULLY_PREF:Ljava/lang/String; = "sentSuccessfully"

.field private static final SERVER_BUILD_NUMBER:Ljava/lang/String;

.field private static final SERVER_RESPONDED_ACTION:Ljava/lang/String; = "response from server. status="

.field private static final SIXTY_DAYS:J = 0x134fd9000L

.field private static final STATS_URL:Ljava/lang/String; = "https://stats.appsflyer.com/stats"

.field private static final TEST_MODE_MAX_DURATION:J = 0x7530L

.field static final VALIDATE_URL:Ljava/lang/String; = "https://sdk-services.appsflyer.com/validate-android-signature"

.field static final VALIDATE_WH_URL:Ljava/lang/String;

.field private static final VERSION_CODE:Ljava/lang/String; = "versionCode"

.field private static cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private static conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

.field private static instance:Lcom/appsflyer/AppsFlyerLib;

.field private static isDuringCheckCache:Z

.field private static lastCacheCheck:J

.field private static timeEnteredForeground:J

.field private static timeWentToBackground:J

.field static validatorListener:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;


# instance fields
.field private isRetargetingTestMode:Z

.field private isTokenRefreshServiceConfigured:Z

.field private latestDeepLink:Landroid/net/Uri;

.field private listener:Lcom/appsflyer/Foreground$Listener;

.field private pushPayload:Ljava/lang/String;

.field private pushPayloadHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private testModeStartTime:J

.field private timeInApp:J

.field userCustomAndroidId:Ljava/lang/String;

.field userCustomImei:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 73
    const-string v0, "4.7.1"

    const-string v1, "4.7.1"

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->SERVER_BUILD_NUMBER:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://t.appsflyer.com/api/v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/AppsFlyerLib;->SERVER_BUILD_NUMBER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/androidevent?buildnumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4.7.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->APPS_TRACKING_URL:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://events.appsflyer.com/api/v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/AppsFlyerLib;->SERVER_BUILD_NUMBER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/androidevent?buildnumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4.7.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->EVENTS_TRACKING_URL:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://register.appsflyer.com/api/v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/AppsFlyerLib;->SERVER_BUILD_NUMBER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/androidevent?buildnumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4.7.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->REGISTER_URL:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://validate.appsflyer.com/api/v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/AppsFlyerLib;->SERVER_BUILD_NUMBER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/androidevent?buildnumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4.7.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->VALIDATE_WH_URL:Ljava/lang/String;

    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "is_cache"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->IGNORABLE_KEYS:Ljava/util/List;

    .line 130
    sput-object v4, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    .line 131
    sput-object v4, Lcom/appsflyer/AppsFlyerLib;->validatorListener:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    .line 133
    sput-boolean v3, Lcom/appsflyer/AppsFlyerLib;->isDuringCheckCache:Z

    .line 135
    sput-object v4, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 145
    new-instance v0, Lcom/appsflyer/AppsFlyerLib;

    invoke-direct {v0}, Lcom/appsflyer/AppsFlyerLib;-><init>()V

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->instance:Lcom/appsflyer/AppsFlyerLib;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib;->latestDeepLink:Landroid/net/Uri;

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsflyer/AppsFlyerLib;->isRetargetingTestMode:Z

    .line 262
    return-void
.end method

.method static synthetic access$002(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 66
    sput-wide p0, Lcom/appsflyer/AppsFlyerLib;->timeEnteredForeground:J

    return-wide p0
.end method

.method static synthetic access$1000(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/appsflyer/AppsFlyerLib;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/AppsFlyerLib;->getCachedChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 66
    sput-wide p0, Lcom/appsflyer/AppsFlyerLib;->timeWentToBackground:J

    return-wide p0
.end method

.method static synthetic access$1100(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .param p0, "x0"    # Lcom/appsflyer/AppsFlyerLib;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsflyer/AppsFlyerLib;->saveLongToSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/appsflyer/AppsFlyerLib;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->attributionStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/appsflyer/AppsFlyerLib;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerLib;->saveDataToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/appsflyer/AppsFlyerLib;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/AttributionIDNotReady;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->getConversionData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/appsflyer/AppsFlyerLib;->isDuringCheckCache:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 66
    sput-boolean p0, Lcom/appsflyer/AppsFlyerLib;->isDuringCheckCache:Z

    return p0
.end method

.method static synthetic access$1602(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 66
    sput-wide p0, Lcom/appsflyer/AppsFlyerLib;->lastCacheCheck:J

    return-wide p0
.end method

.method static synthetic access$1700(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/appsflyer/AppsFlyerLib;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$1802(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0
    .param p0, "x0"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 66
    sput-object p0, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p0, "x0"    # Lcom/appsflyer/AppsFlyerLib;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->callStatsBackground(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method static synthetic access$500(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/appsflyer/AppsFlyerLib;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Z

    .prologue
    .line 66
    invoke-direct/range {p0 .. p6}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/appsflyer/AppsFlyerLib;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/ref/WeakReference;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct/range {p0 .. p6}, Lcom/appsflyer/AppsFlyerLib;->sendRequestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700()Lcom/appsflyer/AppsFlyerConversionListener;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/appsflyer/AppsFlyerLib;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerLib;->saveIntegerToSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/ref/WeakReference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/appsflyer/AppsFlyerLib;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->getConfiguredChannel(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addDeviceTracking(Landroid/content/Context;Ljava/util/Map;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1602
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v15

    const-string v16, "deviceTrackingDisabled"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1604
    .local v9, "deviceTrackingDisabled":Z
    if-eqz v9, :cond_0

    .line 1605
    const-string v15, "deviceTrackingDisabled"

    const-string v16, "true"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    :goto_0
    return-void

    .line 1607
    :cond_0
    const-string v15, "appsflyer-data"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1608
    .local v14, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v15

    const-string v16, "collectIMEI"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1609
    .local v6, "collectIMEI":Z
    const-string v15, "imeiCached"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1610
    .local v4, "cachedImei":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1611
    .local v12, "imei":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 1612
    invoke-direct/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->isIdCollectionAllowed(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1614
    :try_start_0
    const-string v15, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 1615
    .local v13, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-string v16, "getDeviceId"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1616
    .local v8, "deviceImei":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 1617
    move-object v12, v8

    .line 1639
    .end local v8    # "deviceImei":Ljava/lang/String;
    .end local v13    # "manager":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    if-eqz v12, :cond_7

    .line 1640
    const-string v15, "imeiCached"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v12}, Lcom/appsflyer/AppsFlyerLib;->saveDataToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    const-string v15, "imei"

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    :goto_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v15

    const-string v16, "collectAndroidId"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1648
    .local v5, "collectAndroidId":Z
    const-string v15, "androidIdCached"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1649
    .local v3, "cachedAndroidId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1650
    .local v2, "androidId":Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 1651
    invoke-direct/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->isIdCollectionAllowed(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1653
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "android_id"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 1654
    .local v7, "deviceAndroidId":Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 1655
    move-object v2, v7

    .line 1675
    .end local v7    # "deviceAndroidId":Ljava/lang/String;
    :cond_2
    :goto_3
    if-eqz v2, :cond_c

    .line 1676
    const-string v15, "androidIdCached"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v2}, Lcom/appsflyer/AppsFlyerLib;->saveDataToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    const-string v15, "android_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1618
    .end local v2    # "androidId":Ljava/lang/String;
    .end local v3    # "cachedAndroidId":Ljava/lang/String;
    .end local v5    # "collectAndroidId":Z
    .restart local v8    # "deviceImei":Ljava/lang/String;
    .restart local v13    # "manager":Landroid/telephony/TelephonyManager;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib;->userCustomImei:Ljava/lang/String;

    if-eqz v15, :cond_4

    .line 1619
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/appsflyer/AppsFlyerLib;->userCustomImei:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1620
    :cond_4
    if-eqz v4, :cond_1

    .line 1621
    move-object v12, v4

    goto :goto_1

    .line 1623
    .end local v8    # "deviceImei":Ljava/lang/String;
    .end local v13    # "manager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v11

    .line 1624
    .local v11, "ignored":Ljava/lang/reflect/InvocationTargetException;
    const-string v15, "WARNING: READ_PHONE_STATE is missing."

    invoke-static {v15}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1625
    .end local v11    # "ignored":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v10

    .line 1626
    .local v10, "e":Ljava/lang/Exception;
    const-string v15, "WARNING: READ_PHONE_STATE is missing. "

    invoke-static {v15, v10}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1629
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib;->userCustomImei:Ljava/lang/String;

    if-eqz v15, :cond_1

    .line 1630
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/appsflyer/AppsFlyerLib;->userCustomImei:Ljava/lang/String;

    goto :goto_1

    .line 1634
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib;->userCustomImei:Ljava/lang/String;

    if-eqz v15, :cond_1

    .line 1635
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/appsflyer/AppsFlyerLib;->userCustomImei:Ljava/lang/String;

    goto/16 :goto_1

    .line 1643
    :cond_7
    const-string v15, "IMEI was not collected."

    invoke-static {v15}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    goto :goto_2

    .line 1656
    .restart local v2    # "androidId":Ljava/lang/String;
    .restart local v3    # "cachedAndroidId":Ljava/lang/String;
    .restart local v5    # "collectAndroidId":Z
    .restart local v7    # "deviceAndroidId":Ljava/lang/String;
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib;->userCustomAndroidId:Ljava/lang/String;

    if-eqz v15, :cond_9

    .line 1657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib;->userCustomAndroidId:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 1658
    :cond_9
    if-eqz v3, :cond_2

    .line 1659
    move-object v2, v3

    goto :goto_3

    .line 1661
    .end local v7    # "deviceAndroidId":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 1662
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v10}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1665
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib;->userCustomAndroidId:Ljava/lang/String;

    if-eqz v15, :cond_2

    .line 1666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib;->userCustomAndroidId:Ljava/lang/String;

    goto :goto_3

    .line 1670
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib;->userCustomAndroidId:Ljava/lang/String;

    if-eqz v15, :cond_2

    .line 1671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib;->userCustomAndroidId:Ljava/lang/String;

    goto :goto_3

    .line 1679
    :cond_c
    const-string v15, "Android ID was not collected."

    invoke-static {v15}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private attributionStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "inputString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 991
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 994
    .local v0, "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 995
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 996
    .local v2, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 997
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 998
    .local v4, "key":Ljava/lang/String;
    sget-object v5, Lcom/appsflyer/AppsFlyerLib;->IGNORABLE_KEYS:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 999
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1002
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1003
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1004
    const/4 v0, 0x0

    .line 1007
    .end local v0    # "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    return-object v0
.end method

.method private backgroundReferrerLaunch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "referrer"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1024
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 1025
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    .line 1026
    .local v8, "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v0, Lcom/appsflyer/AppsFlyerLib$DataCollector;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x1

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, p2

    move-object v9, v3

    invoke-direct/range {v0 .. v9}, Lcom/appsflyer/AppsFlyerLib$DataCollector;-><init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;Lcom/appsflyer/AppsFlyerLib$1;)V

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1028
    .end local v8    # "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    :cond_0
    return-void
.end method

.method private static broadcastBacktoTestApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paramsString"    # Ljava/lang/String;

    .prologue
    .line 856
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.appsflyer.testIntgrationBroadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 857
    .local v0, "localIntent":Landroid/content/Intent;
    const-string v1, "params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 858
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 860
    return-void
.end method

.method private callServer(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V
    .locals 30
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "postData"    # Ljava/lang/String;
    .param p3, "appsFlyerDevKey"    # Ljava/lang/String;
    .param p5, "cacheKey"    # Ljava/lang/String;
    .param p6, "isLaunch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2099
    .local p4, "ctxReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-virtual/range {p4 .. p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    .line 2100
    .local v9, "context":Landroid/content/Context;
    if-eqz p6, :cond_9

    sget-object v25, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v25, :cond_9

    const/16 v22, 0x1

    .line 2101
    .local v22, "shouldRequestConversion":Z
    :goto_0
    const/4 v7, 0x0

    .line 2103
    .local v7, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addServerRequestEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v7, v0

    .line 2106
    const-string v25, "POST"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2107
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    array-length v8, v0

    .line 2108
    .local v8, "contentLength":I
    const-string v25, "Content-Length"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    const-string v25, "Content-Type"

    const-string v26, "application/json"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    const/16 v25, 0x2710

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2111
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2114
    const/4 v14, 0x0

    .line 2116
    .local v14, "out":Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v15, Ljava/io/OutputStreamWriter;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v25

    const-string v26, "UTF-8"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v15, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2117
    .end local v14    # "out":Ljava/io/OutputStreamWriter;
    .local v15, "out":Ljava/io/OutputStreamWriter;
    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2119
    if-eqz v15, :cond_0

    .line 2120
    :try_start_3
    invoke-virtual {v15}, Ljava/io/OutputStreamWriter;->close()V

    .line 2125
    :cond_0
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v23

    .line 2127
    .local v23, "statusCode":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/appsflyer/AppsFlyerLib;->readServerResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v17

    .line 2128
    .local v17, "response":Ljava/lang/String;
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v23

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/appsflyer/RemoteDebuggingManager;->addServerResponseEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 2129
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "response code: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/appsflyer/AFLogger;->afLogM(Ljava/lang/String;)V

    .line 2130
    const-string v25, "AppsFlyer_4.7.1"

    const-string v26, "SERVER_RESPONSE_CODE"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    const-string v25, "response from server. status="

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v9}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2132
    const-string v25, "appsflyer-data"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 2133
    .local v21, "sharedPreferences":Landroid/content/SharedPreferences;
    const/16 v25, 0xc8

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 2138
    const-string v25, "gcmProjectNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_1

    const-string v25, "afUninstallToken"

    .line 2139
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_1

    .line 2145
    new-instance v25, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v25

    invoke-direct {v0, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static/range {v25 .. v25}, Lcom/appsflyer/UninstallUtils;->registerDeviceForUninstalls(Ljava/lang/ref/WeakReference;)V

    .line 2148
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib;->latestDeepLink:Landroid/net/Uri;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    .line 2149
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/appsflyer/AppsFlyerLib;->latestDeepLink:Landroid/net/Uri;

    .line 2151
    :cond_2
    if-eqz p5, :cond_3

    .line 2152
    invoke-static {}, Lcom/appsflyer/cache/CacheManager;->getInstance()Lcom/appsflyer/cache/CacheManager;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v9}, Lcom/appsflyer/cache/CacheManager;->deleteRequest(Ljava/lang/String;Landroid/content/Context;)V

    .line 2154
    :cond_3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_4

    if-nez p5, :cond_4

    .line 2156
    const-string v25, "sentSuccessfully"

    const-string v26, "true"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v9, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->saveDataToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/appsflyer/AppsFlyerLib;->checkCache(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2162
    :cond_4
    :try_start_4
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2163
    .local v18, "responseJSON":Lorg/json/JSONObject;
    const-string v25, "monitor"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 2164
    .local v16, "remoteDebuggingServerFlag":Z
    if-eqz v16, :cond_c

    .line 2165
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/appsflyer/RemoteDebuggingManager;->startRemoteDebuggingMode()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2180
    .end local v16    # "remoteDebuggingServerFlag":Z
    .end local v18    # "responseJSON":Lorg/json/JSONObject;
    :cond_5
    :goto_1
    :try_start_5
    const-string v25, "appsflyerConversionDataRequestRetries"

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 2182
    .local v19, "retries":I
    const-string v25, "appsflyerConversionDataCacheExpiration"

    const-wide/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 2183
    .local v12, "conversionDataCachedExpiration":J
    const-wide/16 v26, 0x0

    cmp-long v25, v12, v26

    if-eqz v25, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v12

    const-wide v28, 0x134fd9000L

    cmp-long v25, v26, v28

    if-lez v25, :cond_6

    .line 2184
    const-string v25, "attributionId"

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v9, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->saveDataToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    const-string v25, "appsflyerConversionDataCacheExpiration"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->saveLongToSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V

    .line 2188
    :cond_6
    const-string v25, "attributionId"

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_d

    if-eqz p3, :cond_d

    if-eqz v22, :cond_d

    sget-object v25, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v25, :cond_d

    const/16 v25, 0x5

    move/from16 v0, v19

    move/from16 v1, v25

    if-gt v0, v1, :cond_d

    .line 2190
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v20

    .line 2191
    .local v20, "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v25, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    move-object/from16 v3, p3

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;-><init>(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    const-wide/16 v26, 0xa

    sget-object v28, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    move-object/from16 v4, v28

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2210
    .end local v20    # "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    :cond_7
    :goto_2
    if-eqz v7, :cond_8

    .line 2211
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2214
    :cond_8
    return-void

    .line 2100
    .end local v7    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "contentLength":I
    .end local v12    # "conversionDataCachedExpiration":J
    .end local v15    # "out":Ljava/io/OutputStreamWriter;
    .end local v17    # "response":Ljava/lang/String;
    .end local v19    # "retries":I
    .end local v21    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v22    # "shouldRequestConversion":Z
    .end local v23    # "statusCode":I
    :cond_9
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 2119
    .restart local v7    # "connection":Ljava/net/HttpURLConnection;
    .restart local v8    # "contentLength":I
    .restart local v14    # "out":Ljava/io/OutputStreamWriter;
    .restart local v22    # "shouldRequestConversion":Z
    :catchall_0
    move-exception v25

    :goto_3
    if-eqz v14, :cond_a

    .line 2120
    :try_start_6
    invoke-virtual {v14}, Ljava/io/OutputStreamWriter;->close()V

    :cond_a
    throw v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2210
    .end local v8    # "contentLength":I
    .end local v14    # "out":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v25

    if-eqz v7, :cond_b

    .line 2211
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw v25

    .line 2167
    .restart local v8    # "contentLength":I
    .restart local v15    # "out":Ljava/io/OutputStreamWriter;
    .restart local v16    # "remoteDebuggingServerFlag":Z
    .restart local v17    # "response":Ljava/lang/String;
    .restart local v18    # "responseJSON":Lorg/json/JSONObject;
    .restart local v21    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v23    # "statusCode":I
    :cond_c
    :try_start_7
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/appsflyer/RemoteDebuggingManager;->dropPreLaunchDebugData()V

    .line 2168
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/appsflyer/RemoteDebuggingManager;->stopRemoteDebuggingMode()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 2170
    .end local v16    # "remoteDebuggingServerFlag":Z
    .end local v18    # "responseJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v11

    .line 2171
    .local v11, "ignored":Lorg/json/JSONException;
    :try_start_8
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/appsflyer/RemoteDebuggingManager;->dropPreLaunchDebugData()V

    .line 2172
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/appsflyer/RemoteDebuggingManager;->stopRemoteDebuggingMode()V

    goto/16 :goto_1

    .line 2173
    .end local v11    # "ignored":Lorg/json/JSONException;
    :catch_1
    move-exception v24

    .line 2174
    .local v24, "t":Ljava/lang/Throwable;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2175
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/appsflyer/RemoteDebuggingManager;->dropPreLaunchDebugData()V

    .line 2176
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/appsflyer/RemoteDebuggingManager;->stopRemoteDebuggingMode()V

    goto/16 :goto_1

    .line 2192
    .end local v24    # "t":Ljava/lang/Throwable;
    .restart local v12    # "conversionDataCachedExpiration":J
    .restart local v19    # "retries":I
    :cond_d
    if-nez p3, :cond_e

    .line 2193
    const-string v25, "AppsFlyer dev key is missing."

    invoke-static/range {v25 .. v25}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    goto :goto_2

    .line 2194
    :cond_e
    if-eqz v22, :cond_7

    sget-object v25, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v25, :cond_7

    const-string v25, "attributionId"

    const/16 v26, 0x0

    .line 2196
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_7

    const-string v25, "appsFlyerCount"

    const/16 v26, 0x0

    .line 2197
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->getCounter(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_7

    .line 2201
    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/appsflyer/AppsFlyerLib;->getConversionData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v10

    .line 2202
    .local v10, "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v10, :cond_7

    .line 2203
    sget-object v25, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Lcom/appsflyer/AppsFlyerConversionListener;->onInstallConversionDataLoaded(Ljava/util/Map;)V
    :try_end_9
    .catch Lcom/appsflyer/AttributionIDNotReady; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2

    .line 2205
    .end local v10    # "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v6

    .line 2206
    .local v6, "ae":Lcom/appsflyer/AttributionIDNotReady;
    :try_start_a
    invoke-virtual {v6}, Lcom/appsflyer/AttributionIDNotReady;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v6}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_2

    .line 2119
    .end local v6    # "ae":Lcom/appsflyer/AttributionIDNotReady;
    .end local v12    # "conversionDataCachedExpiration":J
    .end local v17    # "response":Ljava/lang/String;
    .end local v19    # "retries":I
    .end local v21    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v23    # "statusCode":I
    :catchall_2
    move-exception v25

    move-object v14, v15

    .end local v15    # "out":Ljava/io/OutputStreamWriter;
    .restart local v14    # "out":Ljava/io/OutputStreamWriter;
    goto/16 :goto_3
.end method

.method private callStatsBackground(Ljava/lang/ref/WeakReference;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 685
    .local p1, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_0

    .line 746
    :goto_0
    return-void

    .line 689
    :cond_0
    const-string v17, "app went to background"

    invoke-static/range {v17 .. v17}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Context;

    const-string v18, "appsflyer-data"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 691
    .local v11, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/appsflyer/AppsFlyerProperties;->saveProperties(Landroid/content/SharedPreferences;)V

    .line 694
    sget-wide v18, Lcom/appsflyer/AppsFlyerLib;->timeWentToBackground:J

    sget-wide v20, Lcom/appsflyer/AppsFlyerLib;->timeEnteredForeground:J

    sub-long v12, v18, v20

    .line 696
    .local v12, "sessionTime":J
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 697
    .local v15, "statsParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "AppsFlyerKey"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 698
    .local v5, "afDevKey":Ljava/lang/String;
    const-string v17, "KSAppsFlyerId"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 700
    .local v10, "originalAFUID":Ljava/lang/String;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v17

    const-string v18, "deviceTrackingDisabled"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 701
    .local v9, "deviceTrackingDisabled":Z
    if-eqz v9, :cond_1

    .line 702
    const-string v17, "deviceTrackingDisabled"

    const-string v18, "true"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/appsflyer/AdvertisingIdUtil;->getAmazonAID(Landroid/content/ContentResolver;)Lcom/appsflyer/AdvertisingIdObject;

    move-result-object v6

    .line 705
    .local v6, "amazonAdvIdObject":Lcom/appsflyer/AdvertisingIdObject;
    if-eqz v6, :cond_2

    .line 706
    const-string v17, "amazon_aid"

    invoke-virtual {v6}, Lcom/appsflyer/AdvertisingIdObject;->getAdvertisingId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    const-string v17, "amazon_aid_limit"

    invoke-virtual {v6}, Lcom/appsflyer/AdvertisingIdObject;->isLimitAdTracking()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    :cond_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v17

    const-string v18, "advertiserId"

    invoke-virtual/range {v17 .. v18}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 710
    .local v4, "advertisingId":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 711
    const-string v17, "advertiserId"

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :cond_3
    const-string v18, "app_id"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const-string v17, "devkey"

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    const-string v17, "uid"

    invoke-static/range {p1 .. p1}, Lcom/appsflyer/Installation;->id(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string v17, "time_in_app"

    const-wide/16 v18, 0x3e8

    div-long v18, v12, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const-string v17, "statType"

    const-string v18, "user_closed_app"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string v17, "platform"

    const-string v18, "Android"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string v17, "launch_counter"

    const-string v18, "appsFlyerCount"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v11, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->getCounter(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const-string v17, "gcd_conversion_data_timing"

    const-string v18, "appsflyerGetConversionDataTiming"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const-string v17, "channel"

    invoke-direct/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->getConfiguredChannel(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    const-string v17, "originalAppsflyerId"

    if-eqz v10, :cond_5

    .end local v10    # "originalAFUID":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v17

    invoke-interface {v15, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v17

    const-string v18, "collectFingerPrint"

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 725
    .local v7, "collectFingerPrint":Z
    if-eqz v7, :cond_4

    .line 726
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->getUniquePsuedoID()Ljava/lang/String;

    move-result-object v8

    .line 727
    .local v8, "customUUID":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 728
    const-string v17, "deviceFingerPrintId"

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    .end local v8    # "customUUID":Ljava/lang/String;
    :cond_4
    :try_start_0
    new-instance v14, Lcom/appsflyer/BackgroundHttpTask;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lcom/appsflyer/BackgroundHttpTask;-><init>(Landroid/content/Context;)V

    .line 734
    .local v14, "statTask":Lcom/appsflyer/BackgroundHttpTask;
    iput-object v15, v14, Lcom/appsflyer/BackgroundHttpTask;->bodyParameters:Ljava/util/Map;

    .line 735
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 736
    const-string v17, "Main thread detected. Running callStats task in a new thread."

    invoke-static/range {v17 .. v17}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 737
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "https://stats.appsflyer.com/stats"

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/appsflyer/BackgroundHttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 743
    .end local v14    # "statTask":Lcom/appsflyer/BackgroundHttpTask;
    :catch_0
    move-exception v16

    .line 744
    .local v16, "t":Ljava/lang/Throwable;
    const-string v17, "Could not send callStats request"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 722
    .end local v7    # "collectFingerPrint":Z
    .end local v16    # "t":Ljava/lang/Throwable;
    .restart local v10    # "originalAFUID":Ljava/lang/String;
    :cond_5
    const-string v10, ""

    goto :goto_1

    .line 739
    .end local v10    # "originalAFUID":Ljava/lang/String;
    .restart local v7    # "collectFingerPrint":Z
    .restart local v14    # "statTask":Lcom/appsflyer/BackgroundHttpTask;
    :cond_6
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Running callStats task (on current thread: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " )"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v14}, Lcom/appsflyer/BackgroundHttpTask;->onPreExecute()V

    .line 741
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "https://stats.appsflyer.com/stats"

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/appsflyer/BackgroundHttpTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/appsflyer/BackgroundHttpTask;->onPostExecute(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private checkCache(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1851
    sget-boolean v0, Lcom/appsflyer/AppsFlyerLib;->isDuringCheckCache:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/appsflyer/AppsFlyerLib;->lastCacheCheck:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1859
    :cond_0
    :goto_0
    return-void

    .line 1854
    :cond_1
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 1857
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1858
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;-><init>(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;)V

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method private checkPlatform(Landroid/content/Context;Ljava/util/Map;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1917
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "com.unity3d.player.UnityPlayer"

    .line 1919
    .local v3, "sClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1920
    .local v0, "classToInvestigate":Ljava/lang/Class;
    const-string v4, "platformextension"

    const-string v5, "android_unity"

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1930
    .end local v0    # "classToInvestigate":Ljava/lang/Class;
    :goto_0
    return-void

    .line 1922
    :catch_0
    move-exception v2

    .line 1925
    .local v2, "ignored":Ljava/lang/ClassNotFoundException;
    const-string v4, "platformextension"

    const-string v5, "android_native"

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1927
    .end local v2    # "ignored":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 1928
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private checkWriteExternalPermission(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 418
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 419
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 420
    .local v1, "res":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "actionMsg"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 380
    :try_start_0
    invoke-direct {p0, p3}, Lcom/appsflyer/AppsFlyerLib;->isAppsFlyerPackage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    invoke-static {}, Lcom/appsflyer/DebugLogQueue;->getInstance()Lcom/appsflyer/DebugLogQueue;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsflyer/DebugLogQueue;->push(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception in AppsFlyerLib.debugAction(...):"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private endTestMode()V
    .locals 2

    .prologue
    .line 252
    const-string v0, "Test mode ended!"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 253
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appsflyer/AppsFlyerLib;->testModeStartTime:J

    .line 254
    return-void
.end method

.method private extractPropertyFromFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "preInstallFile"    # Ljava/io/File;
    .param p2, "propertyKey"    # Ljava/lang/String;

    .prologue
    .line 1782
    const/4 v2, 0x0

    .line 1785
    .local v2, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 1786
    .local v1, "props":Ljava/util/Properties;
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1787
    .end local v2    # "reader":Ljava/io/FileReader;
    .local v3, "reader":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 1788
    const-string v5, "Found PreInstall property!"

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 1789
    invoke-virtual {v1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 1796
    if-eqz v3, :cond_0

    .line 1797
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    .line 1803
    .end local v1    # "props":Ljava/util/Properties;
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v2    # "reader":Ljava/io/FileReader;
    :goto_1
    return-object v5

    .line 1799
    .end local v2    # "reader":Ljava/io/FileReader;
    .restart local v1    # "props":Ljava/util/Properties;
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v4

    .line 1800
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1790
    .end local v1    # "props":Ljava/util/Properties;
    .end local v3    # "reader":Ljava/io/FileReader;
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v2    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v0

    .line 1791
    .local v0, "ignored":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PreInstall file wasn\'t found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1796
    if-eqz v2, :cond_1

    .line 1797
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 1803
    .end local v0    # "ignored":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1799
    .restart local v0    # "ignored":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    .line 1800
    .restart local v4    # "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1792
    .end local v0    # "ignored":Ljava/io/FileNotFoundException;
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v4

    .line 1793
    .restart local v4    # "t":Ljava/lang/Throwable;
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1796
    if-eqz v2, :cond_1

    .line 1797
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 1799
    :catch_4
    move-exception v4

    .line 1800
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1795
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 1796
    :goto_5
    if-eqz v2, :cond_2

    .line 1797
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 1801
    :cond_2
    :goto_6
    throw v5

    .line 1799
    :catch_5
    move-exception v4

    .line 1800
    .restart local v4    # "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1795
    .end local v2    # "reader":Ljava/io/FileReader;
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v1    # "props":Ljava/util/Properties;
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v2    # "reader":Ljava/io/FileReader;
    goto :goto_5

    .line 1792
    .end local v2    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_6
    move-exception v4

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v2    # "reader":Ljava/io/FileReader;
    goto :goto_4

    .line 1790
    .end local v2    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v2    # "reader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private generateOtherSDKsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.tune.Tune"

    .line 1535
    invoke-direct {p0, v1}, Lcom/appsflyer/AppsFlyerLib;->numericBooleanIsClassExist(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.adjust.sdk.Adjust"

    .line 1536
    invoke-direct {p0, v1}, Lcom/appsflyer/AppsFlyerLib;->numericBooleanIsClassExist(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.kochava.android.tracker.Feature"

    .line 1537
    invoke-direct {p0, v1}, Lcom/appsflyer/AppsFlyerLib;->numericBooleanIsClassExist(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "io.branch.referral.Branch"

    .line 1538
    invoke-direct {p0, v1}, Lcom/appsflyer/AppsFlyerLib;->numericBooleanIsClassExist(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.apsalar.sdk.Apsalar"

    .line 1539
    invoke-direct {p0, v1}, Lcom/appsflyer/AppsFlyerLib;->numericBooleanIsClassExist(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.localytics.android.Localytics"

    .line 1540
    invoke-direct {p0, v1}, Lcom/appsflyer/AppsFlyerLib;->numericBooleanIsClassExist(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.tenjin.android.TenjinSDK"

    .line 1541
    invoke-direct {p0, v1}, Lcom/appsflyer/AppsFlyerLib;->numericBooleanIsClassExist(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.talkingdata.sdk.TalkingDataSDK"

    .line 1542
    invoke-direct {p0, v1}, Lcom/appsflyer/AppsFlyerLib;->numericBooleanIsClassExist(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "it.partytrack.sdk.Track"

    .line 1543
    invoke-direct {p0, v1}, Lcom/appsflyer/AppsFlyerLib;->numericBooleanIsClassExist(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jp.appAdForce.android.LtvManager"

    .line 1544
    invoke-direct {p0, v1}, Lcom/appsflyer/AppsFlyerLib;->numericBooleanIsClassExist(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1534
    return-object v0
.end method

.method private getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    const-string v0, "appid"

    invoke-direct {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCachedChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentChannel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1887
    const-string v1, "appsflyer-data"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1888
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "CACHED_CHANNEL"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1889
    const-string v1, "CACHED_CHANNEL"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1893
    .end local p2    # "currentChannel":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 1892
    .restart local p2    # "currentChannel":Ljava/lang/String;
    :cond_0
    const-string v1, "CACHED_CHANNEL"

    invoke-direct {p0, p1, v1, p2}, Lcom/appsflyer/AppsFlyerLib;->saveDataToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCachedStore(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1696
    const-string v3, "appsflyer-data"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1697
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "INSTALL_STORE"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1698
    const-string v3, "INSTALL_STORE"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1703
    :goto_0
    return-object v2

    .line 1700
    :cond_0
    invoke-direct {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->isAppsFlyerFirstLaunch(Landroid/content/Context;)Z

    move-result v0

    .line 1701
    .local v0, "isFirstLaunch":Z
    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->getCurrentStore(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1702
    .local v2, "store":Ljava/lang/String;
    :cond_1
    const-string v3, "INSTALL_STORE"

    invoke-direct {p0, p1, v3, v2}, Lcom/appsflyer/AppsFlyerLib;->saveDataToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getConfiguredChannel(Ljava/lang/ref/WeakReference;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1863
    .local p1, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "channel"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1864
    .local v0, "channel":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1865
    const-string v1, "CHANNEL"

    invoke-direct {p0, p1, v1}, Lcom/appsflyer/AppsFlyerLib;->getManifestMetaData(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1867
    :cond_0
    return-object v0
.end method

.method private getConversionData(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/AttributionIDNotReady;
        }
    .end annotation

    .prologue
    .line 872
    const-string v3, "appsflyer-data"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 873
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, "referrer":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "af_tranid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 875
    invoke-direct {p0, p1, v1}, Lcom/appsflyer/AppsFlyerLib;->referrerStringToMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 880
    :goto_0
    return-object v3

    .line 877
    :cond_0
    const-string v3, "attributionId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "attributionString":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 880
    invoke-direct {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->attributionStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    .line 882
    :cond_1
    new-instance v3, Lcom/appsflyer/AttributionIDNotReady;

    invoke-direct {v3}, Lcom/appsflyer/AttributionIDNotReady;-><init>()V

    throw v3
.end method

.method private getCounter(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "parameterName"    # Ljava/lang/String;
    .param p3, "isIncrease"    # Z

    .prologue
    .line 1975
    const/4 v2, 0x0

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1977
    .local v0, "counter":I
    if-eqz p3, :cond_0

    .line 1978
    add-int/lit8 v0, v0, 0x1

    .line 1979
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1980
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1981
    invoke-virtual {p0, v1}, Lcom/appsflyer/AppsFlyerLib;->editorCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1984
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v0
.end method

.method private getCurrentStore(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1709
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v1, "AF_STORE"

    invoke-direct {p0, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getManifestMetaData(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCustomerUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    const-string v0, "AppUserId"

    invoke-direct {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeepLinkUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1477
    const/4 v1, 0x0

    .line 1478
    .local v1, "res":Landroid/net/Uri;
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1479
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1480
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1482
    :cond_0
    return-object v1
.end method

.method private getFileFromString(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1812
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1813
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1818
    :goto_0
    return-object v1

    .line 1815
    :catch_0
    move-exception v0

    .line 1816
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1818
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getFirstInstallDate(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "dateFormat"    # Ljava/text/SimpleDateFormat;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1898
    const-string v2, "appsflyer-data"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1899
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "appsFlyerFirstInstall"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1900
    .local v0, "firstLaunchDate":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1901
    invoke-direct {p0, p2}, Lcom/appsflyer/AppsFlyerLib;->isAppsFlyerFirstLaunch(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1902
    const-string v2, "AppsFlyer: first launch detected"

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 1903
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1907
    :goto_0
    const-string v2, "appsFlyerFirstInstall"

    invoke-direct {p0, p2, v2, v0}, Lcom/appsflyer/AppsFlyerLib;->saveDataToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppsFlyer: first launch date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 1912
    return-object v0

    .line 1905
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getInstance()Lcom/appsflyer/AppsFlyerLib;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->instance:Lcom/appsflyer/AppsFlyerLib;

    return-object v0
.end method

.method private getManifestMetaData(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1733
    const/4 v3, 0x0

    .line 1735
    .local v3, "res":Ljava/lang/String;
    const/16 v5, 0x80

    :try_start_0
    invoke-virtual {p2, p3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1736
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1737
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1738
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1739
    .local v4, "storeObj":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 1740
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1747
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "storeObj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v3

    .line 1743
    :catch_0
    move-exception v2

    .line 1744
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value in the manifest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getManifestMetaData(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1726
    .local p1, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1727
    const/4 v0, 0x0

    .line 1729
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v1, v0}, Lcom/appsflyer/AppsFlyerLib;->getManifestMetaData(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNetwork(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2044
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2045
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2046
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 2047
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2049
    const-string v2, "WIFI"

    .line 2057
    :goto_0
    return-object v2

    .line 2050
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_1

    .line 2052
    const-string v2, "MOBILE"

    goto :goto_0

    .line 2057
    :cond_1
    const-string v2, "unknown"

    goto :goto_0
.end method

.method private getPreInstallName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1823
    const-string v5, "appsflyer-data"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1824
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "preInstallName"

    invoke-direct {p0, v5}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1825
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 1846
    .end local v1    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1827
    .end local v2    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    const-string v5, "preInstallName"

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1828
    const-string v5, "preInstallName"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1843
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 1844
    const-string v5, "preInstallName"

    invoke-direct {p0, v5, v1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v2, v1

    .line 1846
    .end local v1    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1830
    .end local v2    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->isAppsFlyerFirstLaunch(Landroid/content/Context;)Z

    move-result v0

    .line 1831
    .local v0, "isFirstLaunch":Z
    if-eqz v0, :cond_4

    .line 1832
    invoke-direct {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->preInstallValueFromFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1833
    .local v4, "valueFromFile":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 1834
    move-object v1, v4

    .line 1839
    .end local v4    # "valueFromFile":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v1, :cond_1

    .line 1840
    const-string v5, "preInstallName"

    invoke-direct {p0, p1, v5, v1}, Lcom/appsflyer/AppsFlyerLib;->saveDataToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1836
    .restart local v4    # "valueFromFile":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v6, "AF_PRE_INSTALL_NAME"

    invoke-direct {p0, v5, v6}, Lcom/appsflyer/AppsFlyerLib;->getManifestMetaData(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private getProperty(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 445
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/appsflyer/AppsFlyerProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 441
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPushPayloadFromIntent(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1458
    const/4 v0, 0x0

    .line 1459
    .local v0, "_pushPayload":Ljava/lang/String;
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 1460
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1461
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 1462
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1463
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1464
    const-string v3, "af"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1465
    if-eqz v0, :cond_0

    .line 1466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Push Notification received af payload = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 1467
    const-string v3, "af"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1468
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1473
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-object v0
.end method

.method private getReInstallData(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 629
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 630
    new-instance v0, Lcom/appsflyer/AFKeystoreWrapper;

    invoke-direct {v0, p1}, Lcom/appsflyer/AFKeystoreWrapper;-><init>(Landroid/content/Context;)V

    .line 631
    .local v0, "afKeystore":Lcom/appsflyer/AFKeystoreWrapper;
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->loadData()Z

    move-result v1

    if-nez v1, :cond_1

    .line 632
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/appsflyer/Installation;->id(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsflyer/AFKeystoreWrapper;->createFirstInstallData(Ljava/lang/String;)V

    .line 633
    const-string v1, "KSAppsFlyerId"

    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v1, "KSAppsFlyerRICounter"

    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->getReInstallCounter()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .end local v0    # "afKeystore":Lcom/appsflyer/AFKeystoreWrapper;
    :cond_0
    :goto_0
    return-void

    .line 636
    .restart local v0    # "afKeystore":Lcom/appsflyer/AFKeystoreWrapper;
    :cond_1
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->incrementReInstallCounter()V

    .line 637
    const-string v1, "KSAppsFlyerId"

    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v1, "KSAppsFlyerRICounter"

    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->getReInstallCounter()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSystemInfo(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1935
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1936
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "cpu_abi"

    const-string v3, "ro.product.cpu.abi"

    invoke-virtual {p0, v3}, Lcom/appsflyer/AppsFlyerLib;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    const-string v2, "cpu_abi2"

    const-string v3, "ro.product.cpu.abi2"

    invoke-virtual {p0, v3}, Lcom/appsflyer/AppsFlyerLib;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    const-string v2, "arch"

    const-string v3, "os.arch"

    invoke-virtual {p0, v3}, Lcom/appsflyer/AppsFlyerLib;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    const-string v2, "build_display_id"

    const-string v3, "ro.build.display.id"

    invoke-virtual {p0, v3}, Lcom/appsflyer/AppsFlyerLib;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1943
    .local v0, "jsonData":Lorg/json/JSONObject;
    const-string v2, "deviceData"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    return-void
.end method

.method private getTimePassedSinceLastLaunch(Landroid/content/Context;Z)J
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shouldSave"    # Z

    .prologue
    const-wide/16 v10, 0x0

    .line 1990
    const-string v5, "appsflyer-data"

    const/4 v8, 0x0

    invoke-virtual {p1, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1992
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "AppsFlyerTimePassedSincePrevLaunch"

    invoke-interface {v4, v5, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1994
    .local v2, "lastLaunchTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1997
    .local v0, "currentTime":J
    cmp-long v5, v2, v10

    if-lez v5, :cond_1

    .line 1998
    sub-long v6, v0, v2

    .line 2004
    .local v6, "timeInterval":J
    :goto_0
    if-eqz p2, :cond_0

    .line 2005
    const-string v5, "AppsFlyerTimePassedSincePrevLaunch"

    invoke-direct {p0, p1, v5, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->saveLongToSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V

    .line 2008
    :cond_0
    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    return-wide v8

    .line 2001
    .end local v6    # "timeInterval":J
    :cond_1
    const-wide/16 v6, -0x1

    .restart local v6    # "timeInterval":J
    goto :goto_0
.end method

.method private handleDeepLinkCallback(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1486
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "af_deeplink"

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    const-string v4, "af_deeplink"

    invoke-virtual {p3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1491
    const-string v4, "media_source"

    invoke-virtual {p3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1492
    .local v3, "media_source":Ljava/lang/String;
    const-string v4, "is_retargeting"

    invoke-virtual {p3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1494
    .local v1, "is_retargeting":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 1495
    const-string v4, "AppsFlyer_Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1496
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/appsflyer/AppsFlyerLib;->isRetargetingTestMode:Z

    .line 1500
    :cond_0
    invoke-virtual {p3}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/appsflyer/AppsFlyerLib;->referrerStringToMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1502
    .local v0, "attributionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1503
    const-string v4, "path"

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    :cond_1
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1507
    const-string v4, "scheme"

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    :cond_2
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1511
    const-string v4, "host"

    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    .end local v1    # "is_retargeting":Ljava/lang/String;
    .end local v3    # "media_source":Ljava/lang/String;
    :cond_3
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1520
    .local v2, "json":Ljava/lang/String;
    const-string v4, "deeplinkAttribution"

    invoke-direct {p0, p1, v4, v2}, Lcom/appsflyer/AppsFlyerLib;->saveDataToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    sget-object v4, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v4, :cond_4

    .line 1524
    sget-object v4, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v4, v0}, Lcom/appsflyer/AppsFlyerConversionListener;->onAppOpenAttribution(Ljava/util/Map;)V

    .line 1527
    :cond_4
    return-void

    .line 1515
    .end local v0    # "attributionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "json":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1516
    .restart local v0    # "attributionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "link"

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private isAppsFlyerFirstLaunch(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1690
    const-string v2, "appsflyer-data"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1692
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "appsFlyerCount"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isAppsFlyerPackage(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 389
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :cond_0

    const-string v1, "com.appsflyer"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isIdCollectionAllowed(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1686
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInTestMode(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/appsflyer/AppsFlyerLib;->testModeStartTime:J

    sub-long v0, v4, v6

    .line 257
    .local v0, "interval":J
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "referrer":Ljava/lang/String;
    const-wide/16 v4, 0x7530

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    if-eqz v2, :cond_0

    const-string v3, "AppsFlyer_Test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isPreInstallFileInvalid(Ljava/io/File;)Z
    .locals 1
    .param p1, "preInstallFile"    # Ljava/io/File;

    .prologue
    .line 1807
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lastEventsProcessing(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "newEventName"    # Ljava/lang/String;
    .param p4, "newEventValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1562
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "appsflyer-data"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1563
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1566
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    const-string v5, "prev_event_name"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1568
    .local v3, "previousEventName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1569
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1570
    .local v2, "json":Lorg/json/JSONObject;
    const-string v5, "prev_event_timestamp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prev_event_timestamp"

    const-wide/16 v8, -0x1

    invoke-interface {v4, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1571
    const-string v5, "prev_event_value"

    const-string v6, "prev_event_value"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1572
    const-string v5, "prev_event_name"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1573
    const-string v5, "prev_event"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    const-string v5, "prev_event_name"

    invoke-interface {v1, v5, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1577
    const-string v5, "prev_event_value"

    invoke-interface {v1, v5, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1578
    const-string v5, "prev_event_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v1, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1579
    invoke-virtual {p0, v1}, Lcom/appsflyer/AppsFlyerLib;->editorCommit(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1584
    .end local v3    # "previousEventName":Ljava/lang/String;
    :goto_0
    return-void

    .line 1580
    :catch_0
    move-exception v0

    .line 1581
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Error while processing previous event."

    invoke-static {v5, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventIdentifier"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 786
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "shouldMonitor"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 788
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.appsflyer.MonitorBroadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    .local v0, "localIntent":Landroid/content/Intent;
    const-string v1, "com.appsflyer.nightvision"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    const-string v1, "message"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    const-string v1, "value"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    const-string v1, "packageName"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    const-string v1, "pid"

    new-instance v2, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 794
    const-string v1, "eventIdentifier"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    const-string v1, "sdk"

    const-string v2, "4.7.1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 800
    .end local v0    # "localIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private numericBooleanIsClassExist(Ljava/lang/String;)I
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1550
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1551
    const/4 v2, 0x1

    .line 1557
    :goto_0
    return v2

    .line 1552
    :catch_0
    move-exception v0

    .line 1554
    .local v0, "ignored":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 1555
    .end local v0    # "ignored":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 1557
    .local v1, "t":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private preInstallValueFromFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1754
    const-string v5, "ro.appsflyer.preinstall.path"

    invoke-virtual {p0, v5}, Lcom/appsflyer/AppsFlyerLib;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1755
    .local v2, "preInstallFilePathFromSysProp":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/appsflyer/AppsFlyerLib;->getFileFromString(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1757
    .local v0, "preInstallFile":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->isPreInstallFileInvalid(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1759
    const-string v5, "AF_PRE_INSTALL_PATH"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/appsflyer/AppsFlyerLib;->getManifestMetaData(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1760
    .local v1, "preInstallFilePathFromManifest":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/appsflyer/AppsFlyerLib;->getFileFromString(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1763
    .end local v1    # "preInstallFilePathFromManifest":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->isPreInstallFileInvalid(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1764
    const-string v5, "/data/local/tmp/pre_install.appsflyer"

    invoke-direct {p0, v5}, Lcom/appsflyer/AppsFlyerLib;->getFileFromString(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1766
    :cond_1
    invoke-direct {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->isPreInstallFileInvalid(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1767
    const-string v5, "/etc/pre_install.appsflyer"

    invoke-direct {p0, v5}, Lcom/appsflyer/AppsFlyerLib;->getFileFromString(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1770
    :cond_2
    invoke-direct {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->isPreInstallFileInvalid(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v3, v4

    .line 1778
    :cond_3
    :goto_0
    return-object v3

    .line 1774
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/appsflyer/AppsFlyerLib;->extractPropertyFromFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1775
    .local v3, "preInstallValue":Ljava/lang/String;
    if-nez v3, :cond_3

    move-object v3, v4

    .line 1778
    goto :goto_0
.end method

.method private referrerStringToMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "referrer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 941
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 942
    .local v2, "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "&"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 943
    .local v12, "pairs":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 945
    .local v4, "didFindPrt":Z
    array-length v15, v12

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v15, :cond_6

    aget-object v11, v12, v14

    .line 946
    .local v11, "pair":Ljava/lang/String;
    const-string v16, "="

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 947
    .local v8, "idx":I
    if-lez v8, :cond_2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 948
    .local v9, "name":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 950
    const-string v16, "c"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 951
    const-string v9, "campaign"

    .line 959
    :cond_0
    :goto_2
    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    move-object/from16 v0, v16

    invoke-interface {v2, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    :cond_1
    if-lez v8, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v17, v8, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    add-int/lit8 v16, v8, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 962
    .local v13, "value":Ljava/lang/String;
    :goto_3
    invoke-interface {v2, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .end local v9    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_2
    move-object v9, v11

    .line 947
    goto :goto_1

    .line 952
    .restart local v9    # "name":Ljava/lang/String;
    :cond_3
    const-string v16, "pid"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 953
    const-string v9, "media_source"

    goto :goto_2

    .line 954
    :cond_4
    const-string v16, "af_prt"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 955
    const/4 v4, 0x1

    .line 956
    const-string v9, "agency"

    goto :goto_2

    .line 961
    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    .line 965
    .end local v8    # "idx":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "pair":Ljava/lang/String;
    :cond_6
    :try_start_0
    const-string v14, "install_time"

    invoke-interface {v2, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 966
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 968
    .local v10, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-wide v6, v10, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 969
    .local v6, "firstInstallTime":J
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v3, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 970
    .local v3, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v14, "install_time"

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v2, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    .end local v3    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v6    # "firstInstallTime":J
    .end local v10    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_7
    :goto_4
    const-string v14, "af_status"

    invoke-interface {v2, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 976
    const-string v14, "af_status"

    const-string v15, "Non-organic"

    invoke-interface {v2, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    :cond_8
    if-eqz v4, :cond_9

    .line 980
    const-string v14, "media_source"

    invoke-interface {v2, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    :cond_9
    return-object v2

    .line 972
    :catch_0
    move-exception v5

    .line 973
    .local v5, "e":Ljava/lang/Exception;
    const-string v14, "Could not fetch install time. "

    invoke-static {v14, v5}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private registerConversionListenerInternal(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversionDataListener"    # Lcom/appsflyer/AppsFlyerConversionListener;

    .prologue
    .line 893
    if-nez p2, :cond_0

    .line 897
    :goto_0
    return-void

    .line 896
    :cond_0
    sput-object p2, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    goto :goto_0
.end method

.method private registerForAppEvents(Landroid/app/Application;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    const/4 v2, 0x0

    .line 275
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib;->listener:Lcom/appsflyer/Foreground$Listener;

    if-nez v0, :cond_0

    .line 277
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->loadProperties(Landroid/content/Context;)V

    .line 279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 280
    invoke-static {p1}, Lcom/appsflyer/Foreground;->init(Landroid/app/Application;)Lcom/appsflyer/Foreground;

    .line 281
    new-instance v0, Lcom/appsflyer/AppsFlyerLib$1;

    invoke-direct {v0, p0}, Lcom/appsflyer/AppsFlyerLib$1;-><init>(Lcom/appsflyer/AppsFlyerLib;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib;->listener:Lcom/appsflyer/Foreground$Listener;

    .line 308
    invoke-static {}, Lcom/appsflyer/Foreground;->getInstance()Lcom/appsflyer/Foreground;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib;->listener:Lcom/appsflyer/Foreground$Listener;

    invoke-virtual {v0, v1}, Lcom/appsflyer/Foreground;->registerListener(Lcom/appsflyer/Foreground$Listener;)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const-string v0, "SDK<14 call trackAppLaunch manually"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Lcom/appsflyer/AppsFlyerLib;->trackEventInternal(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private runInBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsFlyerKey"    # Ljava/lang/String;
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "eventValue"    # Ljava/lang/String;
    .param p5, "referrer"    # Ljava/lang/String;
    .param p6, "isNewAPI"    # Z

    .prologue
    .line 1013
    sget-wide v0, Lcom/appsflyer/AppsFlyerLib;->timeEnteredForeground:J

    sget-wide v2, Lcom/appsflyer/AppsFlyerLib;->timeWentToBackground:J

    sub-long v10, v0, v2

    .line 1014
    .local v10, "timeSinceLastLaunch":J
    if-nez p3, :cond_0

    const-wide/16 v0, 0x1388

    cmp-long v0, v10, v0

    if-gez v0, :cond_0

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time passed since last Launch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    long-to-double v2, v10

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds -> NOT sending \'Launch\' event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 1021
    :goto_0
    return-void

    .line 1018
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    .line 1019
    .local v8, "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v0, Lcom/appsflyer/AppsFlyerLib$DataCollector;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/appsflyer/AppsFlyerLib$DataCollector;-><init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;Lcom/appsflyer/AppsFlyerLib$1;)V

    const-wide/16 v2, 0x96

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method private saveDataToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 393
    const-string v2, "appsflyer-data"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 394
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 395
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 396
    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->editorCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 397
    return-void
.end method

.method private saveIntegerToSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 401
    const-string v2, "appsflyer-data"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 402
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 403
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->editorCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 405
    return-void
.end method

.method private saveLongToSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 408
    const-string v0, "appsflyer-data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/appsflyer/AppsFlyerLib;->saveLongToSharedPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    .line 409
    return-void
.end method

.method private saveLongToSharedPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;J)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 411
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 412
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 413
    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->editorCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 414
    return-void
.end method

.method private sendRequestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "postDataString"    # Ljava/lang/String;
    .param p3, "afDevKey"    # Ljava/lang/String;
    .param p5, "cacheKey"    # Ljava/lang/String;
    .param p6, "isLaunch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2069
    .local p4, "ctxReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2071
    .local v1, "url":Ljava/net/URL;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 2073
    const-string v2, "call server."

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\nPOST:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v2, v3, v0}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/LogMessages;->logMessageMaskKey(Ljava/lang/String;)V

    .line 2076
    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "AppsFlyer_4.7.1"

    const-string v3, "EVENT_DATA"

    invoke-direct {p0, v0, v2, v3, p2}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 2078
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib;->callServer(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2091
    :goto_0
    return-void

    .line 2079
    :catch_0
    move-exception v9

    .line 2080
    .local v9, "e":Ljava/io/IOException;
    const-string v0, "Exception in sendRequestToServer. "

    invoke-static {v0, v9}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2081
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "useHttpFallback"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 2082
    .local v10, "useHttpFallback":Z
    if-eqz v10, :cond_0

    .line 2083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v2, v3, v0}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2084
    new-instance v3, Ljava/net/URL;

    const-string v0, "https:"

    const-string v2, "http:"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/appsflyer/AppsFlyerLib;->callServer(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2086
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to send requeset to server. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 2087
    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "AppsFlyer_4.7.1"

    const-string v3, "ERROR"

    invoke-virtual {v9}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    throw v9
.end method

.method private sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsFlyerKey"    # Ljava/lang/String;
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "eventValue"    # Ljava/lang/String;
    .param p5, "referrer"    # Ljava/lang/String;
    .param p6, "isUseNewAPI"    # Z

    .prologue
    .line 1033
    if-nez p1, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 1037
    :cond_0
    const-string v0, "appsflyer-data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1038
    .local v7, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/appsflyer/AppsFlyerProperties;->saveProperties(Landroid/content/SharedPreferences;)V

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendTrackingWithEvent from activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 1040
    if-nez p3, :cond_2

    const/4 v8, 0x1

    .local v8, "isLaunchEvent":Z
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    .line 1043
    invoke-virtual/range {v0 .. v8}, Lcom/appsflyer/AppsFlyerLib;->getEventParameters(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/SharedPreferences;Z)Ljava/util/Map;

    move-result-object v3

    .line 1044
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "appsflyerKey"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1045
    .local v9, "afDevKey":Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1046
    :cond_1
    const-string v0, "Not sending data yet, waiting for dev key"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1040
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "isLaunchEvent":Z
    .end local v9    # "afDevKey":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 1049
    .restart local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "isLaunchEvent":Z
    .restart local v9    # "afDevKey":Ljava/lang/String;
    :cond_3
    const-string v0, "AppsFlyerLib.sendTrackingWithEvent"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 1050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_4

    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->APPS_TRACKING_URL:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1051
    .local v2, "urlString":Ljava/lang/String;
    new-instance v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;-><init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZLcom/appsflyer/AppsFlyerLib$1;)V

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->run()V

    goto/16 :goto_0

    .line 1050
    .end local v2    # "urlString":Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->EVENTS_TRACKING_URL:Ljava/lang/String;

    goto :goto_2
.end method

.method private setProperty(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 429
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;I)V

    .line 430
    return-void
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method private startTestMode()V
    .locals 2

    .prologue
    .line 248
    const-string v0, "Test mode started.."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/AppsFlyerLib;->testModeStartTime:J

    .line 250
    return-void
.end method


# virtual methods
.method addReferrer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "referrer"    # Ljava/lang/String;

    .prologue
    .line 206
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "received a new (extra) referrer: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 208
    const/4 v4, 0x0

    .line 209
    .local v4, "referrers":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 210
    .local v2, "occurrencesTimestamps":Lorg/json/JSONArray;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 212
    .local v0, "now":J
    const-string v9, "appsflyer-data"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 213
    .local v7, "sp":Landroid/content/SharedPreferences;
    const-string v9, "extraReferrers"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, "referrersString":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 215
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v4    # "referrers":Lorg/json/JSONObject;
    .local v5, "referrers":Lorg/json/JSONObject;
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "occurrencesTimestamps":Lorg/json/JSONArray;
    .local v3, "occurrencesTimestamps":Lorg/json/JSONArray;
    move-object v2, v3

    .end local v3    # "occurrencesTimestamps":Lorg/json/JSONArray;
    .restart local v2    # "occurrencesTimestamps":Lorg/json/JSONArray;
    move-object v4, v5

    .line 225
    .end local v5    # "referrers":Lorg/json/JSONObject;
    .restart local v4    # "referrers":Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x4

    if-gt v9, v10, :cond_0

    .line 226
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 229
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, p2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v9, "extraReferrers"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v9, v10}, Lcom/appsflyer/AppsFlyerLib;->saveDataToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v0    # "now":J
    .end local v6    # "referrersString":Ljava/lang/String;
    .end local v7    # "sp":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 218
    .restart local v0    # "now":J
    .restart local v6    # "referrersString":Ljava/lang/String;
    .restart local v7    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 219
    .end local v4    # "referrers":Lorg/json/JSONObject;
    .restart local v5    # "referrers":Lorg/json/JSONObject;
    :try_start_3
    invoke-virtual {v5, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 220
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v5, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v3, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .end local v2    # "occurrencesTimestamps":Lorg/json/JSONArray;
    .restart local v3    # "occurrencesTimestamps":Lorg/json/JSONArray;
    move-object v2, v3

    .end local v3    # "occurrencesTimestamps":Lorg/json/JSONArray;
    .restart local v2    # "occurrencesTimestamps":Lorg/json/JSONArray;
    move-object v4, v5

    .end local v5    # "referrers":Lorg/json/JSONObject;
    .restart local v4    # "referrers":Lorg/json/JSONObject;
    goto :goto_0

    .line 222
    .end local v4    # "referrers":Lorg/json/JSONObject;
    .restart local v5    # "referrers":Lorg/json/JSONObject;
    :cond_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .end local v2    # "occurrencesTimestamps":Lorg/json/JSONArray;
    .restart local v3    # "occurrencesTimestamps":Lorg/json/JSONArray;
    move-object v2, v3

    .end local v3    # "occurrencesTimestamps":Lorg/json/JSONArray;
    .restart local v2    # "occurrencesTimestamps":Lorg/json/JSONArray;
    move-object v4, v5

    .end local v5    # "referrers":Lorg/json/JSONObject;
    .restart local v4    # "referrers":Lorg/json/JSONObject;
    goto :goto_0

    .line 233
    .end local v0    # "now":J
    .end local v6    # "referrersString":Ljava/lang/String;
    .end local v7    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v8

    .line 234
    .local v8, "t":Ljava/lang/Throwable;
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t save referrer - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 233
    .end local v4    # "referrers":Lorg/json/JSONObject;
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v0    # "now":J
    .restart local v5    # "referrers":Lorg/json/JSONObject;
    .restart local v6    # "referrersString":Ljava/lang/String;
    .restart local v7    # "sp":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "referrers":Lorg/json/JSONObject;
    .restart local v4    # "referrers":Lorg/json/JSONObject;
    goto :goto_2

    .line 232
    .end local v0    # "now":J
    .end local v6    # "referrersString":Ljava/lang/String;
    .end local v7    # "sp":Landroid/content/SharedPreferences;
    :catch_2
    move-exception v9

    goto :goto_1

    .end local v4    # "referrers":Lorg/json/JSONObject;
    .restart local v0    # "now":J
    .restart local v5    # "referrers":Lorg/json/JSONObject;
    .restart local v6    # "referrersString":Ljava/lang/String;
    .restart local v7    # "sp":Landroid/content/SharedPreferences;
    :catch_3
    move-exception v9

    move-object v4, v5

    .end local v5    # "referrers":Lorg/json/JSONObject;
    .restart local v4    # "referrers":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method callRegisterBackground(Landroid/content/Context;Ljava/lang/String;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 804
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 805
    .local v15, "registerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, "AppsFlyerKey"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 807
    .local v5, "afDevKey":Ljava/lang/String;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v19

    const-string v20, "deviceTrackingDisabled"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 808
    .local v10, "deviceTrackingDisabled":Z
    if-eqz v10, :cond_0

    .line 809
    const-string v19, "deviceTrackingDisabled"

    const-string v20, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/appsflyer/AdvertisingIdUtil;->getAmazonAID(Landroid/content/ContentResolver;)Lcom/appsflyer/AdvertisingIdObject;

    move-result-object v6

    .line 812
    .local v6, "amazonAdvIdObject":Lcom/appsflyer/AdvertisingIdObject;
    if-eqz v6, :cond_1

    .line 813
    const-string v19, "amazon_aid"

    invoke-virtual {v6}, Lcom/appsflyer/AdvertisingIdObject;->getAdvertisingId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string v19, "amazon_aid_limit"

    invoke-virtual {v6}, Lcom/appsflyer/AdvertisingIdObject;->isLimitAdTracking()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v19

    const-string v20, "advertiserId"

    invoke-virtual/range {v19 .. v20}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 817
    .local v4, "advertisingId":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 818
    const-string v19, "advertiserId"

    move-object/from16 v0, v19

    invoke-interface {v15, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    :cond_2
    const-string v19, "devkey"

    move-object/from16 v0, v19

    invoke-interface {v15, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-string v19, "uid"

    new-instance v20, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static/range {v20 .. v20}, Lcom/appsflyer/Installation;->id(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const-string v19, "af_gcm_token"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    const-string v19, "launch_counter"

    const-string v20, "appsflyer-data"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v21, "appsFlyerCount"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->getCounter(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string v19, "sdk"

    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string v19, "channel"

    new-instance v20, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getConfiguredChannel(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 829
    .local v14, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-wide v12, v14, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 830
    .local v12, "firstInstallTime":J
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v19, "yyyy-MM-dd_HHmmssZ"

    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 831
    .local v9, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v19, "install_date"

    new-instance v20, Ljava/util/Date;

    move-object/from16 v0, v20

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    .end local v9    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v12    # "firstInstallTime":J
    .end local v14    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v19

    const-string v20, "collectFingerPrint"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 838
    .local v7, "collectFingerPrint":Z
    if-eqz v7, :cond_3

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->getUniquePsuedoID()Ljava/lang/String;

    move-result-object v8

    .line 840
    .local v8, "customUUID":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 841
    const-string v19, "deviceFingerPrintId"

    move-object/from16 v0, v19

    invoke-interface {v15, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    .end local v8    # "customUUID":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v16, Lcom/appsflyer/BackgroundHttpTask;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/appsflyer/BackgroundHttpTask;-><init>(Landroid/content/Context;)V

    .line 846
    .local v16, "registerTask":Lcom/appsflyer/BackgroundHttpTask;
    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/appsflyer/BackgroundHttpTask;->bodyParameters:Ljava/util/Map;

    .line 847
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/appsflyer/AppsFlyerLib;->REGISTER_URL:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 848
    .local v18, "url":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v18, v19, v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/appsflyer/BackgroundHttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 852
    .end local v16    # "registerTask":Lcom/appsflyer/BackgroundHttpTask;
    .end local v18    # "url":Ljava/lang/String;
    :goto_1
    return-void

    .line 832
    .end local v7    # "collectFingerPrint":Z
    :catch_0
    move-exception v11

    .line 833
    .local v11, "e":Ljava/lang/Throwable;
    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 849
    .end local v11    # "e":Ljava/lang/Throwable;
    .restart local v7    # "collectFingerPrint":Z
    :catch_1
    move-exception v17

    .line 850
    .local v17, "t":Ljava/lang/Throwable;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method editorCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 241
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public enableUninstallTracking(Ljava/lang/String;)V
    .locals 4
    .param p1, "senderId"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "enableUninstallTracking"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 352
    const-string v0, "gcmProjectNumber"

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2060
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "getAppsFlyerUID"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2061
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/appsflyer/Installation;->id(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v3, 0x0

    .line 1949
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    .line 1950
    .local v2, "projection":[Ljava/lang/String;
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1951
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1953
    .local v6, "attributionId":Ljava/lang/String;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1962
    :cond_0
    if-eqz v7, :cond_1

    .line 1963
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1969
    :cond_1
    :goto_0
    return-object v3

    .line 1965
    :catch_0
    move-exception v8

    .line 1966
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1956
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    const-string v0, "aid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 1962
    if-eqz v7, :cond_3

    .line 1963
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_1
    move-object v3, v6

    .line 1969
    goto :goto_0

    .line 1965
    :catch_1
    move-exception v8

    .line 1966
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1958
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 1959
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "Could not collect cursor attribution. "

    invoke-static {v0, v8}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1962
    if-eqz v7, :cond_3

    .line 1963
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 1965
    :catch_3
    move-exception v8

    .line 1966
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1961
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1962
    if-eqz v7, :cond_4

    .line 1963
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1967
    :cond_4
    :goto_2
    throw v0

    .line 1965
    :catch_4
    move-exception v8

    .line 1966
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method getBatteryLevel(Landroid/content/Context;)F
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, -0x1

    .line 2552
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2554
    .local v2, "result":F
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 2555
    .local v0, "batteryIntent":Landroid/content/Intent;
    const-string v5, "level"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2556
    .local v1, "level":I
    const-string v5, "scale"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2559
    .local v3, "scale":I
    if-eq v1, v9, :cond_0

    if-ne v3, v9, :cond_1

    .line 2560
    :cond_0
    const/high16 v5, 0x42480000    # 50.0f

    .line 2569
    .end local v0    # "batteryIntent":Landroid/content/Intent;
    .end local v1    # "level":I
    .end local v3    # "scale":I
    :goto_0
    return v5

    .line 2563
    .restart local v0    # "batteryIntent":Landroid/content/Intent;
    .restart local v1    # "level":I
    .restart local v3    # "scale":I
    :cond_1
    int-to-float v5, v1

    int-to-float v6, v3

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v2, v5, v6

    .end local v0    # "batteryIntent":Landroid/content/Intent;
    .end local v1    # "level":I
    .end local v3    # "scale":I
    :goto_1
    move v5, v2

    .line 2569
    goto :goto_0

    .line 2565
    :catch_0
    move-exception v4

    .line 2566
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected getConversionData(Landroid/content/Context;Lcom/appsflyer/ConversionDataListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversionDataListener"    # Lcom/appsflyer/ConversionDataListener;

    .prologue
    .line 919
    new-instance v0, Lcom/appsflyer/AppsFlyerLib$2;

    invoke-direct {v0, p0, p2}, Lcom/appsflyer/AppsFlyerLib$2;-><init>(Lcom/appsflyer/AppsFlyerLib;Lcom/appsflyer/ConversionDataListener;)V

    invoke-direct {p0, p1, v0}, Lcom/appsflyer/AppsFlyerLib;->registerConversionListenerInternal(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V

    .line 936
    return-void
.end method

.method getEventParameters(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/SharedPreferences;Z)Ljava/util/Map;
    .locals 62
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsFlyerKey"    # Ljava/lang/String;
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "eventValue"    # Ljava/lang/String;
    .param p5, "referrer"    # Ljava/lang/String;
    .param p6, "isUseNewAPI"    # Z
    .param p7, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p8, "isLaunchEvent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/content/SharedPreferences;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1063
    new-instance v41, Ljava/util/HashMap;

    invoke-direct/range {v41 .. v41}, Ljava/util/HashMap;-><init>()V

    .line 1064
    .local v41, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/appsflyer/AdvertisingIdUtil;->addGoogleAID(Landroid/content/Context;Ljava/util/Map;)V

    .line 1065
    const-string v58, "af_timestamp"

    new-instance v59, Ljava/util/Date;

    invoke-direct/range {v59 .. v59}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v59 .. v59}, Ljava/util/Date;->getTime()J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    :try_start_0
    const-string v58, "collect data for server"

    const-string v59, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1070
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "******* sendTrackingWithEvent: "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    if-eqz p8, :cond_2c

    const-string v58, "Launch"

    :goto_0
    move-object/from16 v0, v59

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 1071
    const-string v59, "********* sendTrackingWithEvent: "

    if-eqz p8, :cond_2d

    const-string v58, "Launch"

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v58

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1073
    const-string v59, "AppsFlyer_4.7.1"

    const-string v60, "EVENT_CREATED_WITH_NAME"

    if-eqz p8, :cond_2e

    const-string v58, "Launch"

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v59

    move-object/from16 v3, v60

    move-object/from16 v4, v58

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    invoke-static {}, Lcom/appsflyer/cache/CacheManager;->getInstance()Lcom/appsflyer/cache/CacheManager;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/appsflyer/cache/CacheManager;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1078
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v58

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v59

    const/16 v60, 0x1000

    invoke-virtual/range {v58 .. v60}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v40

    .line 1079
    .local v40, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v58, v0

    invoke-static/range {v58 .. v58}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v47

    .line 1080
    .local v47, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v58, "android.permission.INTERNET"

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_0

    .line 1081
    const-string v58, "Permission android.permission.INTERNET is missing in the AndroidManifest.xml"

    invoke-static/range {v58 .. v58}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 1082
    const/16 v58, 0x0

    const-string v59, "PERMISSION_INTERNET_MISSING"

    const/16 v60, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v58

    move-object/from16 v3, v59

    move-object/from16 v4, v60

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :cond_0
    const-string v58, "android.permission.ACCESS_NETWORK_STATE"

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_1

    .line 1085
    const-string v58, "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml"

    invoke-static/range {v58 .. v58}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 1087
    :cond_1
    const-string v58, "android.permission.ACCESS_WIFI_STATE"

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_2

    .line 1088
    const-string v58, "Permission android.permission.ACCESS_WIFI_STATE is missing in the AndroidManifest.xml"

    invoke-static/range {v58 .. v58}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1094
    .end local v40    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v47    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_3
    if-eqz p6, :cond_3

    .line 1095
    :try_start_2
    const-string v58, "af_events_api"

    const-string v59, "1"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    :cond_3
    const-string v58, "brand"

    sget-object v59, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    const-string v58, "device"

    sget-object v59, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    const-string v58, "product"

    sget-object v59, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    const-string v58, "sdk"

    sget v59, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const-string v58, "model"

    sget-object v59, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    const-string v58, "deviceType"

    sget-object v59, Landroid/os/Build;->TYPE:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    if-eqz p8, :cond_2f

    .line 1105
    invoke-direct/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->isAppsFlyerFirstLaunch(Landroid/content/Context;)Z

    move-result v58

    if-eqz v58, :cond_5

    .line 1106
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/appsflyer/AppsFlyerProperties;->isOtherSdkStringDisabled()Z

    move-result v58

    if-nez v58, :cond_4

    .line 1107
    const-string v58, "af_sdks"

    invoke-direct/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->generateOtherSDKsString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    invoke-virtual/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->getBatteryLevel(Landroid/content/Context;)F

    move-result v10

    .line 1109
    .local v10, "batteryLevel":F
    const-string v58, "batteryLevel"

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    .end local v10    # "batteryLevel":F
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->getReInstallData(Landroid/content/Context;)V

    .line 1117
    :cond_5
    :goto_4
    const-string v58, "KSAppsFlyerId"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1118
    .local v38, "originalAFUID":Ljava/lang/String;
    const-string v58, "KSAppsFlyerRICounter"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1119
    .local v44, "reInstallCounter":Ljava/lang/String;
    if-eqz v38, :cond_6

    if-eqz v44, :cond_6

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v58

    if-lez v58, :cond_6

    .line 1120
    const-string v58, "reinstallCounter"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    const-string v58, "originalAppsflyerId"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    :cond_6
    const-string v58, "additionalCustomData"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1125
    .local v16, "customData":Ljava/lang/String;
    if-eqz v16, :cond_7

    .line 1126
    const-string v58, "customData"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1130
    :cond_7
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v58

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1131
    .local v29, "installerPackage":Ljava/lang/String;
    if-eqz v29, :cond_8

    .line 1132
    const-string v58, "installer_package"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 1138
    .end local v29    # "installerPackage":Ljava/lang/String;
    :cond_8
    :goto_5
    :try_start_4
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v58

    const-string v59, "sdkExtension"

    invoke-virtual/range {v58 .. v59}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1139
    .local v48, "sdkExtension":Ljava/lang/String;
    if-eqz v48, :cond_9

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v58

    if-lez v58, :cond_9

    .line 1140
    const-string v58, "sdkExtension"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v48

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    :cond_9
    new-instance v58, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getConfiguredChannel(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v14

    .line 1145
    .local v14, "currentChannel":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/appsflyer/AppsFlyerLib;->getCachedChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1146
    .local v39, "originalChannel":Ljava/lang/String;
    if-eqz v39, :cond_a

    .line 1147
    const-string v58, "channel"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    :cond_a
    if-eqz v39, :cond_b

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_c

    :cond_b
    if-nez v39, :cond_d

    if-eqz v14, :cond_d

    .line 1152
    :cond_c
    const-string v58, "af_latestchannel"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->getCachedStore(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    .line 1156
    .local v28, "installStore":Ljava/lang/String;
    if-eqz v28, :cond_e

    .line 1157
    const-string v58, "af_installstore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->getPreInstallName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v43

    .line 1161
    .local v43, "preInstallName":Ljava/lang/String;
    if-eqz v43, :cond_f

    .line 1162
    const-string v58, "af_preinstall_name"

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->getCurrentStore(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 1166
    .local v15, "currentStore":Ljava/lang/String;
    if-eqz v15, :cond_10

    .line 1167
    const-string v58, "af_currentstore"

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    :cond_10
    if-eqz p2, :cond_30

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v58

    if-ltz v58, :cond_30

    .line 1171
    const-string v58, "appsflyerKey"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->getCustomerUserId()Ljava/lang/String;

    move-result-object v8

    .line 1185
    .local v8, "appUserId":Ljava/lang/String;
    if-eqz v8, :cond_11

    .line 1186
    const-string v58, "appUserId"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    :cond_11
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v58

    const-string v59, "userEmails"

    invoke-virtual/range {v58 .. v59}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1191
    .local v20, "emailData":Ljava/lang/String;
    if-eqz v20, :cond_32

    .line 1192
    const-string v58, "user_emails"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    :cond_12
    :goto_7
    if-eqz p3, :cond_13

    .line 1202
    const-string v58, "eventName"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    if-eqz p4, :cond_13

    .line 1204
    const-string v58, "eventValue"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->getAppId()Ljava/lang/String;

    move-result-object v58

    if-eqz v58, :cond_14

    .line 1209
    const-string v58, "appid"

    const-string v59, "appid"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    :cond_14
    const-string v58, "currencyCode"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1212
    .local v13, "currencyCode":Ljava/lang/String;
    if-eqz v13, :cond_16

    .line 1213
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v58

    const/16 v59, 0x3

    move/from16 v0, v58

    move/from16 v1, v59

    if-eq v0, v1, :cond_15

    .line 1214
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "WARNING: currency code should be 3 characters!!! \'"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "\' is not a legal value."

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 1216
    :cond_15
    const-string v58, "currency"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    :cond_16
    const-string v58, "IS_UPDATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1220
    .local v33, "isUpdate":Ljava/lang/String;
    if-eqz v33, :cond_17

    .line 1221
    const-string v58, "isUpdate"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    :cond_17
    invoke-virtual/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->isPreInstalledApp(Landroid/content/Context;)Z

    move-result v32

    .line 1224
    .local v32, "isPreInstall":Z
    const-string v58, "af_preinstalled"

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v58

    const-string v59, "collectFacebookAttrId"

    const/16 v60, 0x1

    invoke-virtual/range {v58 .. v60}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result v50

    .line 1228
    .local v50, "shouldCollectFBId":Z
    if-eqz v50, :cond_18

    .line 1231
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v58

    const-string v59, "com.facebook.katana"

    const/16 v60, 0x0

    invoke-virtual/range {v58 .. v60}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1232
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v58

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v21

    .line 1240
    .local v21, "facebookAttributeId":Ljava/lang/String;
    :goto_8
    if-eqz v21, :cond_18

    .line 1241
    :try_start_6
    const-string v58, "fb"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    .end local v21    # "facebookAttributeId":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->addDeviceTracking(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 1248
    :try_start_7
    new-instance v58, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static/range {v58 .. v58}, Lcom/appsflyer/Installation;->id(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v53

    .line 1249
    .local v53, "uid":Ljava/lang/String;
    if-eqz v53, :cond_19

    .line 1250
    const-string v58, "uid"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v53

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 1257
    .end local v53    # "uid":Ljava/lang/String;
    :cond_19
    :goto_9
    :try_start_8
    const-string v58, "lang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 1263
    :goto_a
    :try_start_9
    const-string v58, "lang_code"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    .line 1269
    :goto_b
    :try_start_a
    const-string v58, "country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    .line 1274
    :goto_c
    :try_start_b
    const-string v58, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/telephony/TelephonyManager;

    .line 1275
    .local v35, "manager":Landroid/telephony/TelephonyManager;
    const-string v58, "operator"

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    const-string v58, "carrier"

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    .line 1282
    .end local v35    # "manager":Landroid/telephony/TelephonyManager;
    :goto_d
    :try_start_c
    const-string v58, "network"

    invoke-direct/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_a

    .line 1288
    :goto_e
    :try_start_d
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v58

    const-string v59, "collectFingerPrint"

    const/16 v60, 0x1

    invoke-virtual/range {v58 .. v60}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 1290
    .local v11, "collectFingerPrint":Z
    if-eqz v11, :cond_1a

    .line 1291
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->getUniquePsuedoID()Ljava/lang/String;

    move-result-object v17

    .line 1292
    .local v17, "customUUID":Ljava/lang/String;
    if-eqz v17, :cond_1a

    .line 1293
    const-string v58, "deviceFingerPrintId"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    .end local v17    # "customUUID":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->checkPlatform(Landroid/content/Context;Ljava/util/Map;)V

    .line 1298
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getSystemInfo(Ljava/util/Map;)V

    .line 1300
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v58, "yyyy-MM-dd_HHmmssZ"

    sget-object v59, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1302
    .local v18, "dateFormat":Ljava/text/SimpleDateFormat;
    sget v58, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    const/16 v59, 0x9

    move/from16 v0, v58

    move/from16 v1, v59

    if-lt v0, v1, :cond_1b

    .line 1304
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v58

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v59

    const/16 v60, 0x0

    invoke-virtual/range {v58 .. v60}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v58

    move-object/from16 v0, v58

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v30, v0

    .line 1305
    .local v30, "installed":J
    const-string v58, "installDate"

    new-instance v59, Ljava/util/Date;

    move-object/from16 v0, v59

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    .line 1312
    .end local v30    # "installed":J
    :cond_1b
    :goto_f
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v58

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v59

    const/16 v60, 0x0

    invoke-virtual/range {v58 .. v60}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v40

    .line 1314
    .restart local v40    # "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v58, "versionCode"

    const/16 v59, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v57

    .line 1316
    .local v57, "versioncode":I
    move-object/from16 v0, v40

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v58, v0

    move/from16 v0, v58

    move/from16 v1, v57

    if-le v0, v1, :cond_1c

    .line 1319
    const-string v58, "appsflyerConversionDataRequestRetries"

    const/16 v59, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v58

    move/from16 v3, v59

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->saveIntegerToSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1320
    const-string v58, "versionCode"

    move-object/from16 v0, v40

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v59, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v58

    move/from16 v3, v59

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->saveIntegerToSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1324
    :cond_1c
    const-string v58, "app_version_code"

    move-object/from16 v0, v40

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    const-string v58, "app_version_name"

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    sget v58, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v59, 0x9

    move/from16 v0, v58

    move/from16 v1, v59

    if-lt v0, v1, :cond_1d

    .line 1330
    move-object/from16 v0, v40

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v24, v0

    .line 1331
    .local v24, "firstInstallTime":J
    move-object/from16 v0, v40

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v36, v0

    .line 1332
    .local v36, "lastUpdateTime":J
    const-string v58, "date1"

    new-instance v59, Ljava/util/Date;

    move-object/from16 v0, v59

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    const-string v58, "date2"

    new-instance v59, Ljava/util/Date;

    move-object/from16 v0, v59

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->getFirstInstallDate(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    .line 1335
    .local v22, "firstInstallDate":Ljava/lang/String;
    const-string v58, "firstLaunchDate"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_c

    .line 1343
    .end local v22    # "firstInstallDate":Ljava/lang/String;
    .end local v24    # "firstInstallTime":J
    .end local v36    # "lastUpdateTime":J
    .end local v40    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v57    # "versioncode":I
    :cond_1d
    :goto_10
    :try_start_10
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v58

    if-lez v58, :cond_1e

    .line 1344
    const-string v58, "referrer"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    :cond_1e
    const-string v58, "attributionId"

    const/16 v59, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1348
    .local v9, "attributionString":Ljava/lang/String;
    if-eqz v9, :cond_1f

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v58

    if-lez v58, :cond_1f

    .line 1349
    const-string v58, "installAttribution"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    :cond_1f
    const-string v58, "extraReferrers"

    const/16 v59, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1353
    .local v46, "referrersString":Ljava/lang/String;
    if-eqz v46, :cond_20

    .line 1354
    const-string v58, "extraReferrers"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    :cond_20
    const-string v58, "afUninstallToken"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1359
    .local v54, "uninstallToken":Ljava/lang/String;
    if-eqz v54, :cond_21

    .line 1360
    invoke-static/range {v54 .. v54}, Lcom/appsflyer/AFUninstallToken;->parse(Ljava/lang/String;)Lcom/appsflyer/AFUninstallToken;

    move-result-object v52

    .line 1361
    .local v52, "tokenObject":Lcom/appsflyer/AFUninstallToken;
    if-eqz v52, :cond_21

    .line 1362
    const-string v58, "af_gcm_token"

    invoke-virtual/range {v52 .. v52}, Lcom/appsflyer/AFUninstallToken;->getToken()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    .end local v52    # "tokenObject":Lcom/appsflyer/AFUninstallToken;
    :cond_21
    invoke-static/range {p1 .. p1}, Lcom/appsflyer/UninstallUtils;->didConfigureTokenRefreshService(Landroid/content/Context;)Z

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/appsflyer/AppsFlyerLib;->isTokenRefreshServiceConfigured:Z

    .line 1368
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "didConfigureTokenRefreshService="

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/appsflyer/AppsFlyerLib;->isTokenRefreshServiceConfigured:Z

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 1369
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/appsflyer/AppsFlyerLib;->isTokenRefreshServiceConfigured:Z

    move/from16 v58, v0

    if-nez v58, :cond_22

    .line 1370
    const-string v58, "tokenRefreshConfigured"

    const/16 v59, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    :cond_22
    if-eqz p8, :cond_24

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib;->pushPayload:Ljava/lang/String;

    move-object/from16 v58, v0

    if-eqz v58, :cond_23

    .line 1376
    new-instance v34, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib;->pushPayload:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1377
    .local v34, "jsonPushPayload":Lorg/json/JSONObject;
    const-string v58, "isPush"

    const-string v59, "true"

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1378
    const-string v58, "af_deeplink"

    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    .end local v34    # "jsonPushPayload":Lorg/json/JSONObject;
    :cond_23
    const/16 v58, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/appsflyer/AppsFlyerLib;->pushPayload:Ljava/lang/String;

    .line 1384
    :cond_24
    if-eqz p8, :cond_25

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v58, v0

    if-eqz v58, :cond_25

    .line 1385
    invoke-direct/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->getDeepLinkUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v55

    .line 1386
    .local v55, "uri":Landroid/net/Uri;
    if-eqz v55, :cond_33

    .line 1387
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    move-object/from16 v3, v55

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->handleDeepLinkCallback(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    .line 1396
    .end local v55    # "uri":Landroid/net/Uri;
    :cond_25
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/appsflyer/AppsFlyerLib;->isRetargetingTestMode:Z

    move/from16 v58, v0

    if-eqz v58, :cond_26

    .line 1397
    const-string v58, "testAppMode_retargeting"

    const-string v59, "true"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    new-instance v42, Lorg/json/JSONObject;

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1399
    .local v42, "paramsJSON":Lorg/json/JSONObject;
    invoke-virtual/range {v42 .. v42}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, p1

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->broadcastBacktoTestApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 1400
    const-string v58, "Sent retargeting params to test app"

    invoke-static/range {v58 .. v58}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 1404
    .end local v42    # "paramsJSON":Lorg/json/JSONObject;
    :cond_26
    invoke-direct/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->isInTestMode(Landroid/content/Context;)Z

    move-result v58

    if-eqz v58, :cond_27

    .line 1405
    const-string v58, "testAppMode"

    const-string v59, "true"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    new-instance v42, Lorg/json/JSONObject;

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1407
    .restart local v42    # "paramsJSON":Lorg/json/JSONObject;
    invoke-virtual/range {v42 .. v42}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, p1

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->broadcastBacktoTestApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 1408
    const-string v58, "Sent params to test app"

    invoke-static/range {v58 .. v58}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 1409
    invoke-direct/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->endTestMode()V

    .line 1412
    .end local v42    # "paramsJSON":Lorg/json/JSONObject;
    :cond_27
    const-string v58, "advertiserId"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    if-nez v58, :cond_28

    .line 1413
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/appsflyer/AdvertisingIdUtil;->addGoogleAID(Landroid/content/Context;Ljava/util/Map;)V

    .line 1414
    const-string v58, "advertiserId"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    if-eqz v58, :cond_34

    .line 1415
    const-string v58, "GAID_retry"

    const-string v59, "true"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    :cond_28
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Lcom/appsflyer/AdvertisingIdUtil;->getAmazonAID(Landroid/content/ContentResolver;)Lcom/appsflyer/AdvertisingIdObject;

    move-result-object v7

    .line 1422
    .local v7, "amazonAdvIdObject":Lcom/appsflyer/AdvertisingIdObject;
    if-eqz v7, :cond_29

    .line 1423
    const-string v58, "amazon_aid"

    invoke-virtual {v7}, Lcom/appsflyer/AdvertisingIdObject;->getAdvertisingId()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    const-string v58, "amazon_aid_limit"

    invoke-virtual {v7}, Lcom/appsflyer/AdvertisingIdObject;->isLimitAdTracking()Z

    move-result v59

    invoke-static/range {v59 .. v59}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    :cond_29
    const/16 v49, 0x0

    .line 1429
    .local v49, "sentSuccessfully":Z
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v45

    .line 1430
    .local v45, "referrerFromProperties":Ljava/lang/String;
    if-eqz v45, :cond_2a

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v58

    if-lez v58, :cond_2a

    const-string v58, "referrer"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v58

    if-nez v58, :cond_2a

    .line 1432
    const-string v58, "referrer"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    :cond_2a
    const-string v58, "true"

    const-string v59, "sentSuccessfully"

    const-string v60, ""

    move-object/from16 v0, p7

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    .line 1435
    const-string v58, "appsFlyerCount"

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, v58

    move/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->getCounter(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v12

    .line 1436
    .local v12, "counter":I
    const-string v58, "counter"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    const-string v59, "iaecounter"

    const-string v60, "appsFlyerInAppEventCount"

    if-eqz p3, :cond_35

    const/16 v58, 0x1

    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, v60

    move/from16 v3, v58

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->getCounter(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v41

    move-object/from16 v1, v59

    move-object/from16 v2, v58

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    const-string v58, "timepassedsincelastlaunch"

    const/16 v59, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->getTimePassedSinceLastLaunch(Landroid/content/Context;Z)J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    if-eqz p8, :cond_2b

    const/16 v58, 0x1

    move/from16 v0, v58

    if-ne v12, v0, :cond_2b

    .line 1441
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/appsflyer/AppsFlyerProperties;->setFirstLaunchCalled()V

    .line 1443
    :cond_2b
    const-string v59, "isFirstCall"

    if-nez v49, :cond_36

    const/16 v58, 0x1

    :goto_14
    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v41

    move-object/from16 v1, v59

    move-object/from16 v2, v58

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    new-instance v58, Lcom/appsflyer/HashUtils;

    invoke-direct/range {v58 .. v58}, Lcom/appsflyer/HashUtils;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/appsflyer/HashUtils;->getHashCode(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v23

    .line 1447
    .local v23, "hash":Ljava/lang/String;
    const-string v58, "af_v"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    new-instance v58, Lcom/appsflyer/HashUtils;

    invoke-direct/range {v58 .. v58}, Lcom/appsflyer/HashUtils;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/appsflyer/HashUtils;->getHashCodeV2(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v26

    .line 1450
    .local v26, "hashV2":Ljava/lang/String;
    const-string v58, "af_v2"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    .end local v7    # "amazonAdvIdObject":Lcom/appsflyer/AdvertisingIdObject;
    .end local v8    # "appUserId":Ljava/lang/String;
    .end local v9    # "attributionString":Ljava/lang/String;
    .end local v11    # "collectFingerPrint":Z
    .end local v12    # "counter":I
    .end local v13    # "currencyCode":Ljava/lang/String;
    .end local v14    # "currentChannel":Ljava/lang/String;
    .end local v15    # "currentStore":Ljava/lang/String;
    .end local v16    # "customData":Ljava/lang/String;
    .end local v18    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v20    # "emailData":Ljava/lang/String;
    .end local v23    # "hash":Ljava/lang/String;
    .end local v26    # "hashV2":Ljava/lang/String;
    .end local v28    # "installStore":Ljava/lang/String;
    .end local v32    # "isPreInstall":Z
    .end local v33    # "isUpdate":Ljava/lang/String;
    .end local v38    # "originalAFUID":Ljava/lang/String;
    .end local v39    # "originalChannel":Ljava/lang/String;
    .end local v41    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v43    # "preInstallName":Ljava/lang/String;
    .end local v44    # "reInstallCounter":Ljava/lang/String;
    .end local v45    # "referrerFromProperties":Ljava/lang/String;
    .end local v46    # "referrersString":Ljava/lang/String;
    .end local v48    # "sdkExtension":Ljava/lang/String;
    .end local v49    # "sentSuccessfully":Z
    .end local v50    # "shouldCollectFBId":Z
    .end local v54    # "uninstallToken":Ljava/lang/String;
    :goto_15
    return-object v41

    .restart local v41    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2c
    move-object/from16 v58, p3

    .line 1070
    goto/16 :goto_0

    :cond_2d
    move-object/from16 v58, p3

    .line 1071
    goto/16 :goto_1

    :cond_2e
    move-object/from16 v58, p3

    .line 1073
    goto/16 :goto_2

    .line 1090
    :catch_0
    move-exception v19

    .line 1091
    .local v19, "e":Ljava/lang/Exception;
    const-string v58, "Exception while validation permissions. "

    move-object/from16 v0, v58

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_3

    .line 1451
    .end local v19    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v19

    .line 1452
    .local v19, "e":Ljava/lang/Throwable;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 1114
    .end local v19    # "e":Ljava/lang/Throwable;
    :cond_2f
    :try_start_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/AppsFlyerLib;->lastEventsProcessing(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1134
    .restart local v16    # "customData":Ljava/lang/String;
    .restart local v38    # "originalAFUID":Ljava/lang/String;
    .restart local v44    # "reInstallCounter":Ljava/lang/String;
    :catch_2
    move-exception v19

    .line 1135
    .local v19, "e":Ljava/lang/Exception;
    const-string v58, "Exception while getting the app\'s installer package. "

    move-object/from16 v0, v58

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1173
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v14    # "currentChannel":Ljava/lang/String;
    .restart local v15    # "currentStore":Ljava/lang/String;
    .restart local v28    # "installStore":Ljava/lang/String;
    .restart local v39    # "originalChannel":Ljava/lang/String;
    .restart local v43    # "preInstallName":Ljava/lang/String;
    .restart local v48    # "sdkExtension":Ljava/lang/String;
    :cond_30
    const-string v58, "AppsFlyerKey"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1174
    .local v6, "afKeyFromProperties":Ljava/lang/String;
    if-eqz v6, :cond_31

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v58

    if-ltz v58, :cond_31

    .line 1175
    const-string v58, "appsflyerKey"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 1177
    :cond_31
    const-string v58, "AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.getInstance().setAppsFlyerKey(...) to set it. "

    invoke-static/range {v58 .. v58}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 1178
    const-string v58, "AppsFlyer_4.7.1"

    const-string v59, "DEV_KEY_MISSING"

    const/16 v60, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v58

    move-object/from16 v3, v59

    move-object/from16 v4, v60

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const-string v58, "AppsFlyer will not track this event."

    invoke-static/range {v58 .. v58}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 1180
    const/16 v41, 0x0

    goto :goto_15

    .line 1195
    .end local v6    # "afKeyFromProperties":Ljava/lang/String;
    .restart local v8    # "appUserId":Ljava/lang/String;
    .restart local v20    # "emailData":Ljava/lang/String;
    :cond_32
    const-string v58, "userEmail"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1196
    .local v56, "userEmail":Ljava/lang/String;
    if-eqz v56, :cond_12

    .line 1197
    const-string v58, "sha1_el"

    invoke-static/range {v56 .. v56}, Lcom/appsflyer/HashUtils;->toSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1233
    .end local v56    # "userEmail":Ljava/lang/String;
    .restart local v13    # "currencyCode":Ljava/lang/String;
    .restart local v32    # "isPreInstall":Z
    .restart local v33    # "isUpdate":Ljava/lang/String;
    .restart local v50    # "shouldCollectFBId":Z
    :catch_3
    move-exception v27

    .line 1234
    .local v27, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v21, 0x0

    .line 1235
    .restart local v21    # "facebookAttributeId":Ljava/lang/String;
    const-string v58, "Exception while collecting facebook\'s attribution ID. "

    invoke-static/range {v58 .. v58}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1236
    .end local v21    # "facebookAttributeId":Ljava/lang/String;
    .end local v27    # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_4
    move-exception v51

    .line 1237
    .local v51, "t":Ljava/lang/Throwable;
    const/16 v21, 0x0

    .line 1238
    .restart local v21    # "facebookAttributeId":Ljava/lang/String;
    const-string v58, "Exception while collecting facebook\'s attribution ID. "

    move-object/from16 v0, v58

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 1252
    .end local v21    # "facebookAttributeId":Ljava/lang/String;
    .end local v51    # "t":Ljava/lang/Throwable;
    :catch_5
    move-exception v19

    .line 1253
    .restart local v19    # "e":Ljava/lang/Exception;
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "ERROR: "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "could not get uid "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1258
    .end local v19    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v19

    .line 1259
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string v58, "Exception while collecting display language name. "

    move-object/from16 v0, v58

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 1264
    .end local v19    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v19

    .line 1265
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string v58, "Exception while collecting display language code. "

    move-object/from16 v0, v58

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 1270
    .end local v19    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v19

    .line 1271
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string v58, "Exception while collecting country name. "

    move-object/from16 v0, v58

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 1277
    .end local v19    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v19

    .line 1278
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string v58, "Exception while collecting network operator/carrier.  "

    move-object/from16 v0, v58

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 1283
    .end local v19    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v19

    .line 1284
    .local v19, "e":Ljava/lang/Throwable;
    const-string v58, "Exception while collecting network info. "

    move-object/from16 v0, v58

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 1306
    .end local v19    # "e":Ljava/lang/Throwable;
    .restart local v11    # "collectFingerPrint":Z
    .restart local v18    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_b
    move-exception v19

    .line 1307
    .local v19, "e":Ljava/lang/Exception;
    const-string v58, "Exception while collecting install date. "

    move-object/from16 v0, v58

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 1339
    .end local v19    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v51

    .line 1340
    .restart local v51    # "t":Ljava/lang/Throwable;
    const-string v58, "Exception while collecting app version data "

    move-object/from16 v0, v58

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 1389
    .end local v51    # "t":Ljava/lang/Throwable;
    .restart local v9    # "attributionString":Ljava/lang/String;
    .restart local v46    # "referrersString":Ljava/lang/String;
    .restart local v54    # "uninstallToken":Ljava/lang/String;
    .restart local v55    # "uri":Landroid/net/Uri;
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib;->latestDeepLink:Landroid/net/Uri;

    move-object/from16 v58, v0

    if-eqz v58, :cond_25

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib;->latestDeepLink:Landroid/net/Uri;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    move-object/from16 v3, v58

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->handleDeepLinkCallback(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    goto/16 :goto_11

    .line 1417
    .end local v55    # "uri":Landroid/net/Uri;
    :cond_34
    const-string v58, "GAID_retry"

    const-string v59, "false"

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_12

    .line 1437
    .restart local v7    # "amazonAdvIdObject":Lcom/appsflyer/AdvertisingIdObject;
    .restart local v12    # "counter":I
    .restart local v45    # "referrerFromProperties":Ljava/lang/String;
    .restart local v49    # "sentSuccessfully":Z
    :cond_35
    const/16 v58, 0x0

    goto/16 :goto_13

    .line 1443
    :cond_36
    const/16 v58, 0x0

    goto/16 :goto_14
.end method

.method getProperty(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 453
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method getProperty(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 449
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 269
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "getSdkVersion"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 270
    const-string v0, "version: 4.7.1 (build 314)"

    return-object v0
.end method

.method getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1713
    const/4 v2, 0x0

    .line 1716
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 1717
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1721
    :goto_0
    return-object v2

    .line 1718
    :catch_0
    move-exception v1

    .line 1719
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method getUniquePsuedoID()Ljava/lang/String;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2020
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "35"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2026
    .local v1, "m_szDevIDShort":Ljava/lang/String;
    :try_start_0
    const-class v3, Landroid/os/Build;

    const-string v4, "SERIAL"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2029
    .local v2, "serial":Ljava/lang/String;
    new-instance v3, Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2037
    :goto_0
    return-object v3

    .line 2030
    .end local v2    # "serial":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2031
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2033
    const-string v2, "serial"

    .line 2037
    .restart local v2    # "serial":Ljava/lang/String;
    new-instance v3, Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method isGooglePlayServicesAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1588
    const/4 v0, 0x0

    .line 1591
    .local v0, "retValue":Z
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1592
    .local v1, "statusCode":I
    if-nez v1, :cond_0

    .line 1593
    const/4 v0, 0x1

    .line 1598
    .end local v1    # "statusCode":I
    :cond_0
    :goto_0
    return v0

    .line 1595
    :catch_0
    move-exception v2

    .line 1596
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "WARNING:  Google play services is unavailable. "

    invoke-static {v3, v2}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isPreInstalledApp(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1872
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1877
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 1878
    const/4 v2, 0x1

    .line 1883
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 1880
    :catch_0
    move-exception v1

    .line 1881
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Could not check if app is pre installed"

    invoke-static {v3, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 161
    const-string v5, "shouldMonitor"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "shouldMonitor":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 163
    const-string v5, "Turning on monitoring."

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    const-string v6, "shouldMonitor"

    const-string v7, "true"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 165
    const/4 v5, 0x0

    const-string v6, "START_TRACKING"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const-string v5, "****** onReceive called *******"

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 170
    const-string v5, "******* onReceive: "

    const-string v6, ""

    invoke-direct {p0, v5, v6, p1}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 172
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerProperties;->setOnReceiveCalled()V

    .line 174
    const-string v5, "referrer"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "referrer":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Play store referrer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 177
    if-eqz v1, :cond_0

    .line 179
    const-string v5, "TestIntegrationMode"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "testIntegration":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v5, "AppsFlyer_Test"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 183
    const-string v5, "appsflyer-data"

    invoke-virtual {p1, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 184
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 185
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->editorCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 188
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/appsflyer/AppsFlyerProperties;->setFirstLaunchCalled(Z)V

    .line 189
    invoke-direct {p0}, Lcom/appsflyer/AppsFlyerLib;->startTestMode()V

    .line 191
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_2
    const-string v5, "onReceive called. referrer: "

    invoke-direct {p0, v5, v1, p1}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 193
    const-string v5, "referrer"

    invoke-direct {p0, p1, v5, v1}, Lcom/appsflyer/AppsFlyerLib;->saveDataToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/appsflyer/AppsFlyerProperties;->setReferrer(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerProperties;->isFirstLaunchCalled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    const-string v5, "onReceive: isLaunchCalled"

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0, p1, v1}, Lcom/appsflyer/AppsFlyerLib;->backgroundReferrerLaunch(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method readServerResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 14
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 2453
    const/4 v6, 0x0

    .line 2454
    .local v6, "reader":Ljava/io/BufferedReader;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2455
    .local v10, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 2457
    .local v2, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    .line 2458
    .local v8, "responseStream":Ljava/io/InputStream;
    if-nez v8, :cond_0

    .line 2459
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 2462
    :cond_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2463
    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v3, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2466
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 2467
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 2469
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v2, v3

    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .line 2470
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "responseStream":Ljava/io/InputStream;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .local v11, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not read connection response from: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2473
    if-eqz v6, :cond_1

    .line 2474
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 2476
    :cond_1
    if-eqz v2, :cond_2

    .line 2477
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 2482
    .end local v11    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2484
    .local v9, "result":Ljava/lang/String;
    :try_start_5
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2492
    .end local v9    # "result":Ljava/lang/String;
    :goto_3
    return-object v9

    .line 2473
    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "responseStream":Ljava/io/InputStream;
    :cond_3
    if-eqz v7, :cond_4

    .line 2474
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 2476
    :cond_4
    if-eqz v3, :cond_5

    .line 2477
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    move-object v2, v3

    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .line 2480
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 2479
    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v12

    move-object v2, v3

    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .line 2481
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 2472
    .end local v5    # "line":Ljava/lang/String;
    .end local v8    # "responseStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v12

    .line 2473
    :goto_4
    if-eqz v6, :cond_6

    .line 2474
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 2476
    :cond_6
    if-eqz v2, :cond_7

    .line 2477
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 2480
    :cond_7
    :goto_5
    throw v12

    .line 2486
    .restart local v9    # "result":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 2487
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2489
    .local v4, "json":Lorg/json/JSONObject;
    :try_start_8
    const-string v12, "response_not_json"

    invoke-virtual {v4, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2490
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    move-result-object v9

    goto :goto_3

    .line 2491
    :catch_3
    move-exception v1

    .line 2492
    .local v1, "e1":Lorg/json/JSONException;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 2479
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "e1":Lorg/json/JSONException;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v9    # "result":Ljava/lang/String;
    :catch_4
    move-exception v13

    goto :goto_5

    .line 2472
    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "responseStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v12

    move-object v2, v3

    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_4

    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v12

    move-object v2, v3

    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 2479
    .end local v8    # "responseStream":Ljava/io/InputStream;
    .restart local v11    # "t":Ljava/lang/Throwable;
    :catch_5
    move-exception v12

    goto :goto_2

    .line 2469
    .end local v11    # "t":Ljava/lang/Throwable;
    :catch_6
    move-exception v11

    goto :goto_1

    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "responseStream":Ljava/io/InputStream;
    :catch_7
    move-exception v11

    move-object v2, v3

    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_1
.end method

.method public registerConversionListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversionDataListener"    # Lcom/appsflyer/AppsFlyerConversionListener;

    .prologue
    .line 887
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "registerConversionListener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 888
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/AppsFlyerLib;->registerConversionListenerInternal(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V

    .line 889
    return-void
.end method

.method public registerValidatorListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "validationListener"    # Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    .prologue
    .line 905
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "registerValidatorListener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 907
    const-string v0, "registerValidatorListener called"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 909
    if-nez p2, :cond_0

    .line 910
    const-string v0, "registerValidatorListener null listener"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 915
    :goto_0
    return-void

    .line 913
    :cond_0
    sput-object p2, Lcom/appsflyer/AppsFlyerLib;->validatorListener:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    goto :goto_0
.end method

.method public reportTrackSession(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 767
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "reportTrackSession"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 769
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/RemoteDebuggingManager;->disableRemoteDebuggingForThisApp()V

    .line 770
    invoke-virtual {p0, p1, v3, v3}, Lcom/appsflyer/AppsFlyerLib;->trackEventInternal(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 771
    return-void
.end method

.method public sendDeepLinkData(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 481
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "sendDeepLinkData"

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activity_intent_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 489
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeepLinkData with activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->registerForAppEvents(Landroid/app/Application;)V

    .line 491
    return-void

    .line 483
    :cond_0
    if-eqz p1, :cond_1

    .line 484
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "sendDeepLinkData"

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "activity_intent_null"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_1
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "sendDeepLinkData"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "activity_null"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendPushNotificationData(Landroid/app/Activity;)V
    .locals 19
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 494
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 495
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v13

    const-string v14, "sendPushNotificationData"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "activity_intent_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 501
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->getPushPayloadFromIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/appsflyer/AppsFlyerLib;->pushPayload:Ljava/lang/String;

    .line 502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/appsflyer/AppsFlyerLib;->pushPayload:Ljava/lang/String;

    if-eqz v13, :cond_2

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 504
    .local v4, "now":J
    move-wide v8, v4

    .line 505
    .local v8, "oldestPayloadTimestamp":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/appsflyer/AppsFlyerLib;->pushPayloadHistory:Ljava/util/Map;

    if-nez v13, :cond_5

    .line 506
    const-string v13, "pushes: initializing pushes history.."

    invoke-static {v13}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 507
    new-instance v13, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v13}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/appsflyer/AppsFlyerLib;->pushPayloadHistory:Ljava/util/Map;

    .line 537
    :cond_0
    :goto_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v13

    const-string v14, "pushPayloadHistorySize"

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Lcom/appsflyer/AppsFlyerProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 538
    .local v7, "pushPayloadHistorySize":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/appsflyer/AppsFlyerLib;->pushPayloadHistory:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    if-ne v13, v7, :cond_1

    .line 539
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pushes: removing oldest overflowing push (oldest push:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/appsflyer/AppsFlyerLib;->pushPayloadHistory:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/appsflyer/AppsFlyerLib;->pushPayloadHistory:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib;->pushPayload:Ljava/lang/String;

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/appsflyer/AppsFlyerLib;->registerForAppEvents(Landroid/app/Application;)V

    .line 548
    .end local v4    # "now":J
    .end local v7    # "pushPayloadHistorySize":I
    .end local v8    # "oldestPayloadTimestamp":J
    :cond_2
    :goto_2
    return-void

    .line 496
    :cond_3
    if-eqz p1, :cond_4

    .line 497
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v13

    const-string v14, "sendPushNotificationData"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "activity_intent_null"

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    :cond_4
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v13

    const-string v14, "sendPushNotificationData"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "activity_null"

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 510
    .restart local v4    # "now":J
    .restart local v8    # "oldestPayloadTimestamp":J
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v13

    const-string v14, "pushPayloadMaxAging"

    const-wide/32 v16, 0x1b7740

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 511
    .local v10, "pushPayloadMaxAging":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/appsflyer/AppsFlyerLib;->pushPayloadHistory:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 513
    .local v2, "age":Ljava/lang/Long;
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/appsflyer/AppsFlyerLib;->pushPayload:Ljava/lang/String;

    invoke-direct {v3, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 514
    .local v3, "newPush":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/appsflyer/AppsFlyerLib;->pushPayloadHistory:Ljava/util/Map;

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v6, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 515
    .local v6, "oldPush":Lorg/json/JSONObject;
    const-string v13, "pid"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    const-string v15, "pid"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 516
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PushNotificationMeasurement: A previous payload with same PID was already acknowledged! (old: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", new: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 517
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/appsflyer/AppsFlyerLib;->pushPayload:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 531
    .end local v2    # "age":Ljava/lang/Long;
    .end local v3    # "newPush":Lorg/json/JSONObject;
    .end local v6    # "oldPush":Lorg/json/JSONObject;
    .end local v10    # "pushPayloadMaxAging":J
    :catch_0
    move-exception v12

    .line 532
    .local v12, "t":Ljava/lang/Throwable;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error while handling push notification measurement: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v12}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 522
    .end local v12    # "t":Ljava/lang/Throwable;
    .restart local v2    # "age":Ljava/lang/Long;
    .restart local v3    # "newPush":Lorg/json/JSONObject;
    .restart local v6    # "oldPush":Lorg/json/JSONObject;
    .restart local v10    # "pushPayloadMaxAging":J
    :cond_7
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v16, v4, v16

    cmp-long v13, v16, v10

    if-lez v13, :cond_8

    .line 523
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/appsflyer/AppsFlyerLib;->pushPayloadHistory:Ljava/util/Map;

    invoke-interface {v13, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v13, v16, v8

    if-gtz v13, :cond_6

    .line 528
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    goto/16 :goto_3
.end method

.method public setAdditionalData(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, "customData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 474
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v1

    const-string v2, "setAdditionalData"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 475
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 476
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->setCustomData(Ljava/lang/String;)V

    .line 478
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method public setAndroidIdData(Ljava/lang/String;)V
    .locals 4
    .param p1, "aAndroidId"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setAndroidIdData"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 374
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib;->userCustomAndroidId:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 648
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setAppId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 649
    const-string v0, "appid"

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method public setAppUserId(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 462
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setAppUserId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public setCollectAndroidID(Z)V
    .locals 5
    .param p1, "isCollect"    # Z

    .prologue
    .line 604
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setCollectAndroidID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 605
    const-string v0, "collectAndroidId"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method public setCollectFingerPrint(Z)V
    .locals 5
    .param p1, "isCollect"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 615
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setCollectFingerPrint"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 616
    const-string v0, "collectFingerPrint"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method public setCollectIMEI(Z)V
    .locals 5
    .param p1, "isCollect"    # Z

    .prologue
    .line 609
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setCollectIMEI"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 610
    const-string v0, "collectIMEI"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 4
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 671
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setCurrencyCode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 672
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "currencyCode"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public setCustomerUserId(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setCustomerUserId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCustomerUserId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 469
    const-string v0, "AppUserId"

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public setDebugLog(Z)V
    .locals 5
    .param p1, "shouldEnable"    # Z

    .prologue
    .line 363
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setDebugLog"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsflyer/AppsFlyerProperties;->enableLogOutput(Z)V

    .line 365
    return-void
.end method

.method protected setDeepLinkData(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 757
    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/appsflyer/AppsFlyerLib;->latestDeepLink:Landroid/net/Uri;

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unity setDeepLinkData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib;->latestDeepLink:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Exception while setting deeplink data (unity). "

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDeviceTrackingDisabled(Z)V
    .locals 5
    .param p1, "isDisabled"    # Z

    .prologue
    .line 864
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setDeviceTrackingDisabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 865
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "deviceTrackingDisabled"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 866
    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 4
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 661
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setExtension"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 662
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "sdkExtension"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method public setGCMProjectID(Ljava/lang/String;)V
    .locals 4
    .param p1, "projectNumber"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 323
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setGCMProjectID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 324
    const-string v0, "Method \'setGCMProjectNumber\' is deprecated. Please follow the documentation."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->enableUninstallTracking(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public setGCMProjectNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "projectNumber"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 345
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setGCMProjectNumber"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 346
    const-string v0, "Method \'setGCMProjectNumber\' is deprecated. Please use \'enableUninstallTracking\'."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0, p2}, Lcom/appsflyer/AppsFlyerLib;->enableUninstallTracking(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public setGCMProjectNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "projectNumber"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 334
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setGCMProjectNumber"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 335
    const-string v0, "Method \'setGCMProjectNumber\' is deprecated. Please follow the documentation."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->enableUninstallTracking(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public setImeiData(Ljava/lang/String;)V
    .locals 4
    .param p1, "aImei"    # Ljava/lang/String;

    .prologue
    .line 368
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setImeiData"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 369
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib;->userCustomImei:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setIsUpdate(Z)V
    .locals 5
    .param p1, "isUpdate"    # Z

    .prologue
    .line 666
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setIsUpdate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 667
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "IS_UPDATE"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 668
    return-void
.end method

.method setProperty(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 437
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;J)V

    .line 438
    return-void
.end method

.method setProperty(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 433
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 434
    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 4
    .param p1, "email"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 556
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setUserEmail"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 557
    const-string v0, "userEmail"

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public varargs setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V
    .locals 10
    .param p1, "cryptMethod"    # Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;
    .param p2, "emails"    # [Ljava/lang/String;

    .prologue
    .line 566
    new-instance v0, Ljava/util/ArrayList;

    array-length v6, p2

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 567
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 569
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v7

    const-string v8, "setUserEmails"

    array-length v6, p2

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 571
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v6

    const-string v7, "userEmailsCryptType"

    invoke-virtual {p1}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->getValue()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;I)V

    .line 572
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 573
    .local v3, "emailData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 574
    .local v1, "cryptKey":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v4, "hashedEmailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v7, p2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, p2, v6

    .line 577
    .local v2, "email":Ljava/lang/String;
    sget-object v8, Lcom/appsflyer/AppsFlyerLib$3;->$SwitchMap$com$appsflyer$AppsFlyerProperties$EmailsCryptType:[I

    invoke-virtual {p1}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 580
    const-string v1, "sha1_el_arr"

    .line 581
    invoke-static {v2}, Lcom/appsflyer/HashUtils;->toSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 584
    :pswitch_0
    const-string v1, "md5_el_arr"

    .line 585
    invoke-static {v2}, Lcom/appsflyer/HashUtils;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 588
    :pswitch_1
    const-string v1, "sha256_el_arr"

    .line 589
    invoke-static {v2}, Lcom/appsflyer/HashUtils;->toSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 592
    :pswitch_2
    const-string v1, "plain_el_arr"

    .line 593
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 598
    .end local v2    # "email":Ljava/lang/String;
    :cond_0
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 600
    .local v5, "jObj":Lorg/json/JSONObject;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v6

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/appsflyer/AppsFlyerProperties;->setUserEmails(Ljava/lang/String;)V

    .line 601
    return-void

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public varargs setUserEmails([Ljava/lang/String;)V
    .locals 2
    .param p1, "emails"    # [Ljava/lang/String;

    .prologue
    .line 561
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "setUserEmails"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 562
    sget-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public startTracking(Landroid/app/Application;Ljava/lang/String;)V
    .locals 4
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 621
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "startTracking"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 622
    const-string v0, "Build Number: 314"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLogM(Ljava/lang/String;)V

    .line 623
    const-string v0, "AppsFlyerKey"

    invoke-direct {p0, v0, p2}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-static {p2}, Lcom/appsflyer/LogMessages;->setDevKey(Ljava/lang/String;)V

    .line 625
    invoke-direct {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->registerForAppEvents(Landroid/app/Application;)V

    .line 626
    return-void
.end method

.method public trackAppLaunch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "devKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 751
    const-string v5, ""

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib;->runInBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 752
    return-void
.end method

.method public trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 774
    .local p3, "eventValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONObject;

    if-nez p3, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 775
    .local v0, "eventValuesJSON":Lorg/json/JSONObject;
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v1

    const-string v2, "trackEvent"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerLib;->trackEventInternal(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 777
    return-void

    .end local v0    # "eventValuesJSON":Lorg/json/JSONObject;
    :cond_0
    move-object v1, p3

    .line 774
    goto :goto_0
.end method

.method trackEventInternal(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 780
    .local p3, "eventValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v7, Lorg/json/JSONObject;

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/HashMap;

    .end local p3    # "eventValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-direct {v7, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 781
    .local v7, "eventValuesJSON":Lorg/json/JSONObject;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 782
    .local v8, "referrer":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v8, :cond_1

    const-string v5, ""

    :goto_0
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib;->runInBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 783
    return-void

    :cond_1
    move-object v5, v8

    .line 782
    goto :goto_0
.end method

.method public trackLocation(Landroid/content/Context;DD)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D

    .prologue
    .line 676
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v1

    const-string v2, "trackLocation"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 677
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 678
    .local v0, "location":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "af_long"

    invoke-static {p4, p5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const-string v1, "af_lat"

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v1, "af_location_coordinates"

    invoke-virtual {p0, p1, v1, v0}, Lcom/appsflyer/AppsFlyerLib;->trackEventInternal(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 682
    return-void
.end method

.method public unregisterConversionListener()V
    .locals 3

    .prologue
    .line 900
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v0

    const-string v1, "unregisterConversionListener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 901
    const/4 v0, 0x0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    .line 902
    return-void
.end method

.method public updateServerUninstallToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 356
    if-eqz p2, :cond_0

    .line 357
    new-instance v0, Lcom/appsflyer/AFUninstallToken;

    invoke-direct {v0, p2}, Lcom/appsflyer/AFUninstallToken;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, "afToken":Lcom/appsflyer/AFUninstallToken;
    invoke-static {p1, v0}, Lcom/appsflyer/UninstallUtils;->updateServerUninstallToken(Landroid/content/Context;Lcom/appsflyer/AFUninstallToken;)V

    .line 360
    .end local v0    # "afToken":Lcom/appsflyer/AFUninstallToken;
    :cond_0
    return-void
.end method

.method public validateAndTrackInAppPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publicKey"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "purchaseData"    # Ljava/lang/String;
    .param p5, "price"    # Ljava/lang/String;
    .param p6, "currency"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2217
    .local p7, "additionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v3

    const-string v4, "validateAndTrackInAppPurchase"

    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v5, v2

    const/4 v2, 0x1

    aput-object p3, v5, v2

    const/4 v2, 0x2

    aput-object p4, v5, v2

    const/4 v2, 0x3

    aput-object p5, v5, v2

    const/4 v2, 0x4

    aput-object p6, v5, v2

    const/4 v6, 0x5

    if-nez p7, :cond_2

    const-string v2, ""

    :goto_0
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/appsflyer/RemoteDebuggingManager;->addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Validate in app called with parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 2219
    if-eqz p2, :cond_0

    if-eqz p5, :cond_0

    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    if-nez p4, :cond_3

    .line 2220
    :cond_0
    sget-object v2, Lcom/appsflyer/AppsFlyerLib;->validatorListener:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v2, :cond_1

    .line 2221
    sget-object v2, Lcom/appsflyer/AppsFlyerLib;->validatorListener:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    const-string v3, "Please provide purchase parameters"

    invoke-interface {v2, v3}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInAppFailure(Ljava/lang/String;)V

    .line 2228
    :cond_1
    :goto_1
    return-void

    .line 2217
    :cond_2
    invoke-virtual/range {p7 .. p7}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2225
    :cond_3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v11

    .line 2226
    .local v11, "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v2, Lcom/appsflyer/AFValidateInAppPurchase;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "AppsFlyerKey"

    invoke-direct {p0, v4}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v11}, Lcom/appsflyer/AFValidateInAppPurchase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/concurrent/ScheduledExecutorService;)V

    const-wide/16 v4, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v11, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1
.end method
