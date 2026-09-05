.class public interface abstract Lcom/microsoft/onlineid/IAccountCallback;
.super Ljava/lang/Object;
.source "IAccountCallback.java"

# interfaces
.implements Lcom/microsoft/onlineid/internal/IFailureCallback;
.implements Lcom/microsoft/onlineid/internal/IUserInteractionCallback;


# virtual methods
.method public abstract onAccountAcquired(Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V
.end method

.method public abstract onAccountSignedOut(Ljava/lang/String;ZLandroid/os/Bundle;)V
.end method

.method public abstract onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V
.end method

.method public abstract onUINeeded(Landroid/app/PendingIntent;Landroid/os/Bundle;)V
.end method

.method public abstract onUserCancel(Landroid/os/Bundle;)V
.end method
