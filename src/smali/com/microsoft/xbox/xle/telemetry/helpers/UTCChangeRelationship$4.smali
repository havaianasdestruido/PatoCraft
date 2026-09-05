.class final Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;
.super Ljava/lang/Object;
.source "UTCChangeRelationship.java"

# interfaces
.implements Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipDone(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field final synthetic val$favoriteStatus:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

.field final synthetic val$gamerType:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

.field final synthetic val$realNameStatus:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field final synthetic val$relationship:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

.field final synthetic val$targetXUID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$targetXUID:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$relationship:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    iput-object p3, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$favoriteStatus:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    iput-object p4, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$realNameStatus:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    iput-object p5, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$gamerType:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    iput-object p6, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$targetXUID:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->access$200(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v0

    .line 176
    .local v0, "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v1, "relationship"

    iget-object v2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$relationship:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    const-string v1, "favorite"

    iget-object v2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$favoriteStatus:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-string v1, "realname"

    iget-object v2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$realNameStatus:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    const-string v1, "gamertype"

    iget-object v2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$gamerType:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    const-string v1, "Change Relationship - Done"

    iget-object v2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$4;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    .line 182
    return-void
.end method
