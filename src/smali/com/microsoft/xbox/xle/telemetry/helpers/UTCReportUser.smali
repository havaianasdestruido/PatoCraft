.class public Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser;
.super Ljava/lang/Object;
.source "UTCReportUser.java"


# static fields
.field private static currentActivityTitle:Ljava/lang/CharSequence;

.field private static currentXUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, ""

    sput-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser;->currentXUID:Ljava/lang/String;

    .line 11
    const-string v0, ""

    sput-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser;->currentActivityTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser;->currentActivityTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 9
    sput-object p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser;->currentActivityTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 9
    sput-object p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser;->currentXUID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-static {p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser;->getBaseInfoModel(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v0

    return-object v0
.end method

.method private static getBaseInfoModel(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    .locals 4
    .param p0, "targetXUID"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    .line 20
    .local v0, "additionalInfoModel":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v1, "targetXUID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    return-object v0
.end method

.method public static trackReportDialogOK(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "targetXUID"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 49
    return-void
.end method

.method public static trackReportDialogOK(Ljava/lang/String;)V
    .locals 2
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser;->verifyTrackedDefaults()V

    .line 37
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser;->trackReportDialogOK(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static trackReportView(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "targetXUID"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser$1;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser$1;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 33
    return-void
.end method

.method private static verifyTrackedDefaults()V
    .locals 3

    .prologue
    .line 14
    const-string v0, "Called trackPeopleHubView without set currentXUID"

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser;->currentXUID:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 15
    const-string v0, "Called trackPeopleHubView without set activityTitle"

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser;->currentActivityTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 16
    return-void
.end method
