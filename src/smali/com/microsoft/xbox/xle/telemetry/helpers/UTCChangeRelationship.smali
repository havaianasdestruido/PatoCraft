.class public Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;
.super Ljava/lang/Object;
.source "UTCChangeRelationship.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;,
        Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;,
        Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;,
        Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;
    }
.end annotation


# static fields
.field private static currentActivityTitle:Ljava/lang/CharSequence;

.field private static currentXUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, ""

    sput-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    .line 12
    const-string v0, ""

    sput-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

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
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 9
    sput-object p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 9
    sput-object p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-static {p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->getBaseInfoModel(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v0

    return-object v0
.end method

.method private static getBaseInfoModel(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    .locals 4
    .param p0, "targetXUID"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    .line 92
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

    .line 93
    return-object v0
.end method

.method public static trackChangeRelationshipAction(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "targetXUID"    # Ljava/lang/String;
    .param p2, "isFollowing"    # Z
    .param p3, "isFromFacebook"    # Z

    .prologue
    .line 114
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;-><init>(Ljava/lang/String;ZLjava/lang/CharSequence;Z)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 135
    return-void
.end method

.method public static trackChangeRelationshipAction(ZZ)V
    .locals 2
    .param p0, "isFollowing"    # Z
    .param p1, "isFromFacebook"    # Z

    .prologue
    .line 109
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->verifyTrackedDefaults()V

    .line 110
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipAction(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 111
    return-void
.end method

.method public static trackChangeRelationshipDone(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;)V
    .locals 6
    .param p0, "relationship"    # Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;
    .param p1, "realNameStatus"    # Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;
    .param p2, "favoriteStatus"    # Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;
    .param p3, "gamerType"    # Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    .prologue
    .line 160
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->verifyTrackedDefaults()V

    .line 161
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipDone(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;)V

    .line 162
    return-void
.end method

.method public static trackChangeRelationshipDone(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;)V
    .locals 7
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "targetXUID"    # Ljava/lang/String;
    .param p2, "relationship"    # Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;
    .param p3, "realNameStatus"    # Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;
    .param p4, "favoriteStatus"    # Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;
    .param p5, "gamerType"    # Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    .prologue
    .line 172
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;-><init>(Ljava/lang/String;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 184
    return-void
.end method

.method public static trackChangeRelationshipRemoveFriend()V
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->verifyTrackedDefaults()V

    .line 139
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipRemoveFriend(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static trackChangeRelationshipRemoveFriend(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "targetXUID"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$3;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$3;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 152
    return-void
.end method

.method public static trackChangeRelationshipView(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "targetXUID"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$1;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$1;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 106
    return-void
.end method

.method private static verifyTrackedDefaults()V
    .locals 3

    .prologue
    .line 86
    const-string v0, "Called trackPeopleHubView without set currentXUID"

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 87
    const-string v0, "Called trackPeopleHubView without set activityTitle"

    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 88
    return-void
.end method
