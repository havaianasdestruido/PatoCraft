.class public abstract Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;
.super Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;
.source "BlockingApiRequestResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;"
    }
.end annotation


# instance fields
.field private final _queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver",
            "<TResultType;>.Result;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;, "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<TResultType;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 32
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;->_queue:Ljava/util/concurrent/BlockingQueue;

    .line 33
    return-void
.end method


# virtual methods
.method public blockForResult()Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse",
            "<TResultType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;, "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<TResultType;>;"
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;->_queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;

    .line 55
    .local v0, "result":Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;, "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<TResultType;>.Result;"
    if-nez v0, :cond_0

    .line 57
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expect a result to be available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_0
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->access$000(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;)Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 62
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->access$000(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 65
    :cond_1
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->getSsoResponse()Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v1

    return-object v1
.end method

.method protected onFailure(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 95
    .local p0, "this":Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;, "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<TResultType;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;->_queue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;-><init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Exception;Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method protected onUINeeded(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 89
    .local p0, "this":Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;, "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<TResultType;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;->_queue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;-><init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Landroid/app/PendingIntent;Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method protected onUserCancel()V
    .locals 4

    .prologue
    .line 83
    .local p0, "this":Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;, "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<TResultType;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;->_queue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;

    new-instance v2, Lcom/microsoft/onlineid/internal/exception/UserCancelledException;

    invoke-direct {v2}, Lcom/microsoft/onlineid/internal/exception/UserCancelledException;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;-><init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Exception;Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method protected setResult(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;, "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<TResultType;>;"
    .local p1, "result":Ljava/lang/Object;, "TResultType;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;->_queue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;-><init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Object;Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method
