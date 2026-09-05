.class public abstract Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;
.super Landroid/os/ResultReceiver;
.source "ApiRequestResultReceiver.java"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected abstract onFailure(Ljava/lang/Exception;)V
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 41
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v0, p2}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    .line 42
    .local v0, "request":Lcom/microsoft/onlineid/internal/ApiResult;
    packed-switch p1, :pswitch_data_0

    .line 61
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;->onUnknownResult(Lcom/microsoft/onlineid/internal/ApiResult;I)V

    .line 64
    :goto_0
    return-void

    .line 45
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;->onSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V

    goto :goto_0

    .line 49
    :pswitch_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;->onUserCancel()V

    goto :goto_0

    .line 53
    :pswitch_2
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;->onFailure(Ljava/lang/Exception;)V

    goto :goto_0

    .line 57
    :pswitch_3
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->getUINeededIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;->onUINeeded(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract onSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V
.end method

.method protected abstract onUINeeded(Landroid/app/PendingIntent;)V
.end method

.method protected onUnknownResult(Lcom/microsoft/onlineid/internal/ApiResult;I)V
    .locals 3
    .param p1, "result"    # Lcom/microsoft/onlineid/internal/ApiResult;
    .param p2, "resultCode"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown result code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 101
    new-instance v0, Lcom/microsoft/onlineid/exception/InternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown result code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;->onFailure(Ljava/lang/Exception;)V

    .line 102
    return-void
.end method

.method protected abstract onUserCancel()V
.end method
