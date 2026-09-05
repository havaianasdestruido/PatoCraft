.class public abstract Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;
.super Ljava/lang/Object;
.source "AbstractStsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final AppIdentifier:Ljava/lang/String; = "MSAAndroidApp"

.field public static final DeviceType:Ljava/lang/String; = "Android"

.field public static final StsBinaryVersion:Ljava/lang/String; = "11"


# instance fields
.field private _clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

.field private _destination:Ljava/net/URL;

.field private _msaAppVersionCode:I

.field private _transportFactory:Lcom/microsoft/onlineid/internal/transport/TransportFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<TResponseType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateClockSkew(J)V
    .locals 5
    .param p1, "serverTime"    # J

    .prologue
    .line 291
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<TResponseType;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->getClockSkewManager()Lcom/microsoft/onlineid/sts/ClockSkewManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->onTimestampReceived(J)V

    .line 298
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->getClockSkewManager()Lcom/microsoft/onlineid/sts/ClockSkewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getSkewMilliseconds()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logClockSkew(J)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 300
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract buildRequest()Lorg/w3c/dom/Document;
.end method

.method protected final createBlankDocument(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 5
    .param p1, "rootNamespace"    # Ljava/lang/String;
    .param p2, "rootElementName"    # Ljava/lang/String;

    .prologue
    .line 168
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<TResponseType;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 169
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 174
    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v3

    const/4 v4, 0x0

    .line 175
    invoke-interface {v3, p1, p2, v4}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    .local v0, "doc":Lorg/w3c/dom/Document;
    return-object v0

    .line 177
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 181
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Invalid parser configuration."

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected getAnalyticsRequestType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<TResponseType;>;"
    const-string v0, "(none)"

    return-object v0
.end method

.method protected getClockSkewManager()Lcom/microsoft/onlineid/sts/ClockSkewManager;
    .locals 1

    .prologue
    .line 138
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<TResponseType;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    return-object v0
.end method

.method public getDestination()Ljava/net/URL;
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<TResponseType;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->_destination:Ljava/net/URL;

    return-object v0
.end method

.method public abstract getEndpoint()Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
.end method

.method public getMsaAppVersionCode()I
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<TResponseType;>;"
    iget v0, p0, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->_msaAppVersionCode:I

    return v0
.end method

.method protected abstract instantiateResponse()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResponseType;"
        }
    .end annotation
.end method

.method public send()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResponseType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/NetworkException;,
            Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<TResponseType;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->instantiateResponse()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;

    move-result-object v6

    .line 199
    .local v6, "response":Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;, "TResponseType;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->_transportFactory:Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    invoke-virtual {v13}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->createTransport()Lcom/microsoft/onlineid/internal/transport/Transport;

    move-result-object v11

    .line 200
    .local v11, "transport":Lcom/microsoft/onlineid/internal/transport/Transport;
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->getDestination()Ljava/net/URL;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/microsoft/onlineid/internal/transport/Transport;->openPostRequest(Ljava/net/URL;)V

    .line 201
    invoke-virtual {v11}, Lcom/microsoft/onlineid/internal/transport/Transport;->getRequestStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 203
    .local v5, "requestStream":Ljava/io/OutputStream;
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v13

    const-string v14, "STS requests"

    .line 204
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->getAnalyticsRequestType()Ljava/lang/String;

    move-result-object v16

    .line 203
    invoke-interface/range {v13 .. v16}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->createTimedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;

    move-result-object v8

    .line 207
    .local v8, "timer":Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;
    invoke-interface {v8}, Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;->start()Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;

    .line 212
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v3

    .line 213
    .local v3, "factory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v10

    .line 215
    .local v10, "transformer":Ljavax/xml/transform/Transformer;
    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 218
    new-instance v12, Ljava/io/CharArrayWriter;

    invoke-direct {v12}, Ljava/io/CharArrayWriter;-><init>()V

    .line 219
    .local v12, "writer":Ljava/io/CharArrayWriter;
    new-instance v13, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->buildRequest()Lorg/w3c/dom/Document;

    move-result-object v14

    invoke-direct {v13, v14}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v14, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v14, v12}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v10, v13, v14}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 220
    invoke-virtual {v12}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "request":Ljava/lang/String;
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "%s: %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v4, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 223
    .local v9, "trace":Ljava/lang/String;
    new-instance v13, Lcom/microsoft/onlineid/internal/log/RedactableXml;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-direct {v13, v9, v14}, Lcom/microsoft/onlineid/internal/log/RedactableXml;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v13}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Lcom/microsoft/onlineid/internal/log/IRedactable;)V

    .line 226
    sget-object v13, Lcom/microsoft/onlineid/internal/Strings;->Utf8Charset:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/io/OutputStream;->write([B)V

    .line 235
    .end local v4    # "request":Ljava/lang/String;
    .end local v9    # "trace":Ljava/lang/String;
    .end local v12    # "writer":Ljava/io/CharArrayWriter;
    :goto_0
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 238
    invoke-virtual {v11}, Lcom/microsoft/onlineid/internal/transport/Transport;->getResponseStream()Ljava/io/InputStream;

    move-result-object v7

    .line 241
    .local v7, "responseStream":Ljava/io/InputStream;
    invoke-virtual {v11}, Lcom/microsoft/onlineid/internal/transport/Transport;->getResponseDate()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->updateClockSkew(J)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :try_start_1
    invoke-virtual {v6, v7}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->parse(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    :try_start_2
    invoke-interface {v8}, Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;->end()V

    .line 258
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    invoke-virtual {v11}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    .line 281
    return-object v6

    .line 231
    .end local v7    # "responseStream":Ljava/io/InputStream;
    :cond_0
    :try_start_3
    new-instance v13, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->buildRequest()Lorg/w3c/dom/Document;

    move-result-object v14

    invoke-direct {v13, v14}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v14, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v14, v5}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v10, v13, v14}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 261
    .end local v3    # "factory":Ljavax/xml/transform/TransformerFactory;
    .end local v10    # "transformer":Ljavax/xml/transform/Transformer;
    :catch_0
    move-exception v2

    .line 263
    .local v2, "ex":Ljavax/xml/transform/TransformerConfigurationException;
    :try_start_4
    const-string v13, "Unable to configure Transformer"

    invoke-static {v13, v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Unable to configure Transformer"

    invoke-direct {v13, v14, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 278
    .end local v2    # "ex":Ljavax/xml/transform/TransformerConfigurationException;
    :catchall_0
    move-exception v13

    invoke-virtual {v11}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    throw v13

    .line 247
    .restart local v3    # "factory":Ljavax/xml/transform/TransformerFactory;
    .restart local v7    # "responseStream":Ljava/io/InputStream;
    .restart local v10    # "transformer":Ljavax/xml/transform/Transformer;
    :catch_1
    move-exception v2

    .line 249
    .local v2, "ex":Ljava/io/IOException;
    :try_start_5
    const-string v13, "Unable to parse stream."

    invoke-static {v13, v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    new-instance v13, Lcom/microsoft/onlineid/exception/NetworkException;

    const-string v14, "Unable to parse stream."

    invoke-direct {v13, v14, v2}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 255
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    :try_start_6
    invoke-interface {v8}, Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;->end()V

    .line 258
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    throw v13
    :try_end_6
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 266
    .end local v3    # "factory":Ljavax/xml/transform/TransformerFactory;
    .end local v7    # "responseStream":Ljava/io/InputStream;
    .end local v10    # "transformer":Ljavax/xml/transform/Transformer;
    :catch_2
    move-exception v2

    .line 268
    .local v2, "ex":Ljavax/xml/transform/TransformerException;
    :try_start_7
    const-string v13, "Problem occurred transforming XML document"

    invoke-static {v13, v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Problem occurred transforming XML document"

    invoke-direct {v13, v14, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 271
    .end local v2    # "ex":Ljavax/xml/transform/TransformerException;
    :catch_3
    move-exception v2

    .line 273
    .local v2, "ex":Ljava/io/IOException;
    const-string v13, "Unable to close stream"

    invoke-static {v13, v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    new-instance v13, Lcom/microsoft/onlineid/exception/NetworkException;

    const-string v14, "Unable to close stream"

    invoke-direct {v13, v14, v2}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public setClockSkewManager(Lcom/microsoft/onlineid/sts/ClockSkewManager;)V
    .locals 0
    .param p1, "clockSkewManager"    # Lcom/microsoft/onlineid/sts/ClockSkewManager;

    .prologue
    .line 149
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<TResponseType;>;"
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    .line 150
    return-void
.end method

.method public setDestination(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 105
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<TResponseType;>;"
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->_destination:Ljava/net/URL;

    .line 106
    return-void
.end method

.method public setMsaAppVersionCode(I)V
    .locals 0
    .param p1, "versionCode"    # I

    .prologue
    .line 121
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<TResponseType;>;"
    iput p1, p0, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->_msaAppVersionCode:I

    .line 122
    return-void
.end method

.method setTransportFactory(Lcom/microsoft/onlineid/internal/transport/TransportFactory;)V
    .locals 0
    .param p1, "transportFactory"    # Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    .prologue
    .line 130
    .local p0, "this":Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;, "Lcom/microsoft/onlineid/sts/request/AbstractStsRequest<TResponseType;>;"
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/request/AbstractStsRequest;->_transportFactory:Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    .line 131
    return-void
.end method
