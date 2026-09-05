.class public abstract Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;
.super Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;
.source "AbstractSoapRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Lcom/microsoft/onlineid/sts/response/AbstractSoapResponse;",
        ">",
        "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest",
        "<TResponseType;>;"
    }
.end annotation


# static fields
.field public static final MsaAppGuid:Ljava/lang/String; = "{F501FD64-9070-46AB-993C-6F7B71D8D883}"

.field public static final PSNamespace:Ljava/lang/String; = "http://schemas.microsoft.com/Passport/SoapServices/PPCRL"

.field public static final PsfNamespace:Ljava/lang/String; = "http://schemas.microsoft.com/Passport/SoapServices/SOAPFault"

.field private static final RequestExpiryMilliseconds:I = 0x493e0

.field public static final SamlNamespace:Ljava/lang/String; = "urn:oasis:names:tc:SAML:1.0:assertion"

.field public static final SoapNamespace:Ljava/lang/String; = "http://www.w3.org/2003/05/soap-envelope"

.field public static final WsaNamespace:Ljava/lang/String; = "http://www.w3.org/2005/08/addressing"

.field public static final WspNamespace:Ljava/lang/String; = "http://schemas.xmlsoap.org/ws/2004/09/policy"

.field public static final WsscNamespace:Ljava/lang/String; = "http://schemas.xmlsoap.org/ws/2005/02/sc"

.field public static final WsseNamespace:Ljava/lang/String; = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"

.field public static final WstNamespace:Ljava/lang/String; = "http://schemas.xmlsoap.org/ws/2005/02/trust"

.field public static final WsuNamespace:Ljava/lang/String; = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest<TResponseType;>;"
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected addEnvelopeNamespaces(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "envelope"    # Lorg/w3c/dom/Element;

    .prologue
    .line 89
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest<TResponseType;>;"
    const-string v0, "xmlns:ps"

    const-string v1, "http://schemas.microsoft.com/Passport/SoapServices/PPCRL"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "xmlns:wsse"

    const-string v1, "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "xmlns:saml"

    const-string v1, "urn:oasis:names:tc:SAML:1.0:assertion"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "xmlns:wsp"

    const-string v1, "http://schemas.xmlsoap.org/ws/2004/09/policy"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "xmlns:wsu"

    const-string v1, "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "xmlns:wsa"

    const-string v1, "http://www.w3.org/2005/08/addressing"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "xmlns:wssc"

    const-string v1, "http://schemas.xmlsoap.org/ws/2005/02/sc"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "xmlns:wst"

    const-string v1, "http://schemas.xmlsoap.org/ws/2005/02/trust"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method protected final appendDeviceDAToken(Lorg/w3c/dom/Element;Lcom/microsoft/onlineid/sts/DAToken;)V
    .locals 4
    .param p1, "parent"    # Lorg/w3c/dom/Element;
    .param p2, "deviceDAToken"    # Lcom/microsoft/onlineid/sts/DAToken;

    .prologue
    .line 207
    .line 208
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest<TResponseType;>;"
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->getClockSkewManager()Lcom/microsoft/onlineid/sts/ClockSkewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getCurrentServerTime()Ljava/util/Date;

    move-result-object v2

    const-string v3, "{F501FD64-9070-46AB-993C-6F7B71D8D883}"

    .line 207
    invoke-virtual {p2, v2, v3}, Lcom/microsoft/onlineid/sts/DAToken;->getOneTimeSignedCredential(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "signedDeviceDA":Ljava/lang/String;
    const-string v2, "wsse:BinarySecurityToken"

    invoke-static {p1, v2, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 211
    .local v0, "securityTokenElement":Lorg/w3c/dom/Element;
    const-string v2, "ValueType"

    const-string v3, "urn:liveid:sha1device"

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v2, "Id"

    const-string v3, "DeviceDAToken"

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method protected final appendTimestamp(Lorg/w3c/dom/Element;)V
    .locals 8
    .param p1, "parent"    # Lorg/w3c/dom/Element;

    .prologue
    .line 176
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest<TResponseType;>;"
    const-string v4, "wsu:Timestamp"

    invoke-static {p1, v4}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 177
    .local v3, "timestamp":Lorg/w3c/dom/Element;
    const-string v4, "wsu:Id"

    const-string v5, "Timestamp"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v4, "xmlns:wsu"

    const-string v5, "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 181
    .local v2, "format":Ljava/text/SimpleDateFormat;
    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 183
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->getClockSkewManager()Lcom/microsoft/onlineid/sts/ClockSkewManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getCurrentServerTime()Ljava/util/Date;

    move-result-object v0

    .line 184
    .local v0, "currentTime":Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    add-long/2addr v4, v6

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 187
    .local v1, "expiry":Ljava/util/Date;
    const-string v4, "wsu:Created"

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 189
    const-string v4, "wsu:Expires"

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 192
    instance-of v4, p0, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    if-eqz v4, :cond_0

    .line 194
    check-cast p0, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    .end local p0    # "this":Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest<TResponseType;>;"
    invoke-interface {p0}, Lcom/microsoft/onlineid/sts/request/ISignableRequest;->getXmlSigner()Lcom/microsoft/onlineid/sts/XmlSigner;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/microsoft/onlineid/sts/XmlSigner;->addElementToSign(Lorg/w3c/dom/Element;)V

    .line 196
    :cond_0
    return-void
.end method

.method protected buildAuthInfo(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "authInfo"    # Lorg/w3c/dom/Element;

    .prologue
    .line 144
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest<TResponseType;>;"
    const-string v0, "ps:BinaryVersion"

    const-string v1, "11"

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 145
    const-string v0, "ps:DeviceType"

    const-string v1, "Android"

    invoke-static {p1, v0, v1}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 146
    return-void
.end method

.method public buildRequest()Lorg/w3c/dom/Document;
    .locals 7

    .prologue
    .line 58
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest<TResponseType;>;"
    const-string v5, "http://www.w3.org/2003/05/soap-envelope"

    const-string v6, "s:Envelope"

    invoke-virtual {p0, v5, v6}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->createBlankDocument(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 61
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 62
    .local v2, "envelope":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->addEnvelopeNamespaces(Lorg/w3c/dom/Element;)V

    .line 65
    const-string v5, "s:Header"

    invoke-static {v2, v5}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 66
    .local v3, "header":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v3}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->buildSoapHeader(Lorg/w3c/dom/Element;)V

    .line 69
    const-string v5, "s:Body"

    invoke-static {v2, v5}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 70
    .local v0, "body":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->buildSoapBody(Lorg/w3c/dom/Element;)V

    .line 73
    instance-of v5, p0, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    if-eqz v5, :cond_0

    move-object v4, p0

    .line 75
    check-cast v4, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    .line 76
    .local v4, "signableRequest":Lcom/microsoft/onlineid/sts/request/ISignableRequest;
    invoke-interface {v4}, Lcom/microsoft/onlineid/sts/request/ISignableRequest;->getXmlSigner()Lcom/microsoft/onlineid/sts/XmlSigner;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/microsoft/onlineid/sts/XmlSigner;->sign(Lcom/microsoft/onlineid/sts/request/ISignableRequest;)V

    .line 79
    .end local v4    # "signableRequest":Lcom/microsoft/onlineid/sts/request/ISignableRequest;
    :cond_0
    return-object v1
.end method

.method protected abstract buildSecurityNode(Lorg/w3c/dom/Element;)V
.end method

.method protected abstract buildSoapBody(Lorg/w3c/dom/Element;)V
.end method

.method protected buildSoapHeader(Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "header"    # Lorg/w3c/dom/Element;

    .prologue
    .line 107
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest<TResponseType;>;"
    const-string v2, "wsa:Action"

    const-string v3, "http://schemas.xmlsoap.org/ws/2005/02/trust/RST/Issue"

    invoke-static {p1, v2, v3}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "s:mustUnderstand"

    const-string v4, "1"

    .line 108
    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v2, "wsa:To"

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->getDestination()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "s:mustUnderstand"

    const-string v4, "1"

    .line 111
    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "wsa:MessageID"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 118
    const-string v2, "ps:AuthInfo"

    invoke-static {p1, v2}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 119
    .local v0, "authInfo":Lorg/w3c/dom/Element;
    const-string v2, "xmlns:ps"

    const-string v3, "http://schemas.microsoft.com/Passport/SoapServices/PPCRL"

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "Id"

    const-string v3, "PPAuthInfo"

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->buildAuthInfo(Lorg/w3c/dom/Element;)V

    .line 125
    instance-of v2, p0, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 127
    check-cast v2, Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    invoke-interface {v2}, Lcom/microsoft/onlineid/sts/request/ISignableRequest;->getXmlSigner()Lcom/microsoft/onlineid/sts/XmlSigner;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/microsoft/onlineid/sts/XmlSigner;->addElementToSign(Lorg/w3c/dom/Element;)V

    .line 131
    :cond_0
    const-string v2, "wsse:Security"

    invoke-static {p1, v2}, Lcom/microsoft/onlineid/sts/request/Requests;->appendElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 132
    .local v1, "security":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/sts/request/AbstractSoapRequest;->buildSecurityNode(Lorg/w3c/dom/Element;)V

    .line 133
    return-void
.end method
