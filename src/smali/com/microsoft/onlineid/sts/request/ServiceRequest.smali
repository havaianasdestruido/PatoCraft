.class public Lcom/microsoft/onlineid/sts/request/ServiceRequest;
.super Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;
.source "ServiceRequest.java"

# interfaces
.implements Lcom/microsoft/onlineid/sts/request/ISignableRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest",
        "<",
        "Lcom/microsoft/onlineid/sts/response/ServiceResponse;",
        ">;",
        "Lcom/microsoft/onlineid/sts/request/ISignableRequest;"
    }
.end annotation


# instance fields
.field private _clientAppUri:Ljava/lang/String;

.field private _deviceDA:Lcom/microsoft/onlineid/sts/DAToken;

.field private _flowToken:Ljava/lang/String;

.field private _parentOfSignatureNode:Lorg/w3c/dom/Element;

.field private _requestFlights:Z

.field protected _requestedScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/onlineid/ISecurityScope;",
            ">;"
        }
    .end annotation
.end field

.field private _signer:Lcom/microsoft/onlineid/sts/XmlSigner;

.field private _telemetry:Ljava/lang/String;

.field private _userDA:Lcom/microsoft/onlineid/sts/DAToken;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_requestFlights:Z

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_requestedScopes:Ljava/util/List;

    .line 146
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_requestedScopes:Ljava/util/List;

    sget-object v1, Lcom/microsoft/onlineid/sts/DAToken;->Scope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method


# virtual methods
.method public addRequest(Lcom/microsoft/onlineid/ISecurityScope;)V
    .locals 4
    .param p1, "request"    # Lcom/microsoft/onlineid/ISecurityScope;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot request a null scope."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_requestedScopes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 131
    sget-object v0, Lcom/microsoft/onlineid/sts/DAToken;->Scope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 133
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_requestedScopes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_requestedScopes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 129
    goto :goto_0

    :cond_3
    move v1, v2

    .line 131
    goto :goto_1
.end method

.method protected buildAuthInfo(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "authInfo"    # Lorg/w3c/dom/Element;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;->buildAuthInfo(Lorg/w3c/dom/Element;)V

    .line 176
    const-string v0, "ps:InlineUX"

    const-string v1, "Android"

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 177
    const-string v0, "ps:ConsentFlags"

    const-string v1, "1"

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 178
    const-string v0, "ps:IsConnected"

    const-string v1, "1"

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 180
    iget-boolean v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_requestFlights:Z

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "ps:Experiments"

    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Experiment;->getExperimentList()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_flowToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 187
    const-string v0, "ps:InlineFT"

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_flowToken:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 190
    :cond_1
    const-string v0, "ps:ClientAppURI"

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_clientAppUri:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 193
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_telemetry:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    const-string v0, "ps:Telemetry"

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_telemetry:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 197
    :cond_2
    return-void
.end method

.method protected buildSecurityNode(Lorg/w3c/dom/Element;)V
    .locals 7
    .param p1, "security"    # Lorg/w3c/dom/Element;

    .prologue
    .line 211
    :try_start_0
    iget-object v4, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_userDA:Lcom/microsoft/onlineid/sts/DAToken;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/DAToken;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/onlineid/sts/request/Requests;->xmlStringToElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 220
    .local v3, "userTokenElement":Lorg/w3c/dom/Element;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 223
    iget-object v4, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_deviceDA:Lcom/microsoft/onlineid/sts/DAToken;

    invoke-virtual {p0, p1, v4}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->appendDeviceDAToken(Lorg/w3c/dom/Element;Lcom/microsoft/onlineid/sts/DAToken;)V

    .line 226
    const-string v4, "wssc:DerivedKeyToken"

    invoke-static {p1, v4}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 227
    .local v0, "derivedToken":Lorg/w3c/dom/Element;
    const-string v4, "wsu:Id"

    const-string v5, "SignKey"

    invoke-interface {v0, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v4, "Algorithm"

    const-string v5, "urn:liveid:SP800-108CTR-HMAC-SHA256"

    invoke-interface {v0, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v4, "wsse:RequestedTokenReference"

    invoke-static {v0, v4}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 231
    .local v2, "tokenReference":Lorg/w3c/dom/Element;
    const-string v4, "wsse:KeyIdentifier"

    invoke-static {v2, v4}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string v5, "ValueType"

    const-string v6, "http://docs.oasis-open.org/wss/2004/XX/oasis-2004XX-wss-saml-token-profile-1.0#SAMLAssertionID"

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v4, "wsse:Reference"

    invoke-static {v2, v4}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string v5, "URI"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v4, "wssc:Nonce"

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_signer:Lcom/microsoft/onlineid/sts/XmlSigner;

    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/XmlSigner;->getEncodedNonce()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 239
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->appendTimestamp(Lorg/w3c/dom/Element;)V

    .line 242
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_parentOfSignatureNode:Lorg/w3c/dom/Element;

    .line 243
    return-void

    .line 213
    .end local v0    # "derivedToken":Lorg/w3c/dom/Element;
    .end local v2    # "tokenReference":Lorg/w3c/dom/Element;
    .end local v3    # "userTokenElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v4, Lcom/microsoft/onlineid/sts/exception/CorruptedUserDATokenException;

    const-string v5, "Unable to parse user DAToken blob into XML, possibly corrupt."

    invoke-direct {v4, v5, v1}, Lcom/microsoft/onlineid/sts/exception/CorruptedUserDATokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getEndpoint()Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Sts:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    return-object v0
.end method

.method public getParentOfSignatureNode()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_parentOfSignatureNode:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method protected getRequestedScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/onlineid/ISecurityScope;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_requestedScopes:Ljava/util/List;

    return-object v0
.end method

.method public getSigningSessionKey()[B
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_userDA:Lcom/microsoft/onlineid/sts/DAToken;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/DAToken;->getSessionKey()[B

    move-result-object v0

    return-object v0
.end method

.method public getXmlSigner()Lcom/microsoft/onlineid/sts/XmlSigner;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_signer:Lcom/microsoft/onlineid/sts/XmlSigner;

    return-object v0
.end method

.method public bridge synthetic instantiateResponse()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->instantiateResponse()Lcom/microsoft/onlineid/sts/response/ServiceResponse;

    move-result-object v0

    return-object v0
.end method

.method public instantiateResponse()Lcom/microsoft/onlineid/sts/response/ServiceResponse;
    .locals 5

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->getRequestedScopes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, "ticketScope":Lcom/microsoft/onlineid/ISecurityScope;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->getRequestedScopes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/ISecurityScope;

    .line 271
    .local v0, "scope":Lcom/microsoft/onlineid/ISecurityScope;
    sget-object v3, Lcom/microsoft/onlineid/sts/DAToken;->Scope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 273
    move-object v1, v0

    .line 278
    .end local v0    # "scope":Lcom/microsoft/onlineid/ISecurityScope;
    :cond_1
    new-instance v2, Lcom/microsoft/onlineid/sts/response/ServiceResponse;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->getSigningSessionKey()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->getClockSkewManager()Lcom/microsoft/onlineid/sts/ClockSkewManager;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;-><init>([BLcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/sts/ClockSkewManager;)V

    return-object v2

    .line 265
    .end local v1    # "ticketScope":Lcom/microsoft/onlineid/ISecurityScope;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setClientAppUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientAppUri"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_clientAppUri:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setDeviceDA(Lcom/microsoft/onlineid/sts/DAToken;)V
    .locals 0
    .param p1, "deviceDA"    # Lcom/microsoft/onlineid/sts/DAToken;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_deviceDA:Lcom/microsoft/onlineid/sts/DAToken;

    .line 87
    return-void
.end method

.method public setFlowToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "flowToken"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_flowToken:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setRequestFlights(Z)V
    .locals 0
    .param p1, "requestFlights"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_requestFlights:Z

    .line 67
    return-void
.end method

.method public setTelemetry(Ljava/lang/String;)V
    .locals 0
    .param p1, "telemetry"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_telemetry:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setUserDA(Lcom/microsoft/onlineid/sts/DAToken;)V
    .locals 0
    .param p1, "userDA"    # Lcom/microsoft/onlineid/sts/DAToken;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_userDA:Lcom/microsoft/onlineid/sts/DAToken;

    .line 77
    return-void
.end method

.method public setXmlSigner(Lcom/microsoft/onlineid/sts/XmlSigner;)V
    .locals 0
    .param p1, "signer"    # Lcom/microsoft/onlineid/sts/XmlSigner;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/ServiceRequest;->_signer:Lcom/microsoft/onlineid/sts/XmlSigner;

    .line 295
    return-void
.end method
