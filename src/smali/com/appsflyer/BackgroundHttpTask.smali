.class Lcom/appsflyer/BackgroundHttpTask;
.super Landroid/os/AsyncTask;
.source "BackgroundHttpTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final WAIT_TIMEOUT:I = 0x7530


# instance fields
.field bodyAsString:Ljava/lang/String;

.field bodyParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private conn:Ljava/net/HttpURLConnection;

.field private content:Ljava/lang/String;

.field private error:Z

.field private mContext:Landroid/content/Context;

.field private remoteDebugMode:Z

.field private shouldReadResponse:Z

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/appsflyer/BackgroundHttpTask;->content:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsflyer/BackgroundHttpTask;->error:Z

    .line 37
    iput-object p1, p0, Lcom/appsflyer/BackgroundHttpTask;->mContext:Landroid/content/Context;

    .line 38
    iput-boolean v1, p0, Lcom/appsflyer/BackgroundHttpTask;->remoteDebugMode:Z

    .line 39
    iput-boolean v1, p0, Lcom/appsflyer/BackgroundHttpTask;->shouldReadResponse:Z

    .line 40
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appsflyer/BackgroundHttpTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 56
    :try_start_0
    new-instance v5, Ljava/net/URL;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/appsflyer/BackgroundHttpTask;->url:Ljava/net/URL;

    .line 57
    iget-boolean v5, p0, Lcom/appsflyer/BackgroundHttpTask;->remoteDebugMode:Z

    if-eqz v5, :cond_0

    .line 58
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v5

    iget-object v6, p0, Lcom/appsflyer/BackgroundHttpTask;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/appsflyer/BackgroundHttpTask;->bodyAsString:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/appsflyer/RemoteDebuggingManager;->addServerRequestEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    iget-object v5, p0, Lcom/appsflyer/BackgroundHttpTask;->bodyAsString:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v2, v5

    .line 61
    .local v2, "sizeOfBody":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/appsflyer/BackgroundHttpTask;->url:Ljava/net/URL;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " byte"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-le v2, v8, :cond_3

    const-string v5, "s"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; body = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/appsflyer/BackgroundHttpTask;->bodyAsString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/LogMessages;->logMessageMaskKey(Ljava/lang/String;)V

    .line 63
    iget-object v5, p0, Lcom/appsflyer/BackgroundHttpTask;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v5, p0, Lcom/appsflyer/BackgroundHttpTask;->conn:Ljava/net/HttpURLConnection;

    .line 64
    iget-object v5, p0, Lcom/appsflyer/BackgroundHttpTask;->conn:Ljava/net/HttpURLConnection;

    const/16 v6, 0x7530

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 65
    iget-object v5, p0, Lcom/appsflyer/BackgroundHttpTask;->conn:Ljava/net/HttpURLConnection;

    const/16 v6, 0x7530

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 66
    iget-object v5, p0, Lcom/appsflyer/BackgroundHttpTask;->conn:Ljava/net/HttpURLConnection;

    const-string v6, "POST"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 67
    iget-object v5, p0, Lcom/appsflyer/BackgroundHttpTask;->conn:Ljava/net/HttpURLConnection;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 68
    iget-object v5, p0, Lcom/appsflyer/BackgroundHttpTask;->conn:Ljava/net/HttpURLConnection;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 69
    iget-object v5, p0, Lcom/appsflyer/BackgroundHttpTask;->conn:Ljava/net/HttpURLConnection;

    const-string v6, "Content-Type"

    const-string v7, "application/json"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v5, p0, Lcom/appsflyer/BackgroundHttpTask;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 73
    .local v0, "os":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 74
    .local v4, "writer":Ljava/io/BufferedWriter;
    iget-object v5, p0, Lcom/appsflyer/BackgroundHttpTask;->bodyAsString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 76
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 77
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 78
    iget-object v5, p0, Lcom/appsflyer/BackgroundHttpTask;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 81
    iget-object v5, p0, Lcom/appsflyer/BackgroundHttpTask;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 82
    .local v1, "responseCode":I
    iget-boolean v5, p0, Lcom/appsflyer/BackgroundHttpTask;->shouldReadResponse:Z

    if-eqz v5, :cond_1

    .line 83
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    iget-object v6, p0, Lcom/appsflyer/BackgroundHttpTask;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v6}, Lcom/appsflyer/AppsFlyerLib;->readServerResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/appsflyer/BackgroundHttpTask;->content:Ljava/lang/String;

    .line 85
    :cond_1
    iget-boolean v5, p0, Lcom/appsflyer/BackgroundHttpTask;->remoteDebugMode:Z

    if-eqz v5, :cond_2

    .line 86
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v5

    iget-object v6, p0, Lcom/appsflyer/BackgroundHttpTask;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/appsflyer/BackgroundHttpTask;->content:Ljava/lang/String;

    invoke-virtual {v5, v6, v1, v7}, Lcom/appsflyer/RemoteDebuggingManager;->addServerResponseEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    :cond_2
    const/16 v5, 0xc8

    if-ne v1, v5, :cond_4

    .line 90
    const-string v5, "Status 200 ok"

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "os":Ljava/io/OutputStream;
    .end local v1    # "responseCode":I
    .end local v2    # "sizeOfBody":I
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :goto_1
    iget-object v5, p0, Lcom/appsflyer/BackgroundHttpTask;->content:Ljava/lang/String;

    return-object v5

    .line 61
    .restart local v2    # "sizeOfBody":I
    :cond_3
    :try_start_1
    const-string v5, ""

    goto/16 :goto_0

    .line 92
    .restart local v0    # "os":Ljava/io/OutputStream;
    .restart local v1    # "responseCode":I
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/appsflyer/BackgroundHttpTask;->error:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 95
    .end local v0    # "os":Ljava/io/OutputStream;
    .end local v1    # "responseCode":I
    .end local v2    # "sizeOfBody":I
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v3

    .line 96
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while calling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/appsflyer/BackgroundHttpTask;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    iput-boolean v8, p0, Lcom/appsflyer/BackgroundHttpTask;->error:Z

    goto :goto_1
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/appsflyer/BackgroundHttpTask;->conn:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appsflyer/BackgroundHttpTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/appsflyer/BackgroundHttpTask;->error:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection call succeeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 44
    iget-object v1, p0, Lcom/appsflyer/BackgroundHttpTask;->bodyAsString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/appsflyer/BackgroundHttpTask;->bodyParameters:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 46
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appsflyer/BackgroundHttpTask;->bodyAsString:Ljava/lang/String;

    .line 50
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method public setRemoteDebugMode(Z)V
    .locals 0
    .param p1, "remoteDebugMode"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/appsflyer/BackgroundHttpTask;->remoteDebugMode:Z

    .line 118
    return-void
.end method

.method public setShouldReadResponse(Z)V
    .locals 0
    .param p1, "shouldReadResponse"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/appsflyer/BackgroundHttpTask;->shouldReadResponse:Z

    .line 126
    return-void
.end method
