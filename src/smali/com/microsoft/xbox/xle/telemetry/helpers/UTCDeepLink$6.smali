.class final Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$6;
.super Ljava/lang/Object;
.source "UTCDeepLink.java"

# interfaces
.implements Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->trackFriendSuggestionsLink(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$6;->val$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$6;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$6;->val$packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->access$000(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    move-result-object v0

    .line 94
    .local v0, "additionalInfoModel":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v1, "DeepLink - Friend Suggestions"

    iget-object v2, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink$6;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    .line 95
    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->getAdditionalInfo()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "deepLinkId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
