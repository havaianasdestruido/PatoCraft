.class abstract Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;
.super Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;
.source "InterruptResolutionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DelegatedResultReceiver"
.end annotation


# instance fields
.field protected _activity:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 302
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 303
    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;->_activity:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;->_activity:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onFailure(Ljava/lang/Exception;)V

    .line 331
    :cond_0
    return-void
.end method

.method protected onUINeeded(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;->_activity:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;->_activity:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onUiNeeded(Landroid/app/PendingIntent;)V

    .line 340
    :cond_0
    return-void
.end method

.method protected onUserCancel()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;->_activity:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;->_activity:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onUserCancel()V

    .line 322
    :cond_0
    return-void
.end method

.method public setActivity(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;->_activity:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    .line 313
    return-void
.end method
