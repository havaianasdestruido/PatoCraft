.class public abstract Lcom/microsoft/onlineid/internal/ActivityResultHandler;
.super Ljava/lang/Object;
.source "ActivityResultHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 30
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 31
    .local v1, "extras":Landroid/os/Bundle;
    :goto_0
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    .line 33
    .local v0, "apiResult":Lcom/microsoft/onlineid/internal/ApiResult;
    packed-switch p1, :pswitch_data_0

    .line 52
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/onlineid/internal/ActivityResultHandler;->onUnknownResult(Lcom/microsoft/onlineid/internal/ApiResult;I)V

    .line 55
    :goto_1
    return-void

    .line 30
    .end local v0    # "apiResult":Lcom/microsoft/onlineid/internal/ApiResult;
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 36
    .restart local v0    # "apiResult":Lcom/microsoft/onlineid/internal/ApiResult;
    .restart local v1    # "extras":Landroid/os/Bundle;
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/ActivityResultHandler;->onSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V

    goto :goto_1

    .line 40
    :pswitch_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ActivityResultHandler;->onUserCancel()V

    goto :goto_1

    .line 44
    :pswitch_2
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/internal/ActivityResultHandler;->onFailure(Ljava/lang/Exception;)V

    goto :goto_1

    .line 48
    :pswitch_3
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->getUINeededIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/internal/ActivityResultHandler;->onUINeeded(Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 33
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract onFailure(Ljava/lang/Exception;)V
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
    .line 91
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

    .line 92
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

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/ActivityResultHandler;->onFailure(Ljava/lang/Exception;)V

    .line 93
    return-void
.end method

.method protected abstract onUserCancel()V
.end method
