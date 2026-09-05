.class Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;
.super Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;
.source "InterruptResolutionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TicketResultReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$DelegatedResultReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$1;

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V
    .locals 2
    .param p1, "result"    # Lcom/microsoft/onlineid/internal/ApiResult;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;->_activity:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity$TicketResultReceiver;->_activity:Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiResult;->getTicket()Lcom/microsoft/onlineid/Ticket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ui/InterruptResolutionActivity;->onTicketAcquired(Lcom/microsoft/onlineid/Ticket;)V

    .line 387
    :cond_0
    return-void
.end method
