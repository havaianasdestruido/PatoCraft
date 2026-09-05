.class public Lcom/microsoft/xbox/idp/interop/CLLCallback;
.super Ljava/lang/Object;
.source "CLLCallback.java"

# interfaces
.implements Lcom/microsoft/cll/android/ITicketCallback;


# static fields
.field private static final POLICY:Ljava/lang/String; = "mbi_ssl"

.field private static final VORTEX_SCOPE:Ljava/lang/String; = "vortex.data.microsoft.com"


# instance fields
.field private m_activityTitle:Ljava/lang/String;

.field private m_context:Landroid/content/Context;

.field private m_vortexTicket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityTitle"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_vortexTicket:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_context:Landroid/content/Context;

    .line 26
    iput-object p1, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_activityTitle:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getAuthXToken(Z)Ljava/lang/String;
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 59
    invoke-static {p1}, Lcom/microsoft/xbox/idp/interop/Interop;->GetLiveXTokenCallback(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsaDeviceTicket(Z)Ljava/lang/String;
    .locals 9
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 33
    iget-object v1, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_vortexTicket:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-nez p1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_vortexTicket:Ljava/lang/String;

    .line 53
    :goto_0
    return-object v1

    .line 38
    :cond_0
    new-instance v3, Lcom/microsoft/xbox/idp/interop/MSATicketCallbacks;

    invoke-direct {v3}, Lcom/microsoft/xbox/idp/interop/MSATicketCallbacks;-><init>()V

    .line 39
    .local v3, "callbacks":Lcom/microsoft/xbox/idp/interop/MSATicketCallbacks;
    new-instance v7, Lcom/microsoft/xbox/idp/interop/LocalConfig;

    invoke-direct {v7}, Lcom/microsoft/xbox/idp/interop/LocalConfig;-><init>()V

    .line 40
    .local v7, "cfg":Lcom/microsoft/xbox/idp/interop/LocalConfig;
    new-instance v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_activityTitle:Ljava/lang/String;

    const-string v4, "vortex.data.microsoft.com"

    const-string v5, "mbi_ssl"

    invoke-virtual {v7}, Lcom/microsoft/xbox/idp/interop/LocalConfig;->getCid()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .local v0, "job":Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;
    monitor-enter v0

    .line 45
    :try_start_0
    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->start()Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-virtual {v3}, Lcom/microsoft/xbox/idp/interop/MSATicketCallbacks;->getTicket()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_vortexTicket:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/microsoft/xbox/idp/interop/CLLCallback;->m_vortexTicket:Ljava/lang/String;

    goto :goto_0

    .line 48
    :catch_0
    move-exception v8

    .line 49
    .local v8, "exception":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "XSAPI.Android"

    const-string v2, "exception on votex MSA Ticket"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 51
    .end local v8    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getXTicketForXuid(Ljava/lang/String;)Lcom/microsoft/cll/android/TicketObject;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Lcom/microsoft/cll/android/TicketObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/microsoft/xbox/idp/interop/Interop;->GetXTokenCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/TicketObject;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
