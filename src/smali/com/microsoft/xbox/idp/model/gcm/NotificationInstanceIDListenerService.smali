.class public Lcom/microsoft/xbox/idp/model/gcm/NotificationInstanceIDListenerService;
.super Lcom/google/android/gms/iid/InstanceIDListenerService;
.source "NotificationInstanceIDListenerService.java"


# static fields
.field public static REFRESH_FLAG:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MyInstanceIDLS"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "isRefresh"

    sput-object v0, Lcom/microsoft/xbox/idp/model/gcm/NotificationInstanceIDListenerService;->REFRESH_FLAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/microsoft/xbox/idp/model/gcm/RegistrationIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/microsoft/xbox/idp/model/gcm/NotificationInstanceIDListenerService;->REFRESH_FLAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/model/gcm/NotificationInstanceIDListenerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 17
    return-void
.end method
