.class public Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;
.super Ljava/lang/Object;
.source "UTCDeepLink.java"


# static fields
.field public static final CALLING_APP_KEY:Ljava/lang/String; = "deepLinkCaller"

.field public static final DEEPLINK_KEY_NAME:Ljava/lang/String; = "deepLinkId"

.field public static final INTENDED_ACTION_KEY:Ljava/lang/String; = "intendedAction"

.field public static final TARGET_TITLE_KEY:Ljava/lang/String; = "targetTitleId"

.field public static final TARGET_XUID_KEY:Ljava/lang/String; = "targetXUID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-static {p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->getBaseModelInfo(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v0

    return-object v0
.end method

.method private static generateCorrelationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(I)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object v0

    .line 20
    .local v0, "commonData":Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;
    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;->getAppSessionId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getBaseModelInfo(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    .line 25
    .local v0, "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v1, "deepLinkId"

    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->generateCorrelationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    const-string v1, "deepLinkCaller"

    invoke-virtual {v0, v1, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    return-object v0
.end method

.method public static trackFriendSuggestionsLink(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$6;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$6;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trackGameHubAchievementsLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "titleId"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$3;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trackGameHubLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "titleId"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trackUserProfileLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetXuid"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trackUserSendToStore(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intendedAction"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$5;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 87
    return-void
.end method

.method public static trackUserSettingsLink(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$4;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$4;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
