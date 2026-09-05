.class public interface abstract Lcom/microsoft/onlineid/IAccountCollectionCallback;
.super Ljava/lang/Object;
.source "IAccountCollectionCallback.java"

# interfaces
.implements Lcom/microsoft/onlineid/internal/IFailureCallback;


# virtual methods
.method public abstract onAccountCollectionAcquired(Ljava/util/Set;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/onlineid/UserAccount;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V
.end method
