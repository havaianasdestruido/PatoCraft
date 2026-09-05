.class public abstract Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;
.super Ljava/lang/Object;
.source "AbstractXLEHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getHttpStatusAndStreamInternal(Lorg/apache/http/client/methods/HttpUriRequest;Z)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 10
    .param p1, "httpGet"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "printStreamDebug"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v5, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    invoke-direct {v5}, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;-><init>()V

    .line 25
    .local v5, "rv":Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 28
    .local v4, "response":Lorg/apache/http/HttpResponse;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 29
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusLine:Ljava/lang/String;

    .line 30
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    iput v6, v5, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusCode:I

    .line 34
    :cond_0
    if-eqz v4, :cond_1

    const-string v6, "Location"

    invoke-interface {v4, v6}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 35
    const-string v6, "Location"

    invoke-interface {v4, v6}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->redirectUrl:Ljava/lang/String;

    .line 39
    :cond_1
    if-eqz v4, :cond_2

    .line 40
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v6

    iput-object v6, v5, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->headers:[Lorg/apache/http/Header;

    .line 44
    :cond_2
    if-nez v4, :cond_4

    const/4 v3, 0x0

    .line 45
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    :goto_0
    if-eqz v3, :cond_3

    .line 47
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 48
    .local v0, "buffer":[B
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v6, v5, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->stream:Ljava/io/InputStream;

    .line 49
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 51
    const-string v6, "Content-Encoding"

    invoke-interface {v4, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 52
    .local v1, "contentEncodingHeader":Lorg/apache/http/Header;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gzip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 53
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    iget-object v7, v5, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->stream:Ljava/io/InputStream;

    invoke-direct {v6, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, v5, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->stream:Ljava/io/InputStream;

    .line 67
    .end local v0    # "buffer":[B
    .end local v1    # "contentEncodingHeader":Lorg/apache/http/Header;
    :cond_3
    return-object v5

    .line 44
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    :cond_4
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 57
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/Exception;
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 61
    if-eqz v5, :cond_5

    iget-object v6, v5, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->stream:Ljava/io/InputStream;

    if-eqz v6, :cond_5

    .line 62
    invoke-virtual {v5}, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->close()V

    .line 64
    :cond_5
    new-instance v6, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v8, 0x4

    invoke-direct {v6, v8, v9, v2}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    throw v6
.end method
