.class public Lcom/microsoft/xbox/idp/model/gcm/RegistrationIntentService;
.super Landroid/app/IntentService;
.source "RegistrationIntentService.java"


# static fields
.field private static final REGISTRATION_MODE:Ljava/lang/String; = "com.microsoft.xbox.idp.model.gcm"

.field private static final REGISTRATION_TOKEN_FIELD:Ljava/lang/String; = "registrationToken"

.field private static final SENDER_ID:Ljava/lang/String; = "86584527366"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/microsoft/xbox/idp/model/gcm/RegistrationIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/model/gcm/RegistrationIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/microsoft/xbox/idp/model/gcm/RegistrationIntentService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    .local v3, "isCached":Z
    const-string v7, "com.microsoft.xbox.idp.model.gcm"

    invoke-virtual {p0, v7, v9}, Lcom/microsoft/xbox/idp/model/gcm/RegistrationIntentService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 32
    .local v6, "sharedPreferences":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    .line 33
    .local v5, "registrationToken":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 35
    const-string v7, "registrationToken"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 38
    :cond_0
    const/4 v4, 0x0

    .line 39
    .local v4, "isRefresh":Z
    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 42
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 44
    sget-object v7, Lcom/microsoft/xbox/idp/model/gcm/NotificationInstanceIDListenerService;->REFRESH_FLAG:Ljava/lang/String;

    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 48
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v4, :cond_3

    .line 50
    :cond_2
    const/4 v3, 0x0

    .line 52
    invoke-static {p0}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v2

    .line 54
    .local v2, "instanceID":Lcom/google/android/gms/iid/InstanceID;
    :try_start_0
    const-string v7, "86584527366"

    const-string v8, "GCM"

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 62
    :goto_0
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "registrationToken"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    .end local v2    # "instanceID":Lcom/google/android/gms/iid/InstanceID;
    :cond_3
    invoke-static {v5, v3}, Lcom/microsoft/xbox/idp/interop/Interop;->NotificationRegisterCallback(Ljava/lang/String;Z)V

    .line 66
    return-void

    .line 56
    .restart local v2    # "instanceID":Lcom/google/android/gms/iid/InstanceID;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "XSAPI.Android"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v7, "XSAPI.Android"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
