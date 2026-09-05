.class public Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;
.super Ljava/lang/Object;
.source "UTCPeopleHub.java"


# static fields
.field private static currentActivityTitle:Ljava/lang/CharSequence;

.field private static currentXUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, ""

    sput-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    .line 12
    const-string v0, ""

    sput-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 9
    sput-object p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 9
    sput-object p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-static {p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->getBaseInfoModel(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v0

    return-object v0
.end method

.method private static getBaseInfoModel(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    .locals 4
    .param p0, "targetXUID"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    .line 21
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

    .line 22
    return-object v0
.end method

.method public static trackBlock()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->verifyTrackedDefaults()V

    .line 71
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->trackBlock(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static trackBlock(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "targetXUID"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$4;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$4;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 81
    return-void
.end method

.method public static trackBlockDialogComplete()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->verifyTrackedDefaults()V

    .line 85
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->trackBlockDialogComplete(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static trackBlockDialogComplete(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "targetXUID"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$5;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$5;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 95
    return-void
.end method

.method public static trackMute(Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "targetXUID"    # Ljava/lang/String;
    .param p2, "toBeMuted"    # Z

    .prologue
    .line 44
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$2;-><init>(Ljava/lang/String;ZLjava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 53
    return-void
.end method

.method public static trackMute(Z)V
    .locals 2
    .param p0, "toBeMuted"    # Z

    .prologue
    .line 39
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->verifyTrackedDefaults()V

    .line 40
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->trackMute(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 41
    return-void
.end method

.method public static trackPeopleHubView(Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "targetXUID"    # Ljava/lang/String;
    .param p2, "isMeView"    # Z

    .prologue
    .line 26
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$1;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 36
    return-void
.end method

.method public static trackReport()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->verifyTrackedDefaults()V

    .line 99
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->trackReport(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static trackReport(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "targetXUID"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$6;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$6;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 109
    return-void
.end method

.method public static trackUnblock()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->verifyTrackedDefaults()V

    .line 57
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->trackUnblock(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static trackUnblock(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "targetXUID"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$3;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$3;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 67
    return-void
.end method

.method public static trackViewInXboxApp()V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->verifyTrackedDefaults()V

    .line 113
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->trackViewInXboxApp(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static trackViewInXboxApp(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "targetXUID"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$7;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$7;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 123
    return-void
.end method

.method public static trackViewInXboxAppDialogComplete()V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->verifyTrackedDefaults()V

    .line 127
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->trackViewInXboxAppDialogComplete(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static trackViewInXboxAppDialogComplete(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "targetXUID"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$8;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$8;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 137
    return-void
.end method

.method private static verifyTrackedDefaults()V
    .locals 3

    .prologue
    .line 15
    const-string v0, "Called trackPeopleHubView without set currentXUID"

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentXUID:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 16
    const-string v0, "Called trackPeopleHubView without set activityTitle"

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->currentActivityTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 17
    return-void
.end method
