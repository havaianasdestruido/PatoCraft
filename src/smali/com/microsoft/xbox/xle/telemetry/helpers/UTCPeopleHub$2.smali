.class final Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$2;
.super Ljava/lang/Object;
.source "UTCPeopleHub.java"

# interfaces
.implements Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->trackMute(Ljava/lang/CharSequence;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field final synthetic val$targetXUID:Ljava/lang/String;

.field final synthetic val$toBeMuted:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$2;->val$targetXUID:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$2;->val$toBeMuted:Z

    iput-object p3, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$2;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$2;->val$targetXUID:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->access$200(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v0

    .line 48
    .local v0, "additionalInfo":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v1, "isMuted"

    iget-boolean v2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$2;->val$toBeMuted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    const-string v1, "People Hub - Mute"

    iget-object v2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub$2;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    .line 51
    return-void
.end method
