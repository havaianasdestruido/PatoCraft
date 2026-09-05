.class Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;
.super Lcom/microsoft/onlineid/internal/ActivityResultHandler;
.source "InterruptResolutionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebFlowResultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;


# direct methods
.method private constructor <init>(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;->this$0:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ActivityResultHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;
    .param p2, "x1"    # Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$1;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;-><init>(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;->this$0:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onFailure(Ljava/lang/Exception;)V

    .line 365
    return-void
.end method

.method protected onSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V
    .locals 2
    .param p1, "result"    # Lcom/microsoft/onlineid/internal/ApiResult;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;->this$0:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiResult;->getFlowToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onWebFlowSucceeded(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method protected onUINeeded(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;->this$0:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onUiNeeded(Landroid/app/PendingIntent;)V

    .line 371
    return-void
.end method

.method protected onUserCancel()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$WebFlowResultHandler;->this$0:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onUserCancel()V

    .line 359
    return-void
.end method
