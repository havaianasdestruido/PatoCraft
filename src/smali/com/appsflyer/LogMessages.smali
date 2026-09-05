.class Lcom/appsflyer/LogMessages;
.super Ljava/lang/Object;
.source "LogMessages.java"


# static fields
.field public static final DEV_KEY_MISSING:Ljava/lang/String; = "AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.getInstance().setAppsFlyerKey(...) to set it. "

.field static final ERROR_PREFIX:Ljava/lang/String; = "ERROR: "

.field public static final EVENT_CREATED_WITH_NAME:Ljava/lang/String; = "******* sendTrackingWithEvent: "

.field public static final EVENT_DATA:Ljava/lang/String; = "data: "

.field public static final GCM_PERMISSION_MISSING_WARNING:Ljava/lang/String; = "Cannot verify existence of the app\'s \"permission.C2D_MESSAGE\" permission in the manifest. Please refer to documentation."

.field public static final GCM_RECEIVER_MISSING_WARNING:Ljava/lang/String; = "Cannot verify existence of GcmReceiver receiver in the manifest. Please refer to documentation."

.field public static final LOG_TAG_PREFIX:Ljava/lang/String; = "AppsFlyer_"

.field public static final PERMISSION_ACCESS_NETWORK_MISSING:Ljava/lang/String; = "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml"

.field public static final PERMISSION_ACCESS_WIFI_MISSING:Ljava/lang/String; = "Permission android.permission.ACCESS_WIFI_STATE is missing in the AndroidManifest.xml"

.field public static final PERMISSION_INTERNET_MISSING:Ljava/lang/String; = "Permission android.permission.INTERNET is missing in the AndroidManifest.xml"

.field public static final PLAY_STORE_REFERRER_RECIEVED:Ljava/lang/String; = "Play store referrer: "

.field public static final SERVER_CALL_FAILRED:Ljava/lang/String; = "failed to send requeset to server. "

.field public static final SERVER_RESPONSE_CODE:Ljava/lang/String; = "response code: "

.field public static final START_LOG_MESSAGE:Ljava/lang/String; = "Start tracking package: "

.field public static final UNINSTALL_INSTANCE_ID_MISSING_WARNING:Ljava/lang/String; = "Cannot verify existence of our InstanceID Listener Service in the manifest. Please refer to documentation."

.field static final WARNING_PREFIX:Ljava/lang/String; = "WARNING: "

.field private static devKey:Ljava/lang/String;

.field private static replacedKey:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logMessageMaskKey(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-object v0, Lcom/appsflyer/LogMessages;->devKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 50
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "AppsFlyerKey"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/LogMessages;->setDevKey(Ljava/lang/String;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    sget-object v0, Lcom/appsflyer/LogMessages;->devKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appsflyer/LogMessages;->devKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/appsflyer/LogMessages;->devKey:Ljava/lang/String;

    sget-object v1, Lcom/appsflyer/LogMessages;->replacedKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDevKey(Ljava/lang/String;)V
    .locals 3
    .param p0, "aDevKey"    # Ljava/lang/String;

    .prologue
    .line 32
    sput-object p0, Lcom/appsflyer/LogMessages;->devKey:Ljava/lang/String;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 37
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    .line 38
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/appsflyer/LogMessages;->replacedKey:Ljava/lang/String;

    .line 45
    return-void
.end method
