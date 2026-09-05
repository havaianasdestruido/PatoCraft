.class Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;
.super Ljava/lang/Object;
.source "JobSignIn.java"

# interfaces
.implements Lcom/microsoft/onlineid/ITicketCallback;


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
    .line 107
    iput-object p1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "e"    # Lcom/microsoft/onlineid/exception/AuthenticationException;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ticketCallback.onFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/exception/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Ticket:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-static {v0, v1, v2, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackFailure(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;Ljava/lang/Exception;)V

    .line 142
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-interface {v0, v1, p1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V

    .line 143
    return-void
.end method

.method public onTicketAcquired(Lcom/microsoft/onlineid/Ticket;Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "ticket"    # Lcom/microsoft/onlineid/Ticket;
    .param p2, "userAccount"    # Lcom/microsoft/onlineid/UserAccount;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 110
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ticketCallback.onTicketAcquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz p2, :cond_0

    .line 114
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/onlineid/UserAccount;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackTicketAcquired(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    invoke-virtual {p2}, Lcom/microsoft/onlineid/UserAccount;->getCid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$300(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackMSASigninSuccess(Ljava/lang/String;ZLjava/lang/CharSequence;)V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-interface {v0, v1, p1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onTicketAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/Ticket;)V

    .line 122
    return-void

    .line 117
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackTicketAcquired(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$300(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackMSASigninSuccess(Ljava/lang/String;ZLjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onUINeeded(Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ticketCallback.onUINeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

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

    .line 133
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v7

    .line 130
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-interface {v0, v1, v7}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onUserCancel(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ticketCallback.onUserCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$300(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Ticket:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->trackMSACancel(Ljava/lang/CharSequence;Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V

    .line 151
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onUserCancel(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V

    .line 152
    return-void
.end method
