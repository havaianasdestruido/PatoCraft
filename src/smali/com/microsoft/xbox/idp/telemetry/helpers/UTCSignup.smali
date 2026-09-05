.class public Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignup;
.super Ljava/lang/Object;
.source "UTCSignup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackClaimGamerTag(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "result"    # Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;
    .param p1, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 59
    if-eqz p0, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    .line 63
    :cond_0
    const-string v1, "Signup - Claim gamertag"

    invoke-static {v1, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackClearGamerTag(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "result"    # Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;
    .param p1, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 76
    if-eqz p0, :cond_0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    .line 80
    :cond_0
    const-string v1, "Signup - Clear gamertag text"

    invoke-static {v1, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackPageView(Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 92
    :try_start_0
    const-string v1, "Sign up view"

    invoke-static {v1, p0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackSearchGamerTag(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "result"    # Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;
    .param p1, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 23
    if-eqz p0, :cond_0

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    .line 27
    :cond_0
    const-string v1, "Signup - Search for gamertag"

    invoke-static {v1, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackSignInWithDifferentUser(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "result"    # Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;
    .param p1, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 41
    if-eqz p0, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    .line 45
    :cond_0
    const-string v1, "Signup - Signin with different user"

    invoke-static {v1, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
