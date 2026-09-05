.class Lcom/appsflyer/UninstallUtils;
.super Ljava/lang/Object;
.source "UninstallUtils.java"


# static fields
.field private static final FIREBASE_INSTANCE_ID_INTENT_FILTER_ACTION:Ljava/lang/String; = "com.google.firebase.INSTANCE_ID_EVENT"

.field private static final GCM_INSTANCE_ID_INTENT_FILTER_ACTION:Ljava/lang/String; = "com.google.android.gms.iid.InstanceID"

.field private static final GCM_RECEIVER:Ljava/lang/String; = "com.google.android.gms.gcm.GcmReceiver"

.field private static final GCM_RECEIVER_INTENT_FILTER_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final PERMISSION_C2_D_MESSAGE:Ljava/lang/String; = ".permission.C2D_MESSAGE"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Lcom/appsflyer/AFUninstallToken;
    .locals 1
    .param p0, "x0"    # Ljava/lang/ref/WeakReference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/appsflyer/UninstallUtils;->getGCMToken(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Lcom/appsflyer/AFUninstallToken;

    move-result-object v0

    return-object v0
.end method

.method private static didConfigureFirebaseTokenRefreshService(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.firebase.INSTANCE_ID_EVENT"

    const/4 v4, 0x0

    const-class v5, Lcom/appsflyer/FirebaseInstanceIdListener;

    invoke-direct {v0, v3, v4, p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, "afFirebaseInstanceIdServiceIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.firebase.INSTANCE_ID_EVENT"

    const/4 v4, 0x0

    const-class v5, Lcom/google/firebase/iid/FirebaseInstanceIdService;

    invoke-direct {v2, v3, v4, p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v2, "firebaseInstanceIdServiceIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/appsflyer/AndroidUtils;->isServiceAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    invoke-static {p0, v2}, Lcom/appsflyer/AndroidUtils;->isServiceAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    :cond_0
    const/4 v3, 0x1

    .line 69
    .end local v0    # "afFirebaseInstanceIdServiceIntent":Landroid/content/Intent;
    .end local v2    # "firebaseInstanceIdServiceIntent":Landroid/content/Intent;
    :goto_0
    return v3

    .line 64
    .restart local v0    # "afFirebaseInstanceIdServiceIntent":Landroid/content/Intent;
    .restart local v2    # "firebaseInstanceIdServiceIntent":Landroid/content/Intent;
    :cond_1
    const-string v3, "Cannot verify existence of our InstanceID Listener Service in the manifest. Please refer to documentation."

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "afFirebaseInstanceIdServiceIntent":Landroid/content/Intent;
    .end local v2    # "firebaseInstanceIdServiceIntent":Landroid/content/Intent;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "An error occurred while trying to verify manifest declarations: "

    invoke-static {v3, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static didConfigureGcmTokenRefreshService(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.google.android.gms.iid.InstanceID"

    const/4 v6, 0x0

    const-class v7, Lcom/appsflyer/GcmInstanceIdListener;

    invoke-direct {v0, v5, v6, p0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "afGcmInstanceIdServiceIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.google.android.gms.iid.InstanceID"

    const/4 v6, 0x0

    const-class v7, Lcom/google/android/gms/iid/InstanceIDListenerService;

    invoke-direct {v2, v5, v6, p0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v2, "gcmInstanceIdServiceIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/appsflyer/AndroidUtils;->isServiceAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 37
    invoke-static {p0, v2}, Lcom/appsflyer/AndroidUtils;->isServiceAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 38
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.google.android.c2dm.intent.RECEIVE"

    const/4 v6, 0x0

    const-string v7, "com.google.android.gms.gcm.GcmReceiver"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v3, v5, v6, p0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v3, "gcmReceiverIntent":Landroid/content/Intent;
    invoke-static {p0, v3}, Lcom/appsflyer/AndroidUtils;->isReceiverAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "packageName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".permission.C2D_MESSAGE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/appsflyer/AndroidUtils;->isPermissionAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 42
    const/4 v5, 0x1

    .line 53
    .end local v0    # "afGcmInstanceIdServiceIntent":Landroid/content/Intent;
    .end local v2    # "gcmInstanceIdServiceIntent":Landroid/content/Intent;
    .end local v3    # "gcmReceiverIntent":Landroid/content/Intent;
    .end local v4    # "packageName":Ljava/lang/String;
    :goto_0
    return v5

    .line 44
    .restart local v0    # "afGcmInstanceIdServiceIntent":Landroid/content/Intent;
    .restart local v2    # "gcmInstanceIdServiceIntent":Landroid/content/Intent;
    .restart local v3    # "gcmReceiverIntent":Landroid/content/Intent;
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_1
    const-string v5, "Cannot verify existence of the app\'s \"permission.C2D_MESSAGE\" permission in the manifest. Please refer to documentation."

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 53
    .end local v0    # "afGcmInstanceIdServiceIntent":Landroid/content/Intent;
    .end local v2    # "gcmInstanceIdServiceIntent":Landroid/content/Intent;
    .end local v3    # "gcmReceiverIntent":Landroid/content/Intent;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 47
    .restart local v0    # "afGcmInstanceIdServiceIntent":Landroid/content/Intent;
    .restart local v2    # "gcmInstanceIdServiceIntent":Landroid/content/Intent;
    .restart local v3    # "gcmReceiverIntent":Landroid/content/Intent;
    :cond_3
    const-string v5, "Cannot verify existence of GcmReceiver receiver in the manifest. Please refer to documentation."

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 50
    .end local v0    # "afGcmInstanceIdServiceIntent":Landroid/content/Intent;
    .end local v2    # "gcmInstanceIdServiceIntent":Landroid/content/Intent;
    .end local v3    # "gcmReceiverIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Throwable;
    const-string v5, "An error occurred while trying to verify manifest declarations: "

    invoke-static {v5, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static didConfigureTokenRefreshService(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/appsflyer/UninstallUtils;->didConfigureGcmTokenRefreshService(Landroid/content/Context;)Z

    move-result v0

    .line 28
    .local v0, "result":Z
    invoke-static {p0}, Lcom/appsflyer/UninstallUtils;->didConfigureFirebaseTokenRefreshService(Landroid/content/Context;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 29
    return v0
.end method

.method private static getGCMToken(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Lcom/appsflyer/AFUninstallToken;
    .locals 11
    .param p1, "gcmProjectNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/AFUninstallToken;"
        }
    .end annotation

    .prologue
    .local p0, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v6, 0x0

    .line 74
    :try_start_0
    const-string v7, "com.google.android.gms.iid.InstanceID"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, "gcmInstanceId":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "com.google.android.gms.gcm.GcmReceiver"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 76
    const-string v7, "getInstance"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 77
    .local v1, "getInstance":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 78
    .local v3, "instance":Ljava/lang/Object;
    const-string v7, "getToken"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 79
    .local v2, "getToken":Ljava/lang/reflect/Method;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    const-string v9, "GCM"

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 80
    .local v5, "token":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 81
    const-string v7, "Couldn\'t get token using reflection."

    invoke-static {v7}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 90
    .end local v0    # "gcmInstanceId":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "getInstance":Ljava/lang/reflect/Method;
    .end local v2    # "getToken":Ljava/lang/reflect/Method;
    .end local v3    # "instance":Ljava/lang/Object;
    .end local v5    # "token":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 84
    .restart local v0    # "gcmInstanceId":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "getInstance":Ljava/lang/reflect/Method;
    .restart local v2    # "getToken":Ljava/lang/reflect/Method;
    .restart local v3    # "instance":Ljava/lang/Object;
    .restart local v5    # "token":Ljava/lang/String;
    :cond_0
    new-instance v7, Lcom/appsflyer/AFUninstallToken;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9, v5}, Lcom/appsflyer/AFUninstallToken;-><init>(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_0

    .line 87
    .end local v0    # "gcmInstanceId":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "getInstance":Ljava/lang/reflect/Method;
    .end local v2    # "getToken":Ljava/lang/reflect/Method;
    .end local v3    # "instance":Ljava/lang/Object;
    .end local v5    # "token":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 88
    .local v4, "t":Ljava/lang/Throwable;
    const-string v7, "Couldn\'t get token using GoogleCloudMessaging. "

    invoke-static {v7, v4}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method static registerDeviceForUninstalls(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    new-instance v0, Lcom/appsflyer/UninstallUtils$1;

    invoke-direct {v0, p0}, Lcom/appsflyer/UninstallUtils$1;-><init>(Ljava/lang/ref/WeakReference;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 137
    invoke-virtual {v0, v1}, Lcom/appsflyer/UninstallUtils$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 138
    return-void
.end method

.method static updateServerUninstallToken(Landroid/content/Context;Lcom/appsflyer/AFUninstallToken;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Lcom/appsflyer/AFUninstallToken;

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateServerUninstallToken called with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsflyer/AFUninstallToken;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "afUninstallToken"

    invoke-virtual {p1}, Lcom/appsflyer/AFUninstallToken;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsflyer/AFUninstallToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/appsflyer/AppsFlyerLib;->callRegisterBackground(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    return-void
.end method
