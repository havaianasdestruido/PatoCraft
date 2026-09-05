.class public Lcom/microsoft/xbox/idp/telemetry/helpers/UTCIntroducing;
.super Ljava/lang/Object;
.source "UTCIntroducing.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackDone(Lcom/microsoft/xbox/idp/model/Profile$User;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "user"    # Lcom/microsoft/xbox/idp/model/Profile$User;
    .param p1, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 23
    if-eqz p0, :cond_0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/model/Profile$User;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    .line 27
    :cond_0
    const-string v1, "Introducing - Done"

    invoke-static {v1, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UTCIntroducing.trackDone"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackPageView(Lcom/microsoft/xbox/idp/model/Profile$User;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "user"    # Lcom/microsoft/xbox/idp/model/Profile$User;
    .param p1, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 43
    if-eqz p0, :cond_0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/model/Profile$User;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    .line 47
    :cond_0
    const-string v1, "Introducing view"

    invoke-static {v1, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UTCIntroducing.trackPageView"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
