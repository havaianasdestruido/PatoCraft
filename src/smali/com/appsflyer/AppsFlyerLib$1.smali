.class Lcom/appsflyer/AppsFlyerLib$1;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"

# interfaces
.implements Lcom/appsflyer/Foreground$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/AppsFlyerLib;->registerForAppEvents(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;


# direct methods
.method constructor <init>(Lcom/appsflyer/AppsFlyerLib;)V
    .locals 0
    .param p1, "this$0"    # Lcom/appsflyer/AppsFlyerLib;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$1;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBecameBackground(Ljava/lang/ref/WeakReference;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "currentActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    const-string v4, "onBecameBackground"

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/appsflyer/AppsFlyerLib;->access$102(J)J

    .line 291
    const-string v4, "callStatsBackground background call"

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 292
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 293
    .local v3, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$1;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v4, v3}, Lcom/appsflyer/AppsFlyerLib;->access$200(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/ref/WeakReference;)V

    .line 294
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v2

    .line 295
    .local v2, "rdInstance":Lcom/appsflyer/RemoteDebuggingManager;
    invoke-virtual {v2}, Lcom/appsflyer/RemoteDebuggingManager;->isRemoteDebuggingEnabledFromServer()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 296
    invoke-virtual {v2}, Lcom/appsflyer/RemoteDebuggingManager;->stopRemoteDebuggingMode()V

    .line 297
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 298
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 300
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v0}, Lcom/appsflyer/RemoteDebuggingManager;->sendRemoteDebuggingData(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 302
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lcom/appsflyer/RemoteDebuggingManager;->releaseRemoteDebugging()V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_1
    const-string v4, "RD status is OFF"

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBecameForeground(Landroid/app/Activity;)V
    .locals 3
    .param p1, "currentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 283
    const-string v0, "onBecameForeground"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->access$002(J)J

    .line 285
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$1;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-virtual {v0, p1, v2, v2}, Lcom/appsflyer/AppsFlyerLib;->trackEventInternal(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 286
    return-void
.end method
