.class public Lcom/appsflyer/FirebaseInstanceIdListener;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "FirebaseInstanceIdListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 9

    .prologue
    .line 15
    invoke-super {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->onTokenRefresh()V

    .line 17
    const/4 v2, 0x0

    .line 18
    .local v2, "refreshedToken":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 21
    .local v6, "tokenTimestamp":J
    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 26
    :goto_0
    if-eqz v2, :cond_0

    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Firebase Refreshed Token = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    const-string v8, "afUninstallToken"

    invoke-virtual {v5, v8}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, "tokenString":Ljava/lang/String;
    invoke-static {v4}, Lcom/appsflyer/AFUninstallToken;->parse(Ljava/lang/String;)Lcom/appsflyer/AFUninstallToken;

    move-result-object v0

    .line 30
    .local v0, "existingAFUninstallToken":Lcom/appsflyer/AFUninstallToken;
    new-instance v1, Lcom/appsflyer/AFUninstallToken;

    invoke-direct {v1, v6, v7, v2}, Lcom/appsflyer/AFUninstallToken;-><init>(JLjava/lang/String;)V

    .line 31
    .local v1, "newFirebaseToken":Lcom/appsflyer/AFUninstallToken;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/appsflyer/AFUninstallToken;->testAndUpdate(Lcom/appsflyer/AFUninstallToken;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/appsflyer/FirebaseInstanceIdListener;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/appsflyer/UninstallUtils;->updateServerUninstallToken(Landroid/content/Context;Lcom/appsflyer/AFUninstallToken;)V

    .line 35
    .end local v0    # "existingAFUninstallToken":Lcom/appsflyer/AFUninstallToken;
    .end local v1    # "newFirebaseToken":Lcom/appsflyer/AFUninstallToken;
    .end local v4    # "tokenString":Ljava/lang/String;
    :cond_0
    return-void

    .line 22
    :catch_0
    move-exception v3

    .line 23
    .local v3, "t":Ljava/lang/Throwable;
    const-string v5, "Error registering for uninstall tracking"

    invoke-static {v5, v3}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
