.class public Lcom/appsflyer/GcmInstanceIdListener;
.super Lcom/google/android/gms/iid/InstanceIDListenerService;
.source "GcmInstanceIdListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 11

    .prologue
    .line 16
    invoke-super {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->onTokenRefresh()V

    .line 18
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v8

    const-string v9, "gcmProjectNumber"

    invoke-virtual {v8, v9}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "gcmProjectNumber":Ljava/lang/String;
    const/4 v3, 0x0

    .line 20
    .local v3, "refreshedToken":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 23
    .local v6, "tokenTimestamp":J
    :try_start_0
    invoke-virtual {p0}, Lcom/appsflyer/GcmInstanceIdListener;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v8

    const-string v9, "GCM"

    const/4 v10, 0x0

    invoke-virtual {v8, v1, v9, v10}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 28
    :goto_0
    if-eqz v3, :cond_0

    .line 29
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GCM Refreshed Token = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v8

    const-string v9, "afUninstallToken"

    invoke-virtual {v8, v9}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 31
    .local v5, "tokenString":Ljava/lang/String;
    invoke-static {v5}, Lcom/appsflyer/AFUninstallToken;->parse(Ljava/lang/String;)Lcom/appsflyer/AFUninstallToken;

    move-result-object v0

    .line 32
    .local v0, "existingAFUninstallToken":Lcom/appsflyer/AFUninstallToken;
    new-instance v2, Lcom/appsflyer/AFUninstallToken;

    invoke-direct {v2, v6, v7, v3}, Lcom/appsflyer/AFUninstallToken;-><init>(JLjava/lang/String;)V

    .line 33
    .local v2, "newGcmToken":Lcom/appsflyer/AFUninstallToken;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/appsflyer/AFUninstallToken;->testAndUpdate(Lcom/appsflyer/AFUninstallToken;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/appsflyer/GcmInstanceIdListener;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/appsflyer/UninstallUtils;->updateServerUninstallToken(Landroid/content/Context;Lcom/appsflyer/AFUninstallToken;)V

    .line 37
    .end local v0    # "existingAFUninstallToken":Lcom/appsflyer/AFUninstallToken;
    .end local v2    # "newGcmToken":Lcom/appsflyer/AFUninstallToken;
    .end local v5    # "tokenString":Ljava/lang/String;
    :cond_0
    return-void

    .line 24
    :catch_0
    move-exception v4

    .line 25
    .local v4, "t":Ljava/lang/Throwable;
    const-string v8, "Error registering for uninstall tracking"

    invoke-static {v8, v4}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
