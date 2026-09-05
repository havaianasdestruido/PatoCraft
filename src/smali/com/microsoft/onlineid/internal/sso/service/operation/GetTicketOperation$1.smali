.class Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation$1;
.super Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;
.source "GetTicketOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;->call()Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver",
        "<",
        "Lcom/microsoft/onlineid/Ticket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;


# direct methods
.method constructor <init>(Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V
    .locals 1
    .param p1, "result"    # Lcom/microsoft/onlineid/internal/ApiResult;

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiResult;->getTicket()Lcom/microsoft/onlineid/Ticket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation$1;->setResult(Ljava/lang/Object;)V

    .line 87
    return-void
.end method
