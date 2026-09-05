.class public abstract Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
.super Ljava/lang/Object;
.source "SsoRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final _failureCallback:Lcom/microsoft/onlineid/internal/IFailureCallback;

.field private final _state:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "failureCallback"    # Lcom/microsoft/onlineid/internal/IFailureCallback;
    .param p2, "state"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;->_failureCallback:Lcom/microsoft/onlineid/internal/IFailureCallback;

    .line 30
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;->_state:Landroid/os/Bundle;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract performRequest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation
.end method

.method public run()V
    .locals 4

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;->performRequest()V
    :try_end_0
    .catch Lcom/microsoft/onlineid/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Lcom/microsoft/onlineid/exception/AuthenticationException;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/exception/AuthenticationException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;->_failureCallback:Lcom/microsoft/onlineid/internal/IFailureCallback;

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;->_state:Landroid/os/Bundle;

    invoke-interface {v2, v0, v3}, Lcom/microsoft/onlineid/internal/IFailureCallback;->onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V

    goto :goto_0

    .line 45
    .end local v0    # "e":Lcom/microsoft/onlineid/exception/AuthenticationException;
    :catch_1
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/microsoft/onlineid/exception/InternalException;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    .line 48
    .local v1, "ie":Lcom/microsoft/onlineid/exception/InternalException;
    invoke-virtual {v1}, Lcom/microsoft/onlineid/exception/InternalException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;->_failureCallback:Lcom/microsoft/onlineid/internal/IFailureCallback;

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;->_state:Landroid/os/Bundle;

    invoke-interface {v2, v1, v3}, Lcom/microsoft/onlineid/internal/IFailureCallback;->onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V

    goto :goto_0
.end method
