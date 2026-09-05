.class public Lcom/microsoft/onlineid/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.java"


# instance fields
.field private _accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

.field private _accountCollectionCallback:Lcom/microsoft/onlineid/IAccountCollectionCallback;

.field private final _applicationContext:Landroid/content/Context;

.field private final _onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

.field private final _ssoClient:Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

.field private _telemetryCallback:Lcom/microsoft/onlineid/ITelemetryCallback;

.field private _ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 65
    new-instance v0, Lcom/microsoft/onlineid/OnlineIdConfiguration;

    invoke-direct {v0}, Lcom/microsoft/onlineid/OnlineIdConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/AccountManager;-><init>(Landroid/content/Context;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onlineIdConfiguration"    # Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager;->_applicationContext:Landroid/content/Context;

    .line 85
    if-nez p2, :cond_1

    new-instance p2, Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .end local p2    # "onlineIdConfiguration":Lcom/microsoft/onlineid/OnlineIdConfiguration;
    invoke-direct {p2}, Lcom/microsoft/onlineid/OnlineIdConfiguration;-><init>()V

    :cond_1
    iput-object p2, p0, Lcom/microsoft/onlineid/AccountManager;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .line 86
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_ssoClient:Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    .line 89
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->initialize(Landroid/content/Context;)V

    .line 91
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->initialize(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/OnlineIdConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/AccountManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/AccountManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_ssoClient:Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/AccountManager;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/AccountManager;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/microsoft/onlineid/AccountManager;->getAccountManager()Lcom/microsoft/onlineid/AccountManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCallback;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/AccountManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/IAccountCollectionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/AccountManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCollectionCallback:Lcom/microsoft/onlineid/IAccountCollectionCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/microsoft/onlineid/AccountManager;)Lcom/microsoft/onlineid/ITicketCallback;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/AccountManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    return-object v0
.end method

.method private getAccountManager()Lcom/microsoft/onlineid/AccountManager;
    .locals 0

    .prologue
    .line 762
    return-object p0
.end method

.method private verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Object;
    .param p2, "callbackName"    # Ljava/lang/String;

    .prologue
    .line 752
    if-nez p1, :cond_0

    .line 754
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You must specify an "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before invoking this method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_0
    return-void
.end method


# virtual methods
.method public getAccount(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    const-class v1, Lcom/microsoft/onlineid/IAccountCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/AccountManager;->getAccountRunnable(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 119
    return-void
.end method

.method public getAccountById(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "state"    # Landroid/os/Bundle;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    const-class v1, Lcom/microsoft/onlineid/IAccountCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/AccountManager;->getAccountByIdRunnable(Ljava/lang/String;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 282
    return-void
.end method

.method protected getAccountByIdRunnable(Ljava/lang/String;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "state"    # Landroid/os/Bundle;

    .prologue
    .line 292
    new-instance v0, Lcom/microsoft/onlineid/AccountManager$4;

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/AccountManager$4;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getAccountPickerIntent(Ljava/lang/Iterable;Landroid/os/Bundle;)V
    .locals 2
    .param p2, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "cidExclusionList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    const-class v1, Lcom/microsoft/onlineid/IAccountCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/AccountManager;->getAccountPickerIntentRunnable(Ljava/lang/Iterable;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 378
    return-void
.end method

.method protected getAccountPickerIntentRunnable(Ljava/lang/Iterable;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
    .locals 6
    .param p2, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "cidExclusionList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v0, Lcom/microsoft/onlineid/AccountManager$6;

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/AccountManager$6;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Ljava/lang/Iterable;Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected getAccountRunnable(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 127
    new-instance v0, Lcom/microsoft/onlineid/AccountManager$1;

    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/microsoft/onlineid/AccountManager$1;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getAllAccounts(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCollectionCallback:Lcom/microsoft/onlineid/IAccountCollectionCallback;

    const-class v1, Lcom/microsoft/onlineid/IAccountCollectionCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/AccountManager;->getAllAccountsRunnable(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 332
    return-void
.end method

.method protected getAllAccountsRunnable(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 340
    new-instance v0, Lcom/microsoft/onlineid/AccountManager$5;

    iget-object v1, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCollectionCallback:Lcom/microsoft/onlineid/IAccountCollectionCallback;

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/microsoft/onlineid/AccountManager$5;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getSignInIntent(Lcom/microsoft/onlineid/SignInOptions;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Lcom/microsoft/onlineid/SignInOptions;
    .param p2, "state"    # Landroid/os/Bundle;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    const-class v1, Lcom/microsoft/onlineid/IAccountCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/AccountManager;->getSignInIntentRunnable(Lcom/microsoft/onlineid/SignInOptions;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 171
    return-void
.end method

.method protected getSignInIntentRunnable(Lcom/microsoft/onlineid/SignInOptions;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
    .locals 6
    .param p1, "options"    # Lcom/microsoft/onlineid/SignInOptions;
    .param p2, "state"    # Landroid/os/Bundle;

    .prologue
    .line 181
    new-instance v0, Lcom/microsoft/onlineid/AccountManager$2;

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/AccountManager$2;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Lcom/microsoft/onlineid/SignInOptions;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getSignOutIntent(Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "account"    # Lcom/microsoft/onlineid/UserAccount;
    .param p2, "state"    # Landroid/os/Bundle;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    const-class v1, Lcom/microsoft/onlineid/IAccountCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/AccountManager;->getSignOutIntentRunnable(Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 428
    return-void
.end method

.method protected getSignOutIntentRunnable(Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
    .locals 6
    .param p1, "account"    # Lcom/microsoft/onlineid/UserAccount;
    .param p2, "state"    # Landroid/os/Bundle;

    .prologue
    .line 438
    new-instance v0, Lcom/microsoft/onlineid/AccountManager$7;

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/AccountManager$7;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getSignUpIntent(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/onlineid/AccountManager;->getSignUpIntent(Lcom/microsoft/onlineid/SignUpOptions;Landroid/os/Bundle;)V

    .line 209
    return-void
.end method

.method public getSignUpIntent(Lcom/microsoft/onlineid/SignUpOptions;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Lcom/microsoft/onlineid/SignUpOptions;
    .param p2, "state"    # Landroid/os/Bundle;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    const-class v1, Lcom/microsoft/onlineid/IAccountCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/AccountManager;->getSignUpIntentRunnable(Lcom/microsoft/onlineid/SignUpOptions;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 232
    return-void
.end method

.method protected getSignUpIntentRunnable(Lcom/microsoft/onlineid/SignUpOptions;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
    .locals 6
    .param p1, "options"    # Lcom/microsoft/onlineid/SignUpOptions;
    .param p2, "state"    # Landroid/os/Bundle;

    .prologue
    .line 240
    new-instance v0, Lcom/microsoft/onlineid/AccountManager$3;

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/AccountManager$3;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Lcom/microsoft/onlineid/SignUpOptions;Landroid/os/Bundle;)V

    return-object v0
.end method

.method getTicket(Lcom/microsoft/onlineid/UserAccount;Lcom/microsoft/onlineid/ISecurityScope;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "account"    # Lcom/microsoft/onlineid/UserAccount;
    .param p2, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    const-class v1, Lcom/microsoft/onlineid/IAccountCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/microsoft/onlineid/AccountManager;->_ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    const-class v1, Lcom/microsoft/onlineid/ITicketCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/AccountManager;->verifyCallback(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/onlineid/AccountManager;->getTicketRunnable(Lcom/microsoft/onlineid/UserAccount;Lcom/microsoft/onlineid/ISecurityScope;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 472
    return-void
.end method

.method protected getTicketRunnable(Lcom/microsoft/onlineid/UserAccount;Lcom/microsoft/onlineid/ISecurityScope;Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/sso/client/SsoRunnable;
    .locals 7
    .param p1, "account"    # Lcom/microsoft/onlineid/UserAccount;
    .param p2, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    .line 483
    new-instance v0, Lcom/microsoft/onlineid/AccountManager$8;

    iget-object v2, p0, Lcom/microsoft/onlineid/AccountManager;->_ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/onlineid/AccountManager$8;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/internal/IFailureCallback;Landroid/os/Bundle;Lcom/microsoft/onlineid/UserAccount;Lcom/microsoft/onlineid/ISecurityScope;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 18
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 531
    const/4 v9, 0x0

    .line 532
    .local v9, "resultTypeString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 533
    .local v8, "resultType":Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;
    const/4 v6, 0x0

    .line 534
    .local v6, "extras":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 538
    .local v10, "state":Landroid/os/Bundle;
    if-eqz p3, :cond_0

    .line 540
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 542
    if-eqz v6, :cond_0

    .line 544
    const-string v16, "com.microsoft.onlineid.client_state"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 545
    const-string v16, "com.microsoft.onlineid.result_type"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 546
    invoke-static {v9}, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->fromString(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    move-result-object v8

    .line 550
    :cond_0
    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 552
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Activity result: request: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", result: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 553
    const-string v16, "With extras:"

    move-object/from16 v0, v16

    invoke-static {v0, v6}, Lcom/microsoft/onlineid/internal/Bundles;->log(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 556
    :cond_1
    if-nez v8, :cond_3

    .line 558
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown result type ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") encountered, ignoring."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 559
    const/16 v16, 0x0

    .line 669
    :goto_0
    return v16

    .line 562
    :catch_0
    move-exception v4

    .line 569
    .local v4, "e":Landroid/os/BadParcelableException;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Caught BadParcelableException when checking extras, ignoring: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 570
    const/16 v16, 0x0

    goto :goto_0

    .line 572
    .end local v4    # "e":Landroid/os/BadParcelableException;
    :catch_1
    move-exception v4

    .line 574
    .local v4, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/ClassNotFoundException;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 582
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Caught RuntimeException when checking extras, ignoring: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 583
    const/16 v16, 0x0

    goto :goto_0

    .line 587
    :cond_2
    throw v4

    .line 592
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_3
    sget-object v16, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Ticket:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    move-object/from16 v0, v16

    if-ne v8, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/microsoft/onlineid/AccountManager;->_ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    :goto_1
    check-cast v13, Lcom/microsoft/onlineid/internal/IUserInteractionCallback;

    .line 595
    .local v13, "uiCallback":Lcom/microsoft/onlineid/internal/IUserInteractionCallback;
    sget-object v16, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Ticket:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    move-object/from16 v0, v16

    if-ne v8, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/microsoft/onlineid/AccountManager;->_ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    .line 598
    .local v7, "failureCallback":Lcom/microsoft/onlineid/internal/IFailureCallback;
    :goto_2
    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/onlineid/AccountManager;->_telemetryCallback:Lcom/microsoft/onlineid/ITelemetryCallback;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 600
    const-string v16, "com.microsoft.onlineid.web_telemetry_events"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 601
    .local v14, "webTelemetryEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v16, "com.microsoft.onlineid.web_telemetry_all_events_captured"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 602
    .local v15, "wereAllEventsCaptured":Z
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_4

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/onlineid/AccountManager;->_telemetryCallback:Lcom/microsoft/onlineid/ITelemetryCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v14, v15}, Lcom/microsoft/onlineid/ITelemetryCallback;->webTelemetryEventsReceived(Ljava/lang/Iterable;Z)V

    .line 608
    .end local v14    # "webTelemetryEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "wereAllEventsCaptured":Z
    :cond_4
    if-nez p2, :cond_8

    .line 610
    invoke-interface {v13, v10}, Lcom/microsoft/onlineid/internal/IUserInteractionCallback;->onUserCancel(Landroid/os/Bundle;)V

    .line 669
    :cond_5
    :goto_3
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 592
    .end local v7    # "failureCallback":Lcom/microsoft/onlineid/internal/IFailureCallback;
    .end local v13    # "uiCallback":Lcom/microsoft/onlineid/internal/IUserInteractionCallback;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    goto :goto_1

    .line 595
    .restart local v13    # "uiCallback":Lcom/microsoft/onlineid/internal/IUserInteractionCallback;
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    goto :goto_2

    .line 612
    .restart local v7    # "failureCallback":Lcom/microsoft/onlineid/internal/IFailureCallback;
    :cond_8
    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 617
    :try_start_1
    invoke-static {v6}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->hasError(Landroid/os/Bundle;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 619
    invoke-static {v6}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->exceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/exception/AuthenticationException;

    move-result-object v5

    .line 621
    .local v5, "exception":Lcom/microsoft/onlineid/exception/AuthenticationException;
    instance-of v0, v5, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 624
    const-string v16, "com.microsoft.onlineid.user_cid"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 625
    .local v3, "cid":Ljava/lang/String;
    if-eqz v3, :cond_9

    const/16 v16, 0x1

    :goto_4
    const-string v17, "Expect to find a CID for sign-out notification."

    invoke-static/range {v16 .. v17}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 626
    const-string v16, "com.microsoft.onlineid.signed_out_this_app_only"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 627
    .local v11, "thisAppOnly":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3, v11, v10}, Lcom/microsoft/onlineid/IAccountCallback;->onAccountSignedOut(Ljava/lang/String;ZLandroid/os/Bundle;)V
    :try_end_1
    .catch Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 663
    .end local v3    # "cid":Ljava/lang/String;
    .end local v5    # "exception":Lcom/microsoft/onlineid/exception/AuthenticationException;
    .end local v11    # "thisAppOnly":Z
    :catch_2
    move-exception v4

    .line 665
    .local v4, "e":Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
    new-instance v16, Lcom/microsoft/onlineid/exception/InternalException;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    move-object/from16 v0, v16

    invoke-interface {v7, v0, v10}, Lcom/microsoft/onlineid/internal/IFailureCallback;->onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V

    goto :goto_3

    .line 625
    .end local v4    # "e":Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
    .restart local v3    # "cid":Ljava/lang/String;
    .restart local v5    # "exception":Lcom/microsoft/onlineid/exception/AuthenticationException;
    :cond_9
    const/16 v16, 0x0

    goto :goto_4

    .line 631
    .end local v3    # "cid":Ljava/lang/String;
    :cond_a
    :try_start_2
    invoke-interface {v7, v5, v10}, Lcom/microsoft/onlineid/internal/IFailureCallback;->onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V

    goto :goto_3

    .line 636
    .end local v5    # "exception":Lcom/microsoft/onlineid/exception/AuthenticationException;
    :cond_b
    invoke-static {v6}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->hasPendingIntent(Landroid/os/Bundle;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 638
    invoke-static {v6}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v10}, Lcom/microsoft/onlineid/internal/IUserInteractionCallback;->onUINeeded(Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    goto :goto_3

    .line 642
    :cond_c
    sget-object v16, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Ticket:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    move-object/from16 v0, v16

    if-ne v8, v0, :cond_d

    invoke-static {v6}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->hasTicket(Landroid/os/Bundle;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 644
    invoke-static {v6}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->limitedUserAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v2

    .line 645
    .local v2, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    invoke-static {v6}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->ticketFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/Ticket;

    move-result-object v12

    .line 646
    .local v12, "ticket":Lcom/microsoft/onlineid/Ticket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/onlineid/AccountManager;->_ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    move-object/from16 v16, v0

    new-instance v17, Lcom/microsoft/onlineid/UserAccount;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/UserAccount;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v12, v1, v10}, Lcom/microsoft/onlineid/ITicketCallback;->onTicketAcquired(Lcom/microsoft/onlineid/Ticket;Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 650
    .end local v2    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .end local v12    # "ticket":Lcom/microsoft/onlineid/Ticket;
    :cond_d
    sget-object v16, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Account:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    move-object/from16 v0, v16

    if-ne v8, v0, :cond_e

    invoke-static {v6}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->hasLimitedUserAccount(Landroid/os/Bundle;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 652
    invoke-static {v6}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->limitedUserAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v2

    .line 653
    .restart local v2    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    move-object/from16 v16, v0

    new-instance v17, Lcom/microsoft/onlineid/UserAccount;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/UserAccount;-><init>(Lcom/microsoft/onlineid/AccountManager;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v10}, Lcom/microsoft/onlineid/IAccountCallback;->onAccountAcquired(Lcom/microsoft/onlineid/UserAccount;Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 659
    .end local v2    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    :cond_e
    new-instance v16, Lcom/microsoft/onlineid/exception/InternalException;

    const-string v17, "Unexpected onActivityResult found."

    invoke-direct/range {v16 .. v17}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v7, v0, v10}, Lcom/microsoft/onlineid/internal/IFailureCallback;->onFailure(Lcom/microsoft/onlineid/exception/AuthenticationException;Landroid/os/Bundle;)V
    :try_end_2
    .catch Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3
.end method

.method public setAccountCallback(Lcom/microsoft/onlineid/IAccountCallback;)Lcom/microsoft/onlineid/AccountManager;
    .locals 0
    .param p1, "callback"    # Lcom/microsoft/onlineid/IAccountCallback;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    .line 689
    return-object p0
.end method

.method public setAccountCollectionCallback(Lcom/microsoft/onlineid/IAccountCollectionCallback;)Lcom/microsoft/onlineid/AccountManager;
    .locals 0
    .param p1, "callback"    # Lcom/microsoft/onlineid/IAccountCollectionCallback;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager;->_accountCollectionCallback:Lcom/microsoft/onlineid/IAccountCollectionCallback;

    .line 722
    return-object p0
.end method

.method public setTelemetryCallback(Lcom/microsoft/onlineid/ITelemetryCallback;)Lcom/microsoft/onlineid/AccountManager;
    .locals 0
    .param p1, "callback"    # Lcom/microsoft/onlineid/ITelemetryCallback;

    .prologue
    .line 738
    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager;->_telemetryCallback:Lcom/microsoft/onlineid/ITelemetryCallback;

    .line 739
    return-object p0
.end method

.method public setTicketCallback(Lcom/microsoft/onlineid/ITicketCallback;)Lcom/microsoft/onlineid/AccountManager;
    .locals 0
    .param p1, "callback"    # Lcom/microsoft/onlineid/ITicketCallback;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/microsoft/onlineid/AccountManager;->_ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    .line 709
    return-object p0
.end method
