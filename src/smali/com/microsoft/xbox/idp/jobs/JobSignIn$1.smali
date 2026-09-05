.class Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;
.super Ljava/lang/Object;
.source "JobSignIn.java"

# interfaces
.implements Lcom/microsoft/onlineid/IAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/jobs/JobSignIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountAcquired(Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "userAccount"    # Lcom/microsoft/onlineid/UserAccount;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountCallback.onAccountAcquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/onlineid/UserAccount;->getCid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackAccountAcquired(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-interface {v0, v1, p1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onAccountAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/UserAccount;)V

    .line 64
    new-instance v0, Lcom/microsoft/onlineid/SecurityScope;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$100(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$200(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/SecurityScope;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Lcom/microsoft/onlineid/UserAccount;->getTicket(Lcom/microsoft/onlineid/ISecurityScope;Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method public onAccountSignedOut(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "thisAppOnly"    # Z
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountCallback.onAccountSignedOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$300(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->trackSignout(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onSignedOut(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V

    .line 73
    return-void
.end method

.method public onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "e"    # Lcom/microsoft/onlineid/exception/AuthenticationException;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountCallback.onFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/exception/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Account:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-static {v0, v1, v2, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackFailure(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;Ljava/lang/Exception;)V

    .line 94
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-interface {v0, v1, p1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V

    .line 95
    return-void
.end method

.method public onUINeeded(Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountCallback.onUINeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Account:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-static {v0, v2, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackUINeeded(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$300(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v7

    .line 82
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-interface {v0, v1, v7}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onUserCancel(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountCallback.onUserCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$300(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Account:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->trackMSACancel(Ljava/lang/CharSequence;Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V

    .line 103
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onUserCancel(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V

    .line 104
    return-void
.end method
