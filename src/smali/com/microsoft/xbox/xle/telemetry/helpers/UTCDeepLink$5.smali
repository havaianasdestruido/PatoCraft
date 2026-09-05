.class final Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$5;
.super Ljava/lang/Object;
.source "UTCDeepLink.java"

# interfaces
.implements Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->trackUserSendToStore(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field final synthetic val$intendedAction:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$5;->val$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$5;->val$intendedAction:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$5;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$5;->val$packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->access$000(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v0

    .line 83
    .local v0, "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v1, "intendedAction"

    iget-object v2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$5;->val$intendedAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string v1, "DeepLink - Store Redirect"

    iget-object v2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$5;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    .line 85
    return-void
.end method
