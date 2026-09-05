.class public Lcom/microsoft/xbox/idp/interop/MSATicketCallbacks;
.super Ljava/lang/Object;
.source "MSATicketCallbacks.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;


# instance fields
.field private m_ticket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/interop/MSATicketCallbacks;->m_ticket:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTicket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/MSATicketCallbacks;->m_ticket:Ljava/lang/String;

    return-object v0
.end method

.method public onAccountAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/UserAccount;)V
    .locals 0
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .param p2, "userAccount"    # Lcom/microsoft/onlineid/UserAccount;

    .prologue
    .line 47
    return-void
.end method

.method public onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 25
    monitor-enter p1

    .line 26
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 27
    monitor-exit p1

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSignedOut(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 1
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;

    .prologue
    .line 39
    monitor-enter p1

    .line 40
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 41
    monitor-exit p1

    .line 42
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTicketAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/Ticket;)V
    .locals 1
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .param p2, "ticket"    # Lcom/microsoft/onlineid/Ticket;

    .prologue
    .line 51
    monitor-enter p1

    .line 52
    :try_start_0
    invoke-virtual {p2}, Lcom/microsoft/onlineid/Ticket;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/interop/MSATicketCallbacks;->m_ticket:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 54
    monitor-exit p1

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUiNeeded(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 1
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;

    .prologue
    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 20
    monitor-exit p1

    .line 21
    return-void

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUserCancel(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 1
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;

    .prologue
    .line 32
    monitor-enter p1

    .line 33
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 34
    monitor-exit p1

    .line 35
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
