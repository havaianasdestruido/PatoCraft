.class public Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# static fields
.field private static final CONNECTION_PER_ROUTE:I = 0x10

.field private static final DEFAULT_TIMEOUT_IN_SECONDS:I = 0x28

.field private static final MAX_TOTAL_CONNECTIONS:I = 0x20

.field public static networkOperationsFactory:Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

.field public static noRedirectNetworkOperationsFactory:Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

.field public static textureFactory:Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;


# instance fields
.field private client:Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

.field private clientWithTimeoutOverride:Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

.field private connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private httpSyncObject:Ljava/lang/Object;

.field private params:Lorg/apache/http/params/HttpParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->networkOperationsFactory:Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

    .line 28
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;-><init>(Z)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->noRedirectNetworkOperationsFactory:Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

    .line 29
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;-><init>(Z)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->textureFactory:Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;-><init>(Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 10
    .param p1, "allowRedirects"    # Z

    .prologue
    const v9, 0x9c40

    const/16 v8, 0x50

    const/4 v5, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v5, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 32
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->httpSyncObject:Ljava/lang/Object;

    .line 34
    iput-object v5, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->client:Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    .line 35
    iput-object v5, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->clientWithTimeoutOverride:Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    .line 43
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v4, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    .line 45
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 46
    .local v3, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    invoke-direct {v4, v5, v6, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 47
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 50
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 51
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 52
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 53
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v4, p1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 56
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProxyEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    const-string v0, "itgproxy.redmond.corp.microsoft.com"

    .line 58
    .local v0, "ITGPROXY":Ljava/lang/String;
    const/16 v1, 0x50

    .line 60
    .local v1, "PORT":I
    new-instance v2, Lorg/apache/http/HttpHost;

    const-string v4, "itgproxy.redmond.corp.microsoft.com"

    invoke-direct {v2, v4, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 61
    .local v2, "proxyHost":Lorg/apache/http/HttpHost;
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 68
    .end local v0    # "ITGPROXY":Ljava/lang/String;
    .end local v1    # "PORT":I
    .end local v2    # "proxyHost":Lorg/apache/http/HttpHost;
    :cond_0
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 69
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 70
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    const/16 v5, 0x2000

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 71
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    new-instance v5, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v4, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 72
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 74
    new-instance v4, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v4, v5, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v4, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 75
    return-void
.end method


# virtual methods
.method public getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    return-object v0
.end method

.method public getHttpClient(I)Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;
    .locals 5
    .param p1, "timeoutOverride"    # I

    .prologue
    .line 82
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->httpSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 83
    if-lez p1, :cond_1

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->clientWithTimeoutOverride:Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1}, Lorg/apache/http/params/HttpParams;->copy()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 88
    .local v0, "localParams":Lorg/apache/http/params/HttpParams;
    mul-int/lit16 v1, p1, 0x3e8

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 89
    mul-int/lit16 v1, p1, 0x3e8

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 91
    new-instance v1, Lcom/microsoft/xbox/toolkit/network/XLEHttpClient;

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-direct {v1, v3, v0}, Lcom/microsoft/xbox/toolkit/network/XLEHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    monitor-exit v2

    .line 99
    .end local v0    # "localParams":Lorg/apache/http/params/HttpParams;
    :goto_0
    return-object v1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->clientWithTimeoutOverride:Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    monitor-exit v2

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 95
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->client:Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    if-nez v1, :cond_2

    .line 97
    new-instance v1, Lcom/microsoft/xbox/toolkit/network/XLEHttpClient;

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/toolkit/network/XLEHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->client:Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->client:Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public setHttpClient(Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;)V
    .locals 0
    .param p1, "httpClient"    # Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    .prologue
    .line 114
    return-void
.end method
