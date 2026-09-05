.class Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;
.super Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService$Stub;
.source "MsaSsoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;


# direct methods
.method constructor <init>(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountOperation;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 157
    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 159
    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 160
    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 156
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getAccountById(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountByIdOperation;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 167
    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 169
    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 170
    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountByIdOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 166
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getAccountPickerIntent(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 187
    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 189
    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 190
    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAccountPickerOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 186
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getAllAccounts(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAllAccountsOperation;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 177
    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 179
    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 180
    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetAllAccountsOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 176
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSignInIntent(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 197
    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 199
    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 200
    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignInIntentOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 196
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSignOutIntent(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignOutIntentOperation;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 217
    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 219
    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 220
    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignOutIntentOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 216
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSignUpIntent(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 207
    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 209
    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 210
    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetSignUpIntentOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 206
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTicket(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 227
    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 229
    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 230
    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/microsoft/onlineid/internal/sso/service/operation/GetTicketOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;)V

    .line 226
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public retrieveBackup(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v6, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/service/operation/RetrieveBackupOperation;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 248
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 250
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 251
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 252
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$200(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    move-result-object v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/internal/sso/service/operation/RetrieveBackupOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;Lcom/microsoft/onlineid/internal/storage/TypedStorage;)V

    .line 247
    invoke-virtual {v6, v0}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public storeBackup(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v6, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/service/operation/StoreBackupOperation;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 237
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 239
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$000(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    move-result-object v3

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 240
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$100(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/sts/TicketManager;

    move-result-object v4

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService$1;->this$0:Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 241
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->access$200(Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;)Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    move-result-object v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/internal/sso/service/operation/StoreBackupOperation;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;Lcom/microsoft/onlineid/internal/sts/TicketManager;Lcom/microsoft/onlineid/internal/storage/TypedStorage;)V

    .line 236
    invoke-virtual {v6, v0}, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;->handleIncomingRequest(Lcom/microsoft/onlineid/internal/sso/service/operation/ServiceOperation;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
