.class final Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$1;
.super Ljava/lang/Object;
.source "UTCDeepLink.java"

# interfaces
.implements Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->trackUserProfileLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$targetXuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$1;->val$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$1;->val$targetXuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$1;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/String;
    .locals 4

    .prologue
    .line 35
    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$1;->val$packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->access$000(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v0

    .line 36
    .local v0, "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v1, "targetXUID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$1;->val$targetXuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    const-string v1, "DeepLink - User Profile"

    iget-object v2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$1;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    .line 38
    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->getAdditionalInfo()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "deepLinkId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
