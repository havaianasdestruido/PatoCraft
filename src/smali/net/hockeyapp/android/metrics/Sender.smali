.class public Lnet/hockeyapp/android/metrics/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# static fields
.field static final DEFAULT_ENDPOINT_URL:Ljava/lang/String; = "https://gate.hockeyapp.net/v2/track"

.field static final DEFAULT_SENDER_CONNECT_TIMEOUT:I = 0x3a98

.field static final DEFAULT_SENDER_READ_TIMEOUT:I = 0x2710

.field static final MAX_REQUEST_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "HockeyApp-Metrics"


# instance fields
.field private mCustomServerURL:Ljava/lang/String;

.field private mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mWeakPersistence:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/hockeyapp/android/metrics/Persistence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    return-void
.end method

.method private logRequest(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 6
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 324
    .local v1, "writer":Ljava/io/Writer;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 325
    :try_start_0
    const-string v2, "HockeyApp-Metrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending payload:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v2, "HockeyApp-Metrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using URL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/Sender;->getWriter(Ljava/net/HttpURLConnection;)Ljava/io/Writer;

    move-result-object v1

    .line 329
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :cond_0
    if-eqz v1, :cond_1

    .line 335
    :try_start_1
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 341
    :cond_1
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "HockeyApp-Metrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t close writer with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 335
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 338
    :cond_2
    :goto_1
    throw v2

    .line 336
    :catch_1
    move-exception v0

    .line 337
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "HockeyApp-Metrics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t close writer with: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected createConnection()Ljava/net/HttpURLConnection;
    .locals 6

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 203
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getCustomServerURL()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 204
    new-instance v3, Ljava/net/URL;

    const-string v4, "https://gate.hockeyapp.net/v2/track"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 215
    .local v3, "url":Ljava/net/URL;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 216
    const/16 v4, 0x2710

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 217
    const/16 v4, 0x3a98

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 218
    const-string v4, "POST"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 219
    const-string v4, "Content-Type"

    const-string v5, "application/x-json-stream"

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 221
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 222
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 226
    .end local v3    # "url":Ljava/net/URL;
    :goto_1
    return-object v1

    .line 206
    :cond_1
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lnet/hockeyapp/android/metrics/Sender;->mCustomServerURL:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v3    # "url":Ljava/net/URL;
    if-nez v3, :cond_0

    .line 210
    new-instance v3, Ljava/net/URL;

    .end local v3    # "url":Ljava/net/URL;
    const-string v4, "https://gate.hockeyapp.net/v2/track"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "url":Ljava/net/URL;
    goto :goto_0

    .line 223
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 224
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "HockeyApp-Metrics"

    const-string v5, "Could not open connection for provided URL with exception: "

    invoke-static {v4, v5, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected getCustomServerURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Sender;->mCustomServerURL:Ljava/lang/String;

    return-object v0
.end method

.method protected getPersistence()Lnet/hockeyapp/android/metrics/Persistence;
    .locals 2

    .prologue
    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "persistence":Lnet/hockeyapp/android/metrics/Persistence;
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Sender;->mWeakPersistence:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Sender;->mWeakPersistence:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "persistence":Lnet/hockeyapp/android/metrics/Persistence;
    check-cast v0, Lnet/hockeyapp/android/metrics/Persistence;

    .line 417
    .restart local v0    # "persistence":Lnet/hockeyapp/android/metrics/Persistence;
    :cond_0
    return-object v0
.end method

.method protected getWriter(Ljava/net/HttpURLConnection;)Ljava/io/Writer;
    .locals 4
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 402
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v1, "Content-Type"

    const-string v2, "application/x-json-stream"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 405
    .local v0, "gzip":Ljava/util/zip/GZIPOutputStream;
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 408
    .end local v0    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected isExpected(I)Z
    .locals 1
    .param p1, "responseCode"    # I

    .prologue
    .line 290
    const/16 v0, 0xc8

    if-gt v0, p1, :cond_0

    const/16 v0, 0xcb

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecoverableError(I)Z
    .locals 4
    .param p1, "responseCode"    # I

    .prologue
    .line 279
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0x198

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x1ad

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x1f7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x1ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 280
    .local v0, "recoverableCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected loadData(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "persistedData":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/hockeyapp/android/metrics/Persistence;->load(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/hockeyapp/android/metrics/Persistence;->deleteFile(Ljava/io/File;)V

    .line 189
    :cond_0
    return-object v0
.end method

.method protected onResponse(Ljava/net/HttpURLConnection;ILjava/lang/String;Ljava/io/File;)V
    .locals 5
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "responseCode"    # I
    .param p3, "payload"    # Ljava/lang/String;
    .param p4, "fileToSend"    # Ljava/io/File;

    .prologue
    .line 241
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 242
    const-string v2, "HockeyApp-Metrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0, p2}, Lnet/hockeyapp/android/metrics/Sender;->isRecoverableError(I)Z

    move-result v1

    .line 245
    .local v1, "isRecoverableError":Z
    if-eqz v1, :cond_1

    .line 246
    const-string v2, "HockeyApp-Metrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recoverable error (probably a server error), persisting data:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 248
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v2

    invoke-virtual {v2, p4}, Lnet/hockeyapp/android/metrics/Persistence;->makeAvailable(Ljava/io/File;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 253
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v2

    invoke-virtual {v2, p4}, Lnet/hockeyapp/android/metrics/Persistence;->deleteFile(Ljava/io/File;)V

    .line 257
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p2}, Lnet/hockeyapp/android/metrics/Sender;->isExpected(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 259
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->triggerSending()V

    goto :goto_0

    .line 261
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lnet/hockeyapp/android/metrics/Sender;->onUnexpected(Ljava/net/HttpURLConnection;ILjava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method protected onUnexpected(Ljava/net/HttpURLConnection;ILjava/lang/StringBuilder;)V
    .locals 6
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "responseCode"    # I
    .param p3, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 302
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Unexpected response code: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, "\n"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, "HockeyApp-Metrics"

    invoke-static {v1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, p1, p3}, Lnet/hockeyapp/android/metrics/Sender;->readResponse(Ljava/net/HttpURLConnection;Ljava/lang/StringBuilder;)V

    .line 311
    return-void
.end method

.method protected readResponse(Ljava/net/HttpURLConnection;Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 350
    const/4 v5, 0x0

    .line 351
    .local v5, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 352
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 355
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 356
    if-nez v4, :cond_0

    .line 357
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 360
    :cond_0
    if-eqz v4, :cond_3

    .line 361
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 362
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 363
    .local v3, "inputLine":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 364
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 378
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "inputLine":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 379
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v6, "HockeyApp-Metrics"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    if-eqz v4, :cond_1

    .line 383
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 389
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 366
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "inputLine":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 372
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "inputLine":Ljava/lang/String;
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 373
    invoke-static {v5}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 381
    :goto_3
    if-eqz v4, :cond_1

    .line 383
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 384
    :catch_1
    move-exception v2

    .line 385
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "HockeyApp-Metrics"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 369
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 376
    :cond_4
    const-string v6, "HockeyApp-Metrics"

    const-string v7, "Couldn\'t log response, result is null or empty string"

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 381
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_5

    .line 383
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 386
    :cond_5
    :goto_4
    throw v6

    .line 384
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 385
    const-string v6, "HockeyApp-Metrics"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 384
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 385
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "HockeyApp-Metrics"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected requestCount()I
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected send(Ljava/net/HttpURLConnection;Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "persistedData"    # Ljava/lang/String;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 143
    :try_start_0
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 144
    invoke-direct {p0, p1, p3}, Lnet/hockeyapp/android/metrics/Sender;->logRequest(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 148
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 150
    .local v1, "responseCode":I
    invoke-virtual {p0, p1, v1, p3, p2}, Lnet/hockeyapp/android/metrics/Sender;->onResponse(Ljava/net/HttpURLConnection;ILjava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    .end local v1    # "responseCode":I
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "HockeyApp-Metrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t send data with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 155
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 156
    const-string v2, "HockeyApp-Metrics"

    const-string v3, "Persisting because of IOException: We\'re probably offline."

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v2

    invoke-virtual {v2, p2}, Lnet/hockeyapp/android/metrics/Persistence;->makeAvailable(Ljava/io/File;)V

    goto :goto_0

    .line 159
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "HockeyApp-Metrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t send data with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 163
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 164
    const-string v2, "HockeyApp-Metrics"

    const-string v3, "Persisting because of SecurityException: Missing INTERNET permission or the user might have removed the internet permission."

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v2

    invoke-virtual {v2, p2}, Lnet/hockeyapp/android/metrics/Persistence;->makeAvailable(Ljava/io/File;)V

    goto :goto_0
.end method

.method protected sendAvailableFiles()V
    .locals 4

    .prologue
    .line 120
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v3

    invoke-virtual {v3}, Lnet/hockeyapp/android/metrics/Persistence;->nextAvailableFileInDirectory()Ljava/io/File;

    move-result-object v1

    .line 122
    .local v1, "fileToSend":Ljava/io/File;
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/Sender;->loadData(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "persistedData":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 125
    .local v0, "connection":Ljava/net/HttpURLConnection;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0, v0, v1, v2}, Lnet/hockeyapp/android/metrics/Sender;->send(Ljava/net/HttpURLConnection;Ljava/io/File;Ljava/lang/String;)V

    .line 129
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "fileToSend":Ljava/io/File;
    .end local v2    # "persistedData":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected setCustomServerURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "customServerURL"    # Ljava/lang/String;

    .prologue
    .line 448
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/Sender;->mCustomServerURL:Ljava/lang/String;

    .line 449
    return-void
.end method

.method protected setPersistence(Lnet/hockeyapp/android/metrics/Persistence;)V
    .locals 1
    .param p1, "persistence"    # Lnet/hockeyapp/android/metrics/Persistence;

    .prologue
    .line 426
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Sender;->mWeakPersistence:Ljava/lang/ref/WeakReference;

    .line 427
    return-void
.end method

.method protected triggerSending()V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->requestCount()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 81
    :try_start_0
    new-instance v1, Lnet/hockeyapp/android/metrics/Sender$1;

    invoke-direct {v1, p0}, Lnet/hockeyapp/android/metrics/Sender$1;-><init>(Lnet/hockeyapp/android/metrics/Sender;)V

    invoke-static {v1}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "Could not send events. Executor rejected async task."

    invoke-static {v1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :cond_0
    const-string v1, "HockeyApp-Metrics"

    const-string v2, "We have already 10 pending requests, not sending anything."

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected triggerSendingForTesting(Ljava/net/HttpURLConnection;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "persistedData"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->requestCount()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 103
    new-instance v0, Lnet/hockeyapp/android/metrics/Sender$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/hockeyapp/android/metrics/Sender$2;-><init>(Lnet/hockeyapp/android/metrics/Sender;Ljava/net/HttpURLConnection;Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 114
    :cond_0
    return-void
.end method
