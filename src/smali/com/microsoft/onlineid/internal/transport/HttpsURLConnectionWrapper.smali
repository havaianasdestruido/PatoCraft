.class public Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;
.super Ljava/lang/Object;
.source "HttpsURLConnectionWrapper.java"


# instance fields
.field private _connection:Ljavax/net/ssl/HttpsURLConnection;

.field private _url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URL cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_url:Ljava/net/URL;

    .line 33
    return-void
.end method

.method private verifyConnectionIsOpened()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "openConnection should have been called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    .line 168
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    .line 149
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 150
    return-void
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    .line 158
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    .line 140
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    .line 131
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    .line 122
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    .line 104
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    .line 86
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    .line 113
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public openConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    .line 42
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    .line 59
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 60
    return-void
.end method

.method public setDoInput(Z)V
    .locals 1
    .param p1, "doInput"    # Z

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    .line 77
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 78
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1
    .param p1, "doOutput"    # Z

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    .line 95
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 96
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    .line 68
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 69
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    .line 50
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public setUrl(Ljava/net/URL;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->disconnect()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_url:Ljava/net/URL;

    .line 198
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    goto :goto_0
.end method

.method public setUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->verifyConnectionIsOpened()V

    .line 178
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/transport/HttpsURLConnectionWrapper;->_connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 179
    return-void
.end method
