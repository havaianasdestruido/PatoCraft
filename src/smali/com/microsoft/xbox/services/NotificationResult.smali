.class public Lcom/microsoft/xbox/services/NotificationResult;
.super Ljava/lang/Object;
.source "NotificationResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/services/NotificationResult$NotificationType;
    }
.end annotation


# instance fields
.field public body:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public notificationType:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v5, "type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22
    .local v4, "type":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 23
    sget-object v5, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->Unknown:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    iput-object v5, p0, Lcom/microsoft/xbox/services/NotificationResult;->notificationType:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    .line 52
    :cond_0
    :goto_0
    const-string v5, "xbl"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/xbox/services/NotificationResult;->data:Ljava/lang/String;

    .line 53
    return-void

    .line 24
    :cond_1
    const-string v5, "xbox_live_game_invite"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 25
    sget v5, Lcom/microsoft/xbox/idp/R$string;->xbox_live_game_invite_title:I

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/xbox/services/NotificationResult;->title:Ljava/lang/String;

    .line 26
    sget v5, Lcom/microsoft/xbox/idp/R$string;->xbox_live_game_invite_body:I

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "invitePartialBody":Ljava/lang/String;
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 28
    .local v1, "bundleNoti":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 29
    const-string v5, "body_loc_args"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "bodyStrArr":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 31
    const-string v5, "["

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v5, "]"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "strArr":[Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aget-object v6, v3, v7

    aput-object v6, v5, v7

    aget-object v6, v3, v8

    aput-object v6, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/xbox/services/NotificationResult;->body:Ljava/lang/String;

    .line 40
    .end local v0    # "bodyStrArr":Ljava/lang/String;
    .end local v3    # "strArr":[Ljava/lang/String;
    :cond_2
    :goto_1
    sget-object v5, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->Invite:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    iput-object v5, p0, Lcom/microsoft/xbox/services/NotificationResult;->notificationType:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    goto :goto_0

    .line 38
    :cond_3
    const-string v5, "XSAPI.Android"

    const-string v6, "could not parse notification"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 41
    .end local v1    # "bundleNoti":Landroid/os/Bundle;
    .end local v2    # "invitePartialBody":Ljava/lang/String;
    :cond_4
    const-string v5, "xbox_live_achievement_unlock"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 42
    sget-object v5, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->Achievement:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    iput-object v5, p0, Lcom/microsoft/xbox/services/NotificationResult;->notificationType:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    .line 43
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 44
    .restart local v1    # "bundleNoti":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 45
    const-string v5, "title"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/xbox/services/NotificationResult;->title:Ljava/lang/String;

    .line 46
    const-string v5, "body"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/xbox/services/NotificationResult;->body:Ljava/lang/String;

    goto/16 :goto_0

    .line 49
    .end local v1    # "bundleNoti":Landroid/os/Bundle;
    :cond_5
    sget-object v5, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->Unknown:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    iput-object v5, p0, Lcom/microsoft/xbox/services/NotificationResult;->notificationType:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    goto/16 :goto_0
.end method
