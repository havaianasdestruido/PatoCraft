.class final Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;
.super Ljava/lang/Object;
.source "UTCChangeRelationship.java"

# interfaces
.implements Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipAction(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field final synthetic val$isFollowing:Z

.field final synthetic val$isFromFacebook:Z

.field final synthetic val$targetXUID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/CharSequence;Z)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$targetXUID:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$isFollowing:Z

    iput-object p3, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$activityTitle:Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$isFromFacebook:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 7

    .prologue
    .line 117
    iget-object v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$targetXUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->access$200(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v6

    .line 118
    .local v6, "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v1, "relationship"

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$isFollowing:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->EXISTINGFRIEND:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->getValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    const-string v0, "Change Relationship - Action"

    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v6}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    .line 122
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$isFromFacebook:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$activityTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$2;->val$targetXUID:Ljava/lang/String;

    sget-object v2, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->ADDFRIEND:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    sget-object v3, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->SHARINGON:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    sget-object v4, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->NOTFAVORITED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    sget-object v5, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;->FACEBOOK:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    invoke-static/range {v0 .. v5}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipDone(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;)V

    .line 133
    :cond_0
    return-void

    .line 118
    :cond_1
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->ADDFRIEND:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->getValue()I

    move-result v0

    goto :goto_0
.end method
