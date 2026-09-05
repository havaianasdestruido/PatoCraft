.class public interface abstract Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;
.super Ljava/lang/Object;
.source "MSAJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/jobs/MSAJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onAccountAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/UserAccount;)V
.end method

.method public abstract onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V
.end method

.method public abstract onSignedOut(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
.end method

.method public abstract onTicketAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/Ticket;)V
.end method

.method public abstract onUiNeeded(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
.end method

.method public abstract onUserCancel(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
.end method
