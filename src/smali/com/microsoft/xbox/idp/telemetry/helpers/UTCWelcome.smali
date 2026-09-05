.class public Lcom/microsoft/xbox/idp/telemetry/helpers/UTCWelcome;
.super Ljava/lang/Object;
.source "UTCWelcome.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackChangeUser(Lcom/microsoft/xbox/idp/model/Profile$User;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "user"    # Lcom/microsoft/xbox/idp/model/Profile$User;
    .param p1, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 39
    if-eqz p0, :cond_0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/model/Profile$User;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    .line 43
    :cond_0
    const-string v1, "Welcome - Change user"

    invoke-static {v1, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackDone(Lcom/microsoft/xbox/idp/model/Profile$User;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "user"    # Lcom/microsoft/xbox/idp/model/Profile$User;
    .param p1, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 22
    if-eqz p0, :cond_0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/model/Profile$User;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    .line 26
    :cond_0
    const-string v1, "Welcome - Done"

    invoke-static {v1, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
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
    .line 56
    if-eqz p0, :cond_0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/model/Profile$User;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    .line 60
    :cond_0
    const-string v1, "Welcome view"

    invoke-static {v1, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
