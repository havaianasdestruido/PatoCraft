.class public Lcom/microsoft/xbox/toolkit/network/XLEHttpClient;
.super Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;
.source "XLEHttpClient.java"


# instance fields
.field client:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "connectionManager"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;-><init>()V

    .line 17
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/network/XLEHttpClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 18
    return-void
.end method


# virtual methods
.method protected execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 3
    .param p1, "get"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XLEHttpClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v2, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v2}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-virtual {v1, p1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 22
    .local v0, "rv":Lorg/apache/http/HttpResponse;
    return-object v0
.end method
