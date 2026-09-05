.class public Lcom/microsoft/onlineid/internal/transport/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# static fields
.field private static final GetMethod:Ljava/lang/String; = "GET"

.field private static final PostMethod:Ljava/lang/String; = "POST"

.field public static final SdkIdentifier:Ljava/lang/String; = "MsaAndroidSdk"


# instance fields
.field private _connectionTimeoutMilliseconds:I

.field private _customUserAgentString:Ljava/lang/String;

.field private _httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

.field private _readTimeoutMilliseconds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const v0, 0xea60

    iput v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_connectionTimeoutMilliseconds:I

    .line 30
    const/16 v0, 0x7530

    iput v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_readTimeoutMilliseconds:I

    return-void
.end method

.method public static buildUserAgentString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/PackageInfoHelper;->getCurrentAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MsaAndroidSdk/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 324
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/Resources;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/transport/Transport;->mergeUserAgentStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeConnection(Ljava/net/URL;)V
    .locals 3
    .param p1, "targetUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-direct {v1, p1}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;-><init>(Ljava/net/URL;)V

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    .line 117
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->openConnection()V

    .line 118
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    iget v2, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_connectionTimeoutMilliseconds:I

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setConnectTimeout(I)V

    .line 119
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    iget v2, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_readTimeoutMilliseconds:I

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setReadTimeout(I)V

    .line 120
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setDoInput(Z)V

    .line 121
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setUseCaches(Z)V

    .line 122
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/Transport;->setUserAgent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setUrl(Ljava/net/URL;)V

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static mergeUserAgentStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userAgentString1"    # Ljava/lang/String;
    .param p1, "userAgentString2"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    .end local p1    # "userAgentString2":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 340
    .restart local p1    # "userAgentString2":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 342
    goto :goto_0

    .line 346
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private setUserAgent()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_customUserAgentString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 137
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    const-string v1, "User-Agent"

    const-string v2, "http.agent"

    .line 139
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_customUserAgentString:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/microsoft/onlineid/internal/transport/Transport;->mergeUserAgentStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method appendCustomUserAgentString(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgentString"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_customUserAgentString:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/transport/Transport;->mergeUserAgentStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_customUserAgentString:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public closeConnection()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->disconnect()V

    .line 220
    return-void
.end method

.method public getConnectionTimeoutMilliseconds()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_connectionTimeoutMilliseconds:I

    return v0
.end method

.method public getReadTimeoutMilliseconds()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_readTimeoutMilliseconds:I

    return v0
.end method

.method public getRequestStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    new-instance v1, Lcom/microsoft/onlineid/exception/NetworkException;

    const-string v2, "A GET request cannot have an OutputStream"

    invoke-direct {v1, v2}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 208
    :catch_0
    move-exception v0

    .line 210
    .local v0, "io":Ljava/io/IOException;
    new-instance v1, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 173
    :catch_0
    move-exception v0

    .line 175
    .local v0, "io":Ljava/io/IOException;
    new-instance v1, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getResponseDate()J
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResponseStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    .line 153
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->getErrorStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "io":Ljava/io/IOException;
    new-instance v1, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public openGetRequest(Ljava/net/URL;)V
    .locals 3
    .param p1, "targetUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URL cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/transport/Transport;->initializeConnection(Ljava/net/URL;)V

    .line 87
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/net/ProtocolException;
    new-instance v1, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-virtual {v0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public openPostRequest(Ljava/net/URL;)V
    .locals 3
    .param p1, "targetUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URL cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/transport/Transport;->initializeConnection(Ljava/net/URL;)V

    .line 60
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setRequestMethod(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setConnectionTimeoutMilliseconds(I)V
    .locals 2
    .param p1, "newConnectionTimeout"    # I

    .prologue
    .line 250
    if-gez p1, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection timeout value is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    iput p1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_connectionTimeoutMilliseconds:I

    .line 256
    return-void
.end method

.method setHttpsURLConnectionWrapper(Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;)V
    .locals 0
    .param p1, "httpsURLConnectionWrapper"    # Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    .line 312
    return-void
.end method

.method public setReadTimeoutMilliseconds(I)V
    .locals 2
    .param p1, "newReadTimeout"    # I

    .prologue
    .line 275
    if-gez p1, :cond_0

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Read timeout value is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    iput p1, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_readTimeoutMilliseconds:I

    .line 281
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/Transport;->_httpsURLConnectionWrapper:Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->setUseCaches(Z)V

    .line 291
    return-void
.end method
