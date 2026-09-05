.class final Lcom/microsoft/xbox/idp/interop/Interop$2;
.super Ljava/lang/Object;
.source "Interop.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/Interop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/UserAccount;)V
    .locals 2
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .param p2, "userAccount"    # Lcom/microsoft/onlineid/UserAccount;

    .prologue
    .line 409
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java - Ticket Acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void
.end method

.method public onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 388
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java - onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->OTHER:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget v2, v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There was a problem acquiring an account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    .line 390
    return-void
.end method

.method public onSignedOut(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 4
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;

    .prologue
    .line 402
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java - onSignedOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->OTHER:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget v2, v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    const-string v3, "Signed out during silent sign in - should not be here"

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    .line 404
    return-void
.end method

.method public onTicketAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/Ticket;)V
    .locals 4
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .param p2, "ticket"    # Lcom/microsoft/onlineid/Ticket;

    .prologue
    .line 415
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java - Ticket Acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p2}, Lcom/microsoft/onlineid/Ticket;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->NONE:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget v2, v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    const-string v3, "Got ticket"

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    .line 417
    return-void
.end method

.method public onUiNeeded(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 4
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;

    .prologue
    .line 381
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java - onUiNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->UI_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget v2, v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    const-string v3, "Must show UI to acquire an account."

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    .line 383
    return-void
.end method

.method public onUserCancel(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 4
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;

    .prologue
    .line 395
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java - onUserCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget v2, v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    const-string v3, "The user cancelled the UI to acquire a ticket."

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    .line 397
    return-void
.end method
