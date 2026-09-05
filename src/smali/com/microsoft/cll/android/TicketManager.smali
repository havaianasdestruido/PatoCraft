.class public Lcom/microsoft/cll/android/TicketManager;
.super Ljava/lang/Object;
.source "TicketManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final callback:Lcom/microsoft/cll/android/ITicketCallback;

.field private final logger:Lcom/microsoft/cll/android/ILogger;

.field private needDeviceTicket:Z

.field private final tickets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ITicketCallback;Lcom/microsoft/cll/android/ILogger;)V
    .locals 1
    .param p1, "callback"    # Lcom/microsoft/cll/android/ITicketCallback;
    .param p2, "logger"    # Lcom/microsoft/cll/android/ILogger;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "AndroidCll-TicketManager"

    iput-object v0, p0, Lcom/microsoft/cll/android/TicketManager;->TAG:Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/cll/android/TicketManager;->needDeviceTicket:Z

    .line 17
    iput-object p1, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    .line 18
    iput-object p2, p0, Lcom/microsoft/cll/android/TicketManager;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    .line 20
    return-void
.end method


# virtual methods
.method public addTickets(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    if-nez v3, :cond_1

    .line 89
    :cond_0
    return-void

    .line 64
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    .local v1, "ticketId":Ljava/lang/String;
    iget-object v4, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 69
    iget-object v4, p0, Lcom/microsoft/cll/android/TicketManager;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v5, "AndroidCll-TicketManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting ticket for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v4, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    invoke-interface {v4, v1}, Lcom/microsoft/cll/android/ITicketCallback;->getXTicketForXuid(Ljava/lang/String;)Lcom/microsoft/cll/android/TicketObject;

    move-result-object v0

    .line 71
    .local v0, "ticket":Lcom/microsoft/cll/android/TicketObject;
    iget-object v2, v0, Lcom/microsoft/cll/android/TicketObject;->ticket:Ljava/lang/String;

    .line 76
    .local v2, "ticketString":Ljava/lang/String;
    iget-boolean v4, v0, Lcom/microsoft/cll/android/TicketObject;->hasDeviceClaims:Z

    if-eqz v4, :cond_3

    .line 78
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/microsoft/cll/android/TicketManager;->needDeviceTicket:Z

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_2

    const-string v2, ""

    .end local v2    # "ticketString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .restart local v2    # "ticketString":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    .end local v0    # "ticket":Lcom/microsoft/cll/android/TicketObject;
    .end local v2    # "ticketString":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/microsoft/cll/android/TicketManager;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v5, "AndroidCll-TicketManager"

    const-string v6, "We already have a ticket for this id, skipping."

    invoke-interface {v4, v5, v6}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clean()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/cll/android/TicketManager;->needDeviceTicket:Z

    .line 99
    return-void
.end method

.method public getHeaders(Z)Lcom/microsoft/cll/android/TicketHeaders;
    .locals 2
    .param p1, "shouldForceRefresh"    # Z

    .prologue
    .line 33
    iget-object v1, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 49
    :cond_1
    :goto_0
    return-object v0

    .line 38
    :cond_2
    new-instance v0, Lcom/microsoft/cll/android/TicketHeaders;

    invoke-direct {v0}, Lcom/microsoft/cll/android/TicketHeaders;-><init>()V

    .line 39
    .local v0, "headers":Lcom/microsoft/cll/android/TicketHeaders;
    iget-object v1, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    invoke-interface {v1, p1}, Lcom/microsoft/cll/android/ITicketCallback;->getAuthXToken(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/cll/android/TicketHeaders;->authXToken:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/microsoft/cll/android/TicketManager;->tickets:Ljava/util/Map;

    iput-object v1, v0, Lcom/microsoft/cll/android/TicketHeaders;->xtokens:Ljava/util/Map;

    .line 44
    iget-boolean v1, p0, Lcom/microsoft/cll/android/TicketManager;->needDeviceTicket:Z

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/microsoft/cll/android/TicketManager;->callback:Lcom/microsoft/cll/android/ITicketCallback;

    invoke-interface {v1, p1}, Lcom/microsoft/cll/android/ITicketCallback;->getMsaDeviceTicket(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/cll/android/TicketHeaders;->msaDeviceTicket:Ljava/lang/String;

    goto :goto_0
.end method
