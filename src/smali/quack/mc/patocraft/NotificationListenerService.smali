.class public Lquack/mc/patocraft/NotificationListenerService;
.super Lcom/google/android/gms/gcm/GcmListenerService;
.source "NotificationListenerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method native nativePushNotificationReceived(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-static {p2, p0}, Lcom/microsoft/xbox/services/NotificationHelper;->tryParseXboxLiveNotification(Landroid/os/Bundle;Landroid/content/Context;)Lcom/microsoft/xbox/services/NotificationResult;

    move-result-object v0

    .line 16
    .local v0, "result":Lcom/microsoft/xbox/services/NotificationResult;
    iget-object v1, v0, Lcom/microsoft/xbox/services/NotificationResult;->notificationType:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    invoke-virtual {v1}, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->ordinal()I

    move-result v1

    iget-object v2, v0, Lcom/microsoft/xbox/services/NotificationResult;->title:Ljava/lang/String;

    iget-object v3, v0, Lcom/microsoft/xbox/services/NotificationResult;->body:Ljava/lang/String;

    iget-object v4, v0, Lcom/microsoft/xbox/services/NotificationResult;->data:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Lquack/mc/patocraft/NotificationListenerService;->nativePushNotificationReceived(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method
