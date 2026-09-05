.class final Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$4;
.super Ljava/lang/Object;
.source "UTCPeopleHub.java"

# interfaces
.implements Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->trackBlock(Ljava/lang/CharSequence;Ljava/lang/String;)V
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
    .line 75
    iput-object p1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$4;->val$activityTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$4;->val$targetXUID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 78
    const-string v0, "People Hub - Block"

    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$4;->val$activityTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$4;->val$targetXUID:Ljava/lang/String;

    invoke-static {v2}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->access$200(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    .line 79
    return-void
.end method
