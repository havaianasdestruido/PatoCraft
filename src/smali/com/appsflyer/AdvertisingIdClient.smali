.class final Lcom/appsflyer/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/AdvertisingIdClient$AdvertisingInterface;,
        Lcom/appsflyer/AdvertisingIdClient$AdvertisingConnection;,
        Lcom/appsflyer/AdvertisingIdClient$AdInfo;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/appsflyer/AdvertisingIdClient$AdInfo;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    if-ne v7, v8, :cond_0

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Cannot be called from the main thread"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 45
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 46
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string v7, "com.android.vending"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    new-instance v2, Lcom/appsflyer/AdvertisingIdClient$AdvertisingConnection;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/appsflyer/AdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/appsflyer/AdvertisingIdClient$1;)V

    .line 52
    .local v2, "connection":Lcom/appsflyer/AdvertisingIdClient$AdvertisingConnection;
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "com.google.android.gms"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {p0, v5, v2, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 56
    new-instance v1, Lcom/appsflyer/AdvertisingIdClient$AdvertisingInterface;

    invoke-virtual {v2}, Lcom/appsflyer/AdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/appsflyer/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 57
    .local v1, "adInterface":Lcom/appsflyer/AdvertisingIdClient$AdvertisingInterface;
    new-instance v0, Lcom/appsflyer/AdvertisingIdClient$AdInfo;

    invoke-virtual {v1}, Lcom/appsflyer/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/appsflyer/AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v8

    invoke-direct {v0, v7, v8}, Lcom/appsflyer/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .local v0, "adInfo":Lcom/appsflyer/AdvertisingIdClient$AdInfo;
    if-eqz p0, :cond_1

    .line 64
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 58
    :cond_1
    return-object v0

    .line 47
    .end local v0    # "adInfo":Lcom/appsflyer/AdvertisingIdClient$AdInfo;
    .end local v1    # "adInterface":Lcom/appsflyer/AdvertisingIdClient$AdvertisingInterface;
    .end local v2    # "connection":Lcom/appsflyer/AdvertisingIdClient$AdvertisingConnection;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 48
    .local v3, "e":Ljava/lang/Exception;
    throw v3

    .line 63
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "connection":Lcom/appsflyer/AdvertisingIdClient$AdvertisingConnection;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    if-eqz p0, :cond_3

    .line 64
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 67
    :cond_3
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Google Play connection failed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 60
    :catch_1
    move-exception v4

    .line 61
    .local v4, "exception":Ljava/lang/Exception;
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .end local v4    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz p0, :cond_4

    .line 64
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_4
    throw v7
.end method
