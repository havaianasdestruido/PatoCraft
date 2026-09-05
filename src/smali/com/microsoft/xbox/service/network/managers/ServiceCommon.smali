.class public Lcom/microsoft/xbox/service/network/managers/ServiceCommon;
.super Ljava/lang/Object;
.source "ServiceCommon.java"


# static fields
.field public static final MaxBIErrorParamLength:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddWebHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/List;)V
    .locals 3
    .param p0, "httpRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    if-eqz p1, :cond_0

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 51
    .local v0, "header":Lorg/apache/http/Header;
    invoke-interface {p0, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 54
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_0
    return-void
.end method

.method private static ParseHttpResponseForStatus(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->ParseHttpResponseForStatus(Ljava/lang/String;ILjava/lang/String;Ljava/io/InputStream;)V

    .line 107
    return-void
.end method

.method private static ParseHttpResponseForStatus(Ljava/lang/String;ILjava/lang/String;Ljava/io/InputStream;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "statusLine"    # Ljava/lang/String;
    .param p3, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0xf

    const/4 v4, 0x0

    const/16 v5, 0x190

    .line 110
    const/16 v1, 0xc8

    if-lt p1, v1, :cond_0

    if-ge p1, v5, :cond_0

    const/4 v0, 0x1

    .line 112
    .local v0, "success":Z
    :goto_0
    if-nez v0, :cond_9

    .line 113
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 114
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v1

    .line 110
    .end local v0    # "success":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    .restart local v0    # "success":Z
    :cond_1
    const/16 v1, 0x191

    if-eq p1, v1, :cond_2

    const/16 v1, 0x193

    if-ne p1, v1, :cond_3

    .line 116
    :cond_2
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v2, 0x3fc

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v1

    .line 117
    :cond_3
    if-ne p1, v5, :cond_5

    .line 119
    if-nez p3, :cond_4

    .line 120
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v1

    .line 122
    :cond_4
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-static {p3}, Lcom/microsoft/xbox/toolkit/StreamUtil;->ReadAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v1

    .line 124
    :cond_5
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_6

    .line 125
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v2, 0xd

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v1

    .line 126
    :cond_6
    const/16 v1, 0x1f7

    if-ne p1, v1, :cond_7

    .line 127
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v2, 0x12

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v1

    .line 128
    :cond_7
    const/16 v1, 0x194

    if-ne p1, v1, :cond_8

    .line 129
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v2, 0x15

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v1

    .line 131
    :cond_8
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v2, 0x4

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v1

    .line 134
    :cond_9
    return-void
.end method

.method public static delete(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    invoke-static {p0, p1}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->deleteWithStatus(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    .line 71
    .local v0, "statusCode":I
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :try_start_0
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->delete(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->delete(Ljava/lang/String;Ljava/util/List;[B)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v2, 0x5

    invoke-direct {v1, v2, v3, v0}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    throw v1
.end method

.method public static delete(Ljava/lang/String;Ljava/util/List;[B)Z
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;[B)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    const/4 v5, 0x0

    .line 83
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/UrlUtil;->getEncodedUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    .line 84
    .local v4, "uri":Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    .line 86
    new-instance v3, Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-direct {v3}, Lcom/microsoft/xbox/toolkit/TimeMonitor;-><init>()V

    .line 88
    .local v3, "stopwatch":Lcom/microsoft/xbox/toolkit/TimeMonitor;
    new-instance v1, Lcom/microsoft/xbox/service/network/managers/HttpDeleteWithRequestBody;

    invoke-direct {v1, v4}, Lcom/microsoft/xbox/service/network/managers/HttpDeleteWithRequestBody;-><init>(Ljava/net/URI;)V

    .line 89
    .local v1, "httpDelete":Lcom/microsoft/xbox/service/network/managers/HttpDeleteWithRequestBody;
    if-eqz p2, :cond_0

    array-length v6, p2

    if-lez v6, :cond_0

    .line 91
    :try_start_0
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v6, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v6}, Lcom/microsoft/xbox/service/network/managers/HttpDeleteWithRequestBody;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    invoke-static {v1, p0, p1, v5, v5}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/List;ZI)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object v2

    .line 99
    .local v2, "statusAndStream":Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    iget v6, v2, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusCode:I

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_1

    iget v6, v2, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusCode:I

    const/16 v7, 0xcc

    if-ne v6, v7, :cond_2

    :cond_1
    const/4 v5, 0x1

    .line 100
    .local v5, "value":Z
    :cond_2
    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->close()V

    .line 101
    return v5

    .line 92
    .end local v2    # "statusAndStream":Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .end local v5    # "value":Z
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v8, 0x5

    invoke-direct {v6, v8, v9, v0}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    throw v6
.end method

.method public static deleteWithStatus(Ljava/lang/String;Ljava/util/List;)I
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    const/4 v4, 0x0

    .line 57
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/UrlUtil;->getEncodedUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 58
    .local v3, "uri":Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    .line 60
    new-instance v2, Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-direct {v2}, Lcom/microsoft/xbox/toolkit/TimeMonitor;-><init>()V

    .line 62
    .local v2, "stopwatch":Lcom/microsoft/xbox/toolkit/TimeMonitor;
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    .line 63
    .local v0, "httpDelete":Lorg/apache/http/client/methods/HttpDelete;
    invoke-static {v0, p0, p1, v4, v4}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/List;ZI)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object v1

    .line 65
    .local v1, "statusAndStream":Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->close()V

    .line 66
    iget v4, v1, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusCode:I

    return v4
.end method

.method private static excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/List;ZI)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 6
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "expectResponseEntity"    # Z
    .param p4, "timeoutOverride"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;ZI)",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 216
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/List;ZIZ)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object v0

    return-object v0
.end method

.method private static excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/List;ZIZ)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 14
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "expectResponseEntity"    # Z
    .param p4, "timeoutOverride"    # I
    .param p5, "addUserObjectFromResponse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;ZIZ)",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 220
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    move-object/from16 v0, p2

    invoke-static {p0, v0}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->AddWebHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/List;)V

    .line 222
    new-instance v10, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    invoke-direct {v10}, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;-><init>()V

    .line 224
    .local v10, "rv":Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    sget-object v11, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->networkOperationsFactory:Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->getHttpClient(I)Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    move-result-object v3

    .line 226
    .local v3, "client":Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;
    const/4 v11, 0x1

    invoke-virtual {v3, p0, v11}, Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;->getHttpStatusAndStreamInternal(Lorg/apache/http/client/methods/HttpUriRequest;Z)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object v10

    .line 230
    if-nez p5, :cond_0

    .line 231
    :try_start_0
    iget v11, v10, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusCode:I

    iget-object v12, v10, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusLine:Ljava/lang/String;

    invoke-static {p1, v11, v12}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->ParseHttpResponseForStatus(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    iget-object v11, v10, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->stream:Ljava/io/InputStream;

    if-nez v11, :cond_7

    if-eqz p3, :cond_7

    .line 264
    new-instance v11, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v12, 0x7

    invoke-direct {v11, v12, v13}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v11

    .line 233
    :cond_0
    :try_start_1
    iget v11, v10, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusCode:I

    iget-object v12, v10, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusLine:Ljava/lang/String;

    iget-object v13, v10, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->stream:Ljava/io/InputStream;

    invoke-static {p1, v11, v12, v13}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->ParseHttpResponseForStatus(Ljava/lang/String;ILjava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v4

    .line 238
    .local v4, "e":Lcom/microsoft/xbox/toolkit/XLEException;
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 239
    .local v2, "callStackJson":Lcom/google/gson/JsonObject;
    new-instance v8, Lcom/google/gson/JsonObject;

    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V

    .line 240
    .local v8, "responseJson":Lcom/google/gson/JsonObject;
    const-string v7, ""

    .line 241
    .local v7, "responseDescription":Ljava/lang/String;
    if-nez v10, :cond_4

    const/4 v9, 0x0

    .line 242
    .local v9, "responseStatusCode":I
    :goto_1
    const-string v6, ""

    .line 243
    .local v6, "requestUrl":Ljava/lang/String;
    if-eqz p0, :cond_5

    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, "requestMethod":Ljava/lang/String;
    :goto_2
    if-eqz v10, :cond_1

    iget-object v11, v10, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusLine:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 246
    iget-object v11, v10, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusLine:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x800

    if-le v11, v12, :cond_6

    iget-object v11, v10, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusLine:Ljava/lang/String;

    const/4 v12, 0x0

    const/16 v13, 0x800

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 248
    :cond_1
    :goto_3
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 249
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    .line 253
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x800

    if-le v11, v12, :cond_3

    const/4 v11, 0x0

    const/16 v12, 0x800

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 254
    :cond_3
    const-string v11, "Request"

    invoke-virtual {v2, v11, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v11, "code"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 256
    const-string v11, "description"

    invoke-virtual {v8, v11, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v11, "Response"

    invoke-virtual {v2, v11, v8}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 259
    throw v4

    .line 241
    .end local v5    # "requestMethod":Ljava/lang/String;
    .end local v6    # "requestUrl":Ljava/lang/String;
    .end local v9    # "responseStatusCode":I
    :cond_4
    iget v9, v10, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusCode:I

    goto :goto_1

    .line 243
    .restart local v6    # "requestUrl":Ljava/lang/String;
    .restart local v9    # "responseStatusCode":I
    :cond_5
    const-string v5, ""

    goto :goto_2

    .line 246
    .restart local v5    # "requestMethod":Ljava/lang/String;
    :cond_6
    iget-object v7, v10, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusLine:Ljava/lang/String;

    goto :goto_3

    .line 267
    .end local v2    # "callStackJson":Lcom/google/gson/JsonObject;
    .end local v4    # "e":Lcom/microsoft/xbox/toolkit/XLEException;
    .end local v5    # "requestMethod":Ljava/lang/String;
    .end local v6    # "requestUrl":Ljava/lang/String;
    .end local v7    # "responseDescription":Ljava/lang/String;
    .end local v8    # "responseJson":Lcom/google/gson/JsonObject;
    .end local v9    # "responseStatusCode":I
    :cond_7
    return-object v10
.end method

.method public static getStreamAndStatus(Ljava/lang/String;Ljava/util/List;)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->getStreamAndStatus(Ljava/lang/String;Ljava/util/List;ZI)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object v0

    .line 138
    .local v0, "statusAndStream":Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->redirectUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    iget-object v1, v0, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->redirectUrl:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->getStreamAndStatus(Ljava/lang/String;Ljava/util/List;)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object v0

    .line 141
    :cond_0
    return-object v0
.end method

.method private static getStreamAndStatus(Ljava/lang/String;Ljava/util/List;ZI)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "urlEncode"    # Z
    .param p3, "timeoutOverride"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;ZI)",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->getStreamAndStatus(Ljava/lang/String;Ljava/util/List;ZIZ)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object v0

    return-object v0
.end method

.method private static getStreamAndStatus(Ljava/lang/String;Ljava/util/List;ZIZ)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "urlEncode"    # Z
    .param p3, "timeoutOverride"    # I
    .param p4, "addUserObjectFromBadRequestResponse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;ZIZ)",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    const/4 v6, 0x0

    .line 151
    .local v6, "uri":Ljava/net/URI;
    if-eqz p2, :cond_0

    .line 152
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/UrlUtil;->getEncodedUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    .line 160
    :goto_0
    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    .line 162
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 164
    .local v0, "httpGet":Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/List;ZIZ)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object v1

    return-object v1

    .line 155
    .end local v0    # "httpGet":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_0
    :try_start_0
    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "uri":Ljava/net/URI;
    .local v7, "uri":Ljava/net/URI;
    move-object v6, v7

    .line 157
    .end local v7    # "uri":Ljava/net/URI;
    .restart local v6    # "uri":Ljava/net/URI;
    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static postStreamWithStatus(Ljava/lang/String;Ljava/util/List;[B)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;[B)",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    const/4 v4, 0x0

    .line 176
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/UrlUtil;->getEncodedUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 177
    .local v2, "uri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    .line 179
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 180
    .local v1, "post":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_0

    array-length v3, p2

    if-lez v3, :cond_0

    .line 182
    :try_start_0
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v3, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_0
    invoke-static {v1, p0, p1, v4, v4}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/List;ZI)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object v3

    return-object v3

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v4, 0x5

    invoke-direct {v3, v4, v5, v0}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    throw v3
.end method

.method public static postStringWithStatus(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->postStreamWithStatus(Ljava/lang/String;Ljava/util/List;[B)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v2, 0x5

    invoke-direct {v1, v2, v3, v0}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    throw v1
.end method

.method public static putStreamWithStatus(Ljava/lang/String;Ljava/util/List;[B)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;[B)",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    const/4 v4, 0x0

    .line 200
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/UrlUtil;->getEncodedUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 201
    .local v2, "uri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    .line 203
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    .line 204
    .local v1, "put":Lorg/apache/http/client/methods/HttpPut;
    if-eqz p2, :cond_0

    array-length v3, p2

    if-lez v3, :cond_0

    .line 206
    :try_start_0
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v3, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    invoke-static {v1, p0, p1, v4, v4}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/List;ZI)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object v3

    return-object v3

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v4, 0x5

    invoke-direct {v3, v4, v5, v0}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    throw v3
.end method

.method public static putStringWithStatus(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->putStreamWithStatus(Ljava/lang/String;Ljava/util/List;[B)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v2, 0x5

    invoke-direct {v1, v2, v3, v0}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    throw v1
.end method
