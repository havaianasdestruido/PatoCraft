.class final Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$1;
.super Ljava/lang/Object;
.source "UTCChangeRelationship.java"

# interfaces
.implements Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipView(Ljava/lang/CharSequence;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field final synthetic val$targetXUID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$1;->val$activityTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$1;->val$targetXUID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$1;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->access$002(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 102
    iget-object v0, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$1;->val$targetXUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    const-string v0, "Change Relationship - Change Relationship View"

    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->access$000()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->access$200(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    .line 104
    return-void
.end method
