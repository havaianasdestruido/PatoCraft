.class public Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;
.super Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;
.source "DeviceProvisionRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest",
        "<",
        "Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private _credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public buildRequest()Lorg/w3c/dom/Document;
    .locals 6

    .prologue
    .line 39
    const/4 v4, 0x0

    const-string v5, "DeviceAddRequest"

    invoke-virtual {p0, v4, v5}, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;->createBlankDocument(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 40
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 42
    .local v0, "addRequestElement":Lorg/w3c/dom/Element;
    const-string v4, "ClientInfo"

    invoke-static {v0, v4}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 43
    .local v2, "clientInfo":Lorg/w3c/dom/Element;
    const-string v4, "name"

    const-string v5, "MSAAndroidApp"

    invoke-interface {v2, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v4, "version"

    const-string v5, "1.0"

    invoke-interface {v2, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v4, "Authentication"

    invoke-static {v0, v4}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 49
    .local v1, "authentication":Lorg/w3c/dom/Element;
    const-string v4, "Membername"

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/DeviceCredentials;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 50
    const-string v4, "Password"

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/DeviceCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 52
    return-object v3
.end method

.method public getEndpoint()Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->DeviceProvision:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    return-object v0
.end method

.method public bridge synthetic instantiateResponse()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;->instantiateResponse()Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;

    move-result-object v0

    return-object v0
.end method

.method public instantiateResponse()Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;

    invoke-direct {v0}, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;-><init>()V

    return-object v0
.end method

.method public setDeviceCredentials(Lcom/microsoft/onlineid/sts/DeviceCredentials;)V
    .locals 0
    .param p1, "credentials"    # Lcom/microsoft/onlineid/sts/DeviceCredentials;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    .line 29
    return-void
.end method
