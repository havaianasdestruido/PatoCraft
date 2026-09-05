.class public abstract Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;
.super Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;
.source "AbstractTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Lcom/microsoft/onlineid/sts/response/AbstractSoapResponse;",
        ">",
        "Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest",
        "<TResponseType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest<TResponseType;>;"
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;-><init>()V

    return-void
.end method

.method private appendTokenRequestElement(Lorg/w3c/dom/Element;Lcom/microsoft/onlineid/ISecurityScope;)Lorg/w3c/dom/Element;
    .locals 7
    .param p1, "parent"    # Lorg/w3c/dom/Element;
    .param p2, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;

    .prologue
    .line 91
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest<TResponseType;>;"
    const-string v5, "wst:RequestSecurityToken"

    invoke-static {p1, v5}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 92
    .local v4, "token":Lorg/w3c/dom/Element;
    const-string v5, "xmlns:wst"

    const-string v6, "http://schemas.xmlsoap.org/ws/2005/02/trust"

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v5, "wst:RequestType"

    const-string v6, "http://schemas.xmlsoap.org/ws/2005/02/trust/Issue"

    invoke-static {v4, v5, v6}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 96
    const-string v5, "wsp:AppliesTo"

    invoke-static {v4, v5}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 97
    .local v0, "appliesTo":Lorg/w3c/dom/Element;
    const-string v5, "xmlns:wsp"

    const-string v6, "http://schemas.xmlsoap.org/ws/2004/09/policy"

    invoke-interface {v0, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v5, "wsa:EndpointReference"

    invoke-static {v0, v5}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 100
    .local v1, "endpointRef":Lorg/w3c/dom/Element;
    const-string v5, "xmlns:wsa"

    const-string v6, "http://www.w3.org/2005/08/addressing"

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v5, "wsa:Address"

    invoke-interface {p2}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 103
    invoke-interface {p2}, Lcom/microsoft/onlineid/ISecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "policy":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 106
    const-string v5, "wsp:PolicyReference"

    invoke-static {v4, v5}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 107
    .local v3, "policyElement":Lorg/w3c/dom/Element;
    const-string v5, "xmlns:wsp"

    const-string v6, "http://schemas.xmlsoap.org/ws/2004/09/policy"

    invoke-interface {v3, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v5, "URI"

    invoke-interface {v3, v5, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .end local v3    # "policyElement":Lorg/w3c/dom/Element;
    :cond_0
    return-object v4
.end method


# virtual methods
.method protected buildAuthInfo(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "authInfo"    # Lorg/w3c/dom/Element;

    .prologue
    .line 39
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest<TResponseType;>;"
    invoke-super {p0, p1}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->buildAuthInfo(Lorg/w3c/dom/Element;)V

    .line 42
    const-string v0, "ps:HostingApp"

    const-string v1, "{F501FD64-9070-46AB-993C-6F7B71D8D883}"

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 43
    return-void
.end method

.method protected buildSoapBody(Lorg/w3c/dom/Element;)V
    .locals 9
    .param p1, "body"    # Lorg/w3c/dom/Element;

    .prologue
    .line 54
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest<TResponseType;>;"
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;->getRequestedScopes()Ljava/util/List;

    move-result-object v2

    .line 55
    .local v2, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/onlineid/ISecurityScope;>;"
    move-object v0, p1

    .line 58
    .local v0, "container":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 60
    const-string v5, "ps:RequestMultipleSecurityTokens"

    invoke-static {p1, v5}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 61
    const-string v5, "xmlns:ps"

    const-string v6, "http://schemas.microsoft.com/Passport/SoapServices/PPCRL"

    invoke-interface {v0, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v5, "Id"

    const-string v6, "RSTS"

    invoke-interface {v0, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    instance-of v5, p0, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    if-eqz v5, :cond_0

    move-object v5, p0

    .line 67
    check-cast v5, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    invoke-interface {v5}, Lcom/microsoft/onlineid/sts/request/ISignableRequest;->getXmlSigner()Lcom/microsoft/onlineid/sts/XmlSigner;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/microsoft/onlineid/sts/XmlSigner;->addElementToSign(Lorg/w3c/dom/Element;)V

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 73
    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/onlineid/ISecurityScope;

    .line 75
    .local v3, "scope":Lcom/microsoft/onlineid/ISecurityScope;
    invoke-direct {p0, v0, v3}, Lcom/microsoft/onlineid/sts/request/AbstractTokenRequest;->appendTokenRequestElement(Lorg/w3c/dom/Element;Lcom/microsoft/onlineid/ISecurityScope;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 76
    .local v4, "tokenRequestElement":Lorg/w3c/dom/Element;
    const-string v6, "Id"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RST"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 78
    goto :goto_0

    .line 80
    .end local v3    # "scope":Lcom/microsoft/onlineid/ISecurityScope;
    .end local v4    # "tokenRequestElement":Lorg/w3c/dom/Element;
    :cond_1
    return-void
.end method

.method protected abstract getRequestedScopes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/onlineid/ISecurityScope;",
            ">;"
        }
    .end annotation
.end method
