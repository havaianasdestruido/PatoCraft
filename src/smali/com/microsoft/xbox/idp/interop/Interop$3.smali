.class final Lcom/microsoft/xbox/idp/interop/Interop$3;
.super Ljava/lang/Object;
.source "Interop.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;


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
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 429
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DelegatedAuthJob Failure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
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

    .line 431
    return-void
.end method

.method public onTicketAcquired(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;Ljava/lang/String;)V
    .locals 3
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;
    .param p2, "ticket"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ticket Acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v0, 0x0

    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->NONE:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget v1, v1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    const-string v2, "Got ticket"

    invoke-static {p2, v0, v1, v2}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    .line 437
    return-void
.end method

.method public onUiNeeded(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)V
    .locals 4
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    .prologue
    .line 423
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DelegatedAuthJob UI Needed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->UI_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget v2, v2, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    const-string v3, "Must show UI to acquire an account."

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    .line 425
    return-void
.end method
