.class public Lcom/microsoft/onlineid/internal/storage/TicketStorage;
.super Ljava/lang/Object;
.source "TicketStorage.java"


# instance fields
.field private final _clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

.field private _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ClockSkewManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    .line 31
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 32
    return-void
.end method

.method static checkCommonParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "accountId"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "accountId"

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "appId"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method


# virtual methods
.method public getTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/Ticket;
    .locals 2
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;

    .prologue
    .line 56
    invoke-static {p1, p2}, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->checkCommonParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "scope"

    invoke-static {p3, v1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v1, p1, p2, p3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/Ticket;

    move-result-object v0

    .line 60
    .local v0, "ticket":Lcom/microsoft/onlineid/Ticket;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/Ticket;->getExpiry()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->isTicketValid(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v1, p1, p2, p3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)V

    .line 64
    const/4 v0, 0x0

    .line 67
    :cond_0
    return-object v0
.end method

.method isTicketValid(Ljava/util/Date;)Z
    .locals 2
    .param p1, "expirationDate"    # Ljava/util/Date;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getCurrentServerTime()Ljava/util/Date;

    move-result-object v0

    .line 121
    .local v0, "currentDate":Ljava/util/Date;
    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeTickets(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v0, "accountId"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeTickets(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method setTypedStorage(Lcom/microsoft/onlineid/internal/storage/TypedStorage;)V
    .locals 1
    .param p1, "typedStorage"    # Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .prologue
    .line 41
    const-string v0, "typedStorage"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 44
    return-void
.end method

.method public storeTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V
    .locals 1
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "ticket"    # Lcom/microsoft/onlineid/Ticket;

    .prologue
    .line 79
    invoke-static {p1, p2}, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->checkCommonParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "ticket"

    invoke-static {p3, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Lcom/microsoft/onlineid/Ticket;->getExpiry()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->isTicketValid(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TicketStorage;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->storeTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    .line 86
    :cond_0
    return-void
.end method
