.class Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;
.super Ljava/lang/Object;
.source "JobSilentSignIn.java"

# interfaces
.implements Lcom/microsoft/onlineid/ITicketCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "e"    # Lcom/microsoft/onlineid/exception/AuthenticationException;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

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

    .line 141
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Ticket:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-static {v0, v1, v2, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackFailure(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;Ljava/lang/Exception;)V

    .line 143
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-interface {v0, v1, p1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V

    .line 144
    return-void
.end method

.method public onTicketAcquired(Lcom/microsoft/onlineid/Ticket;Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "ticket"    # Lcom/microsoft/onlineid/Ticket;
    .param p2, "userAccount"    # Lcom/microsoft/onlineid/UserAccount;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 111
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ticketCallback.onTicketAcquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-eqz p2, :cond_0

    .line 115
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/onlineid/UserAccount;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackTicketAcquired(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 116
    invoke-virtual {p2}, Lcom/microsoft/onlineid/UserAccount;->getCid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$300(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackMSASigninSuccess(Ljava/lang/String;ZLjava/lang/CharSequence;)V

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-interface {v0, v1, p1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onTicketAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/Ticket;)V

    .line 124
    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$400(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackTicketAcquired(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$400(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$300(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackMSASigninSuccess(Ljava/lang/String;ZLjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onUINeeded(Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ticketCallback.onUINeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Ticket:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackUINeeded(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V

    .line 133
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onUiNeeded(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V

    .line 134
    return-void
.end method

.method public onUserCancel(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ticketCallback.onUserCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Ticket:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackMSACancel(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V

    .line 153
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onUserCancel(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V

    .line 154
    return-void
.end method
