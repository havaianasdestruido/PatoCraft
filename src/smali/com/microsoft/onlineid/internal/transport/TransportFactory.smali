.class public Lcom/microsoft/onlineid/internal/transport/TransportFactory;
.super Ljava/lang/Object;
.source "TransportFactory.java"


# instance fields
.field private final _applicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->_applicationContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method protected configureTransport(Lcom/microsoft/onlineid/internal/transport/Transport;)V
    .locals 2
    .param p1, "transport"    # Lcom/microsoft/onlineid/internal/transport/Transport;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->getServerConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v0

    .line 52
    .local v0, "config":Lcom/microsoft/onlineid/sts/ServerConfig;
    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->ConnectTimeout:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/microsoft/onlineid/internal/transport/Transport;->setConnectionTimeoutMilliseconds(I)V

    .line 53
    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->ReceiveTimeout:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/microsoft/onlineid/internal/transport/Transport;->setReadTimeoutMilliseconds(I)V

    .line 56
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->_applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/transport/Transport;->buildUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/microsoft/onlineid/internal/transport/Transport;->appendCustomUserAgentString(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public createTransport()Lcom/microsoft/onlineid/internal/transport/Transport;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/microsoft/onlineid/internal/transport/Transport;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/transport/Transport;-><init>()V

    .line 36
    .local v0, "transport":Lcom/microsoft/onlineid/internal/transport/Transport;
    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->configureTransport(Lcom/microsoft/onlineid/internal/transport/Transport;)V

    .line 38
    return-object v0
.end method

.method protected getServerConfig()Lcom/microsoft/onlineid/sts/ServerConfig;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
