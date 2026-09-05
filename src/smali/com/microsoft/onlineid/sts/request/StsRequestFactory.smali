.class public Lcom/microsoft/onlineid/sts/request/StsRequestFactory;
.super Ljava/lang/Object;
.source "StsRequestFactory.java"


# instance fields
.field protected final _applicationContext:Landroid/content/Context;

.field private final _clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_applicationContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ClockSkewManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/onlineid/sts/ClockSkewManager;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "clockSkewManager"    # Lcom/microsoft/onlineid/sts/ClockSkewManager;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_applicationContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    .line 48
    return-void
.end method

.method private buildTelemetry()Ljava/lang/String;
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_applicationContext:Landroid/content/Context;

    .line 199
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "appStore":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageMarket="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public createDeviceAuthRequest(Lcom/microsoft/onlineid/sts/DeviceIdentity;)Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;
    .locals 2
    .param p1, "identity"    # Lcom/microsoft/onlineid/sts/DeviceIdentity;

    .prologue
    .line 73
    new-instance v0, Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;

    invoke-direct {v0}, Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;-><init>()V

    .line 74
    .local v0, "request":Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;
    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->initializeRequest(Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;)V

    .line 75
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/DeviceIdentity;->getCredentials()Lcom/microsoft/onlineid/sts/DeviceCredentials;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;->setDeviceCredentials(Lcom/microsoft/onlineid/sts/DeviceCredentials;)V

    .line 76
    return-object v0
.end method

.method public createDeviceProvisionRequest(Lcom/microsoft/onlineid/sts/DeviceCredentials;)Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;
    .locals 1
    .param p1, "credentials"    # Lcom/microsoft/onlineid/sts/DeviceCredentials;

    .prologue
    .line 59
    new-instance v0, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;

    invoke-direct {v0}, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;-><init>()V

    .line 60
    .local v0, "request":Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;
    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->initializeRequest(Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;)V

    .line 61
    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;->setDeviceCredentials(Lcom/microsoft/onlineid/sts/DeviceCredentials;)V

    .line 62
    return-object v0
.end method

.method public createServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/sts/DeviceIdentity;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/sts/request/ServiceRequest;
    .locals 7
    .param p1, "userAccount"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .param p2, "deviceIdentity"    # Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .param p3, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "flowToken"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->createServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/sts/DeviceIdentity;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;Z)Lcom/microsoft/onlineid/sts/request/ServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public createServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/sts/DeviceIdentity;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;Z)Lcom/microsoft/onlineid/sts/request/ServiceRequest;
    .locals 2
    .param p1, "userAccount"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .param p2, "deviceIdentity"    # Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .param p3, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "flowToken"    # Ljava/lang/String;
    .param p6, "requestFlights"    # Z

    .prologue
    .line 121
    const-string v1, "userAccount"

    invoke-static {p1, v1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    const-string v1, "deviceIdentity"

    invoke-static {p2, v1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    const-string v1, "scope"

    invoke-static {p3, v1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;

    invoke-direct {v0}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;-><init>()V

    .line 127
    .local v0, "request":Lcom/microsoft/onlineid/sts/request/ServiceRequest;
    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->initializeRequest(Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;)V

    .line 128
    invoke-virtual {v0, p6}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->setRequestFlights(Z)V

    .line 129
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->setUserDA(Lcom/microsoft/onlineid/sts/DAToken;)V

    .line 130
    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/DeviceIdentity;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->setDeviceDA(Lcom/microsoft/onlineid/sts/DAToken;)V

    .line 131
    invoke-virtual {v0, p3}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->addRequest(Lcom/microsoft/onlineid/ISecurityScope;)V

    .line 132
    invoke-virtual {v0, p5}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->setFlowToken(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_applicationContext:Landroid/content/Context;

    invoke-static {v1, p4}, Lcom/microsoft/onlineid/internal/Applications;->buildClientAppUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->setClientAppUri(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->buildTelemetry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->setTelemetry(Ljava/lang/String;)V

    .line 137
    return-object v0
.end method

.method public createServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/sts/DeviceIdentity;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/sts/request/ServiceRequest;
    .locals 6
    .param p1, "userAccount"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .param p2, "deviceIdentity"    # Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;

    .prologue
    .line 154
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->createServiceRequest(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/sts/DeviceIdentity;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/sts/request/ServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected initializeRequest(Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "request":Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<*>;"
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v0

    .line 166
    .local v0, "config":Lcom/microsoft/onlineid/sts/ServerConfig;
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->getEndpoint()Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    move-result-object v1

    .line 167
    .local v1, "endpoint":Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 168
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;->getUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->setDestination(Ljava/net/URL;)V

    .line 170
    new-instance v2, Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_applicationContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->setTransportFactory(Lcom/microsoft/onlineid/internal/transport/TransportFactory;)V

    .line 171
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-virtual {p1, v2}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->setClockSkewManager(Lcom/microsoft/onlineid/sts/ClockSkewManager;)V

    .line 174
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->_applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/PackageInfoHelper;->getCurrentAppVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->setMsaAppVersionCode(I)V

    .line 177
    instance-of v2, p1, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    if-eqz v2, :cond_0

    .line 179
    check-cast p1, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    .end local p1    # "request":Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<*>;"
    new-instance v2, Lcom/microsoft/onlineid/sts/XmlSigner;

    invoke-direct {v2}, Lcom/microsoft/onlineid/sts/XmlSigner;-><init>()V

    invoke-interface {p1, v2}, Lcom/microsoft/onlineid/sts/request/ISignableRequest;->setXmlSigner(Lcom/microsoft/onlineid/sts/XmlSigner;)V

    .line 181
    :cond_0
    return-void

    .line 167
    .restart local p1    # "request":Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<*>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
