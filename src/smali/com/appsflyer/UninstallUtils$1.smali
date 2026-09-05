.class final Lcom/appsflyer/UninstallUtils$1;
.super Landroid/os/AsyncTask;
.source "UninstallUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/UninstallUtils;->registerDeviceForUninstalls(Ljava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/appsflyer/AFUninstallToken;",
        ">;"
    }
.end annotation


# instance fields
.field gcmProjectNumber:Ljava/lang/String;

.field final synthetic val$weakContext:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/appsflyer/UninstallUtils$1;->val$weakContext:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/appsflyer/AFUninstallToken;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, "uninstallToken":Lcom/appsflyer/AFUninstallToken;
    :try_start_0
    iget-object v2, p0, Lcom/appsflyer/UninstallUtils$1;->gcmProjectNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/appsflyer/UninstallUtils$1;->val$weakContext:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/appsflyer/UninstallUtils$1;->gcmProjectNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/appsflyer/UninstallUtils;->access$000(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Lcom/appsflyer/AFUninstallToken;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 115
    .end local v1    # "uninstallToken":Lcom/appsflyer/AFUninstallToken;
    :cond_0
    :goto_0
    return-object v1

    .line 112
    .restart local v1    # "uninstallToken":Lcom/appsflyer/AFUninstallToken;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "Error registering for uninstall feature"

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appsflyer/UninstallUtils$1;->doInBackground([Ljava/lang/Void;)Lcom/appsflyer/AFUninstallToken;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/appsflyer/AFUninstallToken;)V
    .locals 5
    .param p1, "newAFUninstallToken"    # Lcom/appsflyer/AFUninstallToken;

    .prologue
    .line 120
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/appsflyer/AFUninstallToken;->getToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 122
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    const-string v4, "afUninstallToken"

    invoke-virtual {v3, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "tokenObjectString":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 124
    iget-object v3, p0, Lcom/appsflyer/UninstallUtils$1;->val$weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/appsflyer/UninstallUtils;->updateServerUninstallToken(Landroid/content/Context;Lcom/appsflyer/AFUninstallToken;)V

    .line 136
    .end local v2    # "tokenObjectString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v2    # "tokenObjectString":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Lcom/appsflyer/AFUninstallToken;->parse(Ljava/lang/String;)Lcom/appsflyer/AFUninstallToken;

    move-result-object v0

    .line 128
    .local v0, "existingAFUninstallToken":Lcom/appsflyer/AFUninstallToken;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Lcom/appsflyer/AFUninstallToken;->testAndUpdate(Lcom/appsflyer/AFUninstallToken;)Z

    move-result v1

    .line 130
    .local v1, "shouldUpdateServerWithNewToken":Z
    if-eqz v1, :cond_0

    .line 131
    iget-object v3, p0, Lcom/appsflyer/UninstallUtils$1;->val$weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/appsflyer/UninstallUtils;->updateServerUninstallToken(Landroid/content/Context;Lcom/appsflyer/AFUninstallToken;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    check-cast p1, Lcom/appsflyer/AFUninstallToken;

    invoke-virtual {p0, p1}, Lcom/appsflyer/UninstallUtils$1;->onPostExecute(Lcom/appsflyer/AFUninstallToken;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 101
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "gcmProjectNumber"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/UninstallUtils$1;->gcmProjectNumber:Ljava/lang/String;

    .line 102
    return-void
.end method
