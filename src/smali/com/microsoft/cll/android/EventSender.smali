.class public Lcom/microsoft/cll/android/EventSender;
.super Ljava/lang/Object;
.source "EventSender.java"


# instance fields
.field private final NO_HTTPS_CONN:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

.field private final endpoint:Ljava/net/URL;

.field private final logger:Lcom/microsoft/cll/android/ILogger;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/net/URL;
    .param p2, "clientTelemetry"    # Lcom/microsoft/cll/android/ClientTelemetry;
    .param p3, "logger"    # Lcom/microsoft/cll/android/ILogger;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "URL didn\'t return HttpsUrlConnection instance."

    iput-object v0, p0, Lcom/microsoft/cll/android/EventSender;->NO_HTTPS_CONN:Ljava/lang/String;

    .line 28
    const-string v0, "AndroidCll-EventSender"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventSender;->TAG:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/microsoft/cll/android/EventSender;->endpoint:Ljava/net/URL;

    .line 36
    iput-object p2, p0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    .line 37
    iput-object p3, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 38
    return-void
.end method

.method private getTime()J
    .locals 2

    .prologue
    .line 304
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected openConnection(IZLcom/microsoft/cll/android/TicketHeaders;)Ljava/net/HttpURLConnection;
    .locals 10
    .param p1, "length"    # I
    .param p2, "compressed"    # Z
    .param p3, "ticketHeaders"    # Lcom/microsoft/cll/android/TicketHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 180
    const-string v5, ""

    .line 181
    .local v5, "ticketString":Ljava/lang/String;
    if-eqz p3, :cond_1

    iget-object v6, p3, Lcom/microsoft/cll/android/TicketHeaders;->xtokens:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 184
    const/4 v3, 0x1

    .line 185
    .local v3, "first":Z
    iget-object v6, p3, Lcom/microsoft/cll/android/TicketHeaders;->xtokens:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 189
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 194
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\"=\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 195
    const/4 v3, 0x0

    .line 196
    goto :goto_0

    .line 200
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "first":Z
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSS\'Z\'"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 201
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 204
    iget-object v6, p0, Lcom/microsoft/cll/android/EventSender;->endpoint:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 207
    .local v0, "connection":Ljava/net/URLConnection;
    instance-of v6, v0, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_4

    move-object v4, v0

    .line 209
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 210
    .local v4, "httpsConnection":Ljava/net/HttpURLConnection;
    sget-object v6, Lcom/microsoft/cll/android/SettingsStore$Settings;->HTTPTIMEOUTINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v6}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 211
    sget-object v6, Lcom/microsoft/cll/android/SettingsStore$Settings;->HTTPTIMEOUTINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v6}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 212
    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 213
    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 214
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 216
    const-string v6, "POST"

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 217
    const-string v6, "Content-Type"

    const-string v7, "application/x-json-stream; charset=utf-8"

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v6, "X-UploadTime"

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v6, "Content-Length"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    if-eqz p2, :cond_2

    .line 224
    const-string v6, "Accept"

    const-string v7, "application/json"

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v6, "Accept-Encoding"

    const-string v7, "gzip, deflate"

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v6, "Content-Encoding"

    const-string v7, "deflate"

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_2
    const-string v6, ""

    if-eq v5, v6, :cond_3

    .line 232
    const-string v6, "X-Tickets"

    invoke-virtual {v4, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v6, "X-AuthXToken"

    iget-object v7, p3, Lcom/microsoft/cll/android/TicketHeaders;->authXToken:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v6, p3, Lcom/microsoft/cll/android/TicketHeaders;->msaDeviceTicket:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 239
    const-string v6, "X-AuthMsaDeviceTicket"

    iget-object v7, p3, Lcom/microsoft/cll/android/TicketHeaders;->msaDeviceTicket:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_3
    return-object v4

    .line 247
    .end local v4    # "httpsConnection":Ljava/net/HttpURLConnection;
    :cond_4
    iget-object v6, p0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementVortexHttpFailures(I)V

    .line 248
    new-instance v6, Ljava/io/IOException;

    const-string v7, "URL didn\'t return HttpsUrlConnection instance."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected processResponseBody(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 1
    .param p1, "reader"    # Ljava/io/BufferedReader;

    .prologue
    .line 254
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/cll/android/EventSender;->processResponseBodyConditionally(Ljava/io/BufferedReader;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected processResponseBodyConditionally(Ljava/io/BufferedReader;Z)Ljava/lang/String;
    .locals 8
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "parseJson"    # Z

    .prologue
    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v4, "responseBuilder":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "AndroidCll-EventSender"

    const-string v7, "Couldn\'t read response body"

    invoke-interface {v5, v6, v7}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    if-eqz p2, :cond_1

    .line 282
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 283
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "rej"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 284
    .local v3, "rejectCount":I
    iget-object v5, p0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {v5, v3}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementRejectDropCount(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 294
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "rejectCount":I
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "AndroidCll-EventSender"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 285
    :catch_1
    move-exception v0

    .line 287
    .local v0, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "AndroidCll-EventSender"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 288
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v5, p0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v6, "AndroidCll-EventSender"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public sendEvent([BZLcom/microsoft/cll/android/TicketHeaders;)Lcom/microsoft/cll/android/EventSendResult;
    .locals 22
    .param p1, "body"    # [B
    .param p2, "compressed"    # Z
    .param p3, "ticketHeaders"    # Lcom/microsoft/cll/android/TicketHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v14, Lcom/microsoft/cll/android/EventSendResult;

    invoke-direct {v14}, Lcom/microsoft/cll/android/EventSendResult;-><init>()V

    .line 51
    .local v14, "sendResult":Lcom/microsoft/cll/android/EventSendResult;
    const/16 v11, 0x1f4

    .line 52
    .local v11, "responseCode":I
    const/4 v12, 0x0

    .line 57
    .local v12, "retryAfterSeconds":I
    const/4 v9, 0x0

    .line 58
    .local v9, "inputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 60
    .local v8, "errorStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementVortexHttpAttempts()V

    .line 61
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/cll/android/EventSender;->openConnection(IZLcom/microsoft/cll/android/TicketHeaders;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 65
    .local v4, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v18, v0

    const-string v19, "AndroidCll-EventSender"

    const-string v20, "Error connecting."

    invoke-interface/range {v18 .. v20}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    .line 75
    .local v15, "stream":Ljava/io/OutputStream;
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/io/OutputStream;->write([B)V

    .line 76
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    .line 77
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v18, v0

    const-string v19, "AndroidCll-EventSender"

    const-string v20, "Error writing data"

    invoke-interface/range {v18 .. v20}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/microsoft/cll/android/EventSender;->getTime()J

    move-result-wide v16

    .line 94
    .local v16, "start":J
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 97
    const/16 v18, 0x1ad

    move/from16 v0, v18

    if-eq v11, v0, :cond_0

    const/16 v18, 0x1f7

    move/from16 v0, v18

    if-ne v11, v0, :cond_3

    .line 99
    :cond_0
    const-string v18, "Retry-After"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v13

    .line 101
    .local v13, "retryAfterValueString":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 105
    :try_start_3
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v12

    .line 111
    :cond_1
    :goto_0
    const v18, 0x15180

    move/from16 v0, v18

    if-gt v12, v0, :cond_2

    if-gez v12, :cond_3

    .line 113
    :cond_2
    const/4 v12, 0x0

    .line 121
    .end local v13    # "retryAfterValueString":Ljava/lang/String;
    :cond_3
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 123
    if-eqz v9, :cond_4

    .line 125
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 126
    .local v10, "reader":Ljava/io/BufferedReader;
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v11, v0, :cond_8

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/microsoft/cll/android/EventSender;->processResponseBodyConditionally(Ljava/io/BufferedReader;Z)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 142
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :goto_3
    if-eqz v9, :cond_5

    .line 144
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 147
    :cond_5
    if-eqz v8, :cond_6

    .line 149
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 152
    :cond_6
    const/16 v18, 0x1f4

    move/from16 v0, v18

    if-lt v11, v0, :cond_7

    const/16 v18, 0x258

    move/from16 v0, v18

    if-ge v11, v0, :cond_7

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v18, v0

    const-string v19, "AndroidCll-EventSender"

    const-string v20, "Bad Response Code"

    invoke-interface/range {v18 .. v20}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    move-object/from16 v18, v0

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementVortexHttpFailures(I)V

    .line 158
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/microsoft/cll/android/EventSender;->getTime()J

    move-result-wide v18

    sub-long v6, v18, v16

    .line 159
    .local v6, "diff":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    move-object/from16 v18, v0

    long-to-int v0, v6

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/microsoft/cll/android/ClientTelemetry;->SetAvgVortexLatencyMs(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    move-object/from16 v18, v0

    long-to-int v0, v6

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/microsoft/cll/android/ClientTelemetry;->SetMaxVortexLatencyMs(I)V

    .line 163
    iput v11, v14, Lcom/microsoft/cll/android/EventSendResult;->responseCode:I

    .line 164
    iput v12, v14, Lcom/microsoft/cll/android/EventSendResult;->retryAfterSeconds:I

    .line 166
    return-object v14

    .line 69
    .end local v6    # "diff":J
    .end local v15    # "stream":Ljava/io/OutputStream;
    .end local v16    # "start":J
    :catchall_0
    move-exception v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v19, v0

    const-string v20, "AndroidCll-EventSender"

    const-string v21, "Error connecting."

    invoke-interface/range {v19 .. v21}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    throw v18

    .line 81
    :catchall_1
    move-exception v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v19, v0

    const-string v20, "AndroidCll-EventSender"

    const-string v21, "Error writing data"

    invoke-interface/range {v19 .. v21}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    throw v18

    .line 126
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "stream":Ljava/io/OutputStream;
    .restart local v16    # "start":J
    :cond_8
    const/16 v18, 0x0

    goto :goto_2

    .line 129
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    .line 131
    .local v5, "e2":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    .line 133
    if-eqz v8, :cond_4

    .line 135
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 136
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    const/16 v18, 0x190

    move/from16 v0, v18

    if-ne v11, v0, :cond_c

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/microsoft/cll/android/EventSender;->processResponseBodyConditionally(Ljava/io/BufferedReader;Z)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_3

    .line 142
    .end local v5    # "e2":Ljava/io/IOException;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v18

    if-eqz v9, :cond_9

    .line 144
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 147
    :cond_9
    if-eqz v8, :cond_a

    .line 149
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 152
    :cond_a
    const/16 v19, 0x1f4

    move/from16 v0, v19

    if-lt v11, v0, :cond_b

    const/16 v19, 0x258

    move/from16 v0, v19

    if-ge v11, v0, :cond_b

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v19, v0

    const-string v20, "AndroidCll-EventSender"

    const-string v21, "Bad Response Code"

    invoke-interface/range {v19 .. v21}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    move-object/from16 v19, v0

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementVortexHttpFailures(I)V

    .line 158
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/microsoft/cll/android/EventSender;->getTime()J

    move-result-wide v20

    sub-long v6, v20, v16

    .line 159
    .restart local v6    # "diff":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    move-object/from16 v19, v0

    long-to-int v0, v6

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/microsoft/cll/android/ClientTelemetry;->SetAvgVortexLatencyMs(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/EventSender;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    move-object/from16 v19, v0

    long-to-int v0, v6

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/microsoft/cll/android/ClientTelemetry;->SetMaxVortexLatencyMs(I)V

    throw v18

    .line 136
    .end local v6    # "diff":J
    .restart local v5    # "e2":Ljava/io/IOException;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :cond_c
    const/16 v18, 0x0

    goto :goto_4

    .line 107
    .end local v5    # "e2":Ljava/io/IOException;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "retryAfterValueString":Ljava/lang/String;
    :catch_1
    move-exception v18

    goto/16 :goto_0

    .line 117
    .end local v13    # "retryAfterValueString":Ljava/lang/String;
    :catch_2
    move-exception v18

    goto/16 :goto_1
.end method
