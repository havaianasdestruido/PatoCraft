.class public Lcom/microsoft/xbox/services/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tryParseXboxLiveNotification(Landroid/os/Bundle;Landroid/content/Context;)Lcom/microsoft/xbox/services/NotificationResult;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 9
    new-instance v0, Lcom/microsoft/xbox/services/NotificationResult;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/services/NotificationResult;-><init>(Landroid/os/Bundle;Landroid/content/Context;)V

    return-object v0
.end method
