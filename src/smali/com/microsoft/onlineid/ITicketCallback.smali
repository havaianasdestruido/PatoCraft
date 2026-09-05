.class public interface abstract Lcom/microsoft/onlineid/ITicketCallback;
.super Ljava/lang/Object;
.source "ITicketCallback.java"

# interfaces
.implements Lcom/microsoft/onlineid/internal/IFailureCallback;
.implements Lcom/microsoft/onlineid/internal/IUserInteractionCallback;


# virtual methods
.method public abstract onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V
.end method

.method public abstract onTicketAcquired(Lcom/microsoft/onlineid/Ticket;Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V
.end method

.method public abstract onUINeeded(Landroid/app/PendingIntent;Landroid/os/Bundle;)V
.end method

.method public abstract onUserCancel(Landroid/os/Bundle;)V
.end method
