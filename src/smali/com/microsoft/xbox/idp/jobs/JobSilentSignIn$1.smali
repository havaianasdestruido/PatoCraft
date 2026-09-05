.class Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;
.super Ljava/lang/Object;
.source "JobSilentSignIn.java"

# interfaces
.implements Lcom/microsoft/onlineid/IAccountCallback;


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
    .line 55
    iput-object p1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountAcquired(Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "userAccount"    # Lcom/microsoft/onlineid/UserAccount;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountCallback.onAccountAcquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/onlineid/UserAccount;->getCid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackAccountAcquired(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-interface {v0, v1, p1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onAccountAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/UserAccount;)V

    .line 63
    new-instance v0, Lcom/microsoft/onlineid/SecurityScope;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$100(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$200(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/SecurityScope;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Lcom/microsoft/onlineid/UserAccount;->getTicket(Lcom/microsoft/onlineid/ISecurityScope;Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public onAccountSignedOut(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "thisAppOnly"    # Z
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountCallback.onAccountSignedOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Account:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackSignedOut(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V

    .line 74
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$300(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->trackSignout(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onSignedOut(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V

    .line 76
    return-void
.end method

.method public onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "e"    # Lcom/microsoft/onlineid/exception/AuthenticationException;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

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

    .line 93
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Account:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-static {v0, v1, v2, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackFailure(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;Ljava/lang/Exception;)V

    .line 95
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-interface {v0, v1, p1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V

    .line 96
    return-void
.end method

.method public onUINeeded(Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountCallback.onUINeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Account:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackUINeeded(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V

    .line 85
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onUiNeeded(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V

    .line 86
    return-void
.end method

.method public onUserCancel(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountCallback.onUserCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Account:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackMSACancel(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V

    .line 104
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;->this$0:Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;->onUserCancel(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V

    .line 105
    return-void
.end method
