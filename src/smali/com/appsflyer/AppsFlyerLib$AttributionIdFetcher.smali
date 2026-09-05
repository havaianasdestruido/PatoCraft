.class abstract Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AttributionIdFetcher"
.end annotation


# instance fields
.field private appsFlyerDevKey:Ljava/lang/String;

.field protected ctxReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;


# direct methods
.method public constructor <init>(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appsFlyerDevKey"    # Ljava/lang/String;
    .param p4, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 2342
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 2340
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2343
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 2344
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    .line 2345
    iput-object p4, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2346
    return-void
.end method


# virtual methods
.method protected abstract attributionCallback(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract attributionCallbackFailure(Ljava/lang/String;I)V
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public run()V
    .locals 28

    .prologue
    .line 2349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_1

    .line 2448
    :cond_0
    :goto_0
    return-void

    .line 2352
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2353
    const/4 v7, 0x0

    .line 2355
    .local v7, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2356
    .local v8, "context":Landroid/content/Context;
    if-nez v8, :cond_2

    .line 2442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2443
    if-eqz v7, :cond_0

    .line 2444
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 2360
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2361
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->this$0:Lcom/appsflyer/AppsFlyerLib;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->this$0:Lcom/appsflyer/AppsFlyerLib;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static/range {v22 .. v23}, Lcom/appsflyer/AppsFlyerLib;->access$900(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v8, v1}, Lcom/appsflyer/AppsFlyerLib;->access$1000(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2362
    .local v5, "channel":Ljava/lang/String;
    const-string v6, ""

    .line 2363
    .local v6, "channelPostfix":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 2364
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2366
    :cond_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 2367
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->getUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 2368
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 2369
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "?devkey="

    .line 2370
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&device_id="

    .line 2371
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    new-instance v22, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v22

    invoke-direct {v0, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static/range {v22 .. v22}, Lcom/appsflyer/Installation;->id(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2373
    .local v20, "urlString":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Lcom/appsflyer/RemoteDebuggingManager;->addServerRequestEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Calling server for attribution url: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/appsflyer/LogMessages;->logMessageMaskKey(Ljava/lang/String;)V

    .line 2376
    new-instance v21, Ljava/net/URL;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v7, v0

    .line 2378
    const-string v21, "GET"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2379
    const/16 v21, 0x2710

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2380
    const-string v21, "Connection"

    const-string v22, "close"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 2383
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    .line 2384
    .local v16, "responseCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->this$0:Lcom/appsflyer/AppsFlyerLib;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/appsflyer/AppsFlyerLib;->readServerResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v13

    .line 2385
    .local v13, "response":Ljava/lang/String;
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v13}, Lcom/appsflyer/RemoteDebuggingManager;->addServerResponseEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 2386
    const/16 v21, 0xc8

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 2388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 2390
    .local v18, "responseTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->this$0:Lcom/appsflyer/AppsFlyerLib;

    move-object/from16 v21, v0

    const-string v22, "appsflyerGetConversionDataTiming"

    sub-long v24, v18, v14

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-static {v0, v8, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->access$1100(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;J)V

    .line 2393
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Attribution data: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/appsflyer/LogMessages;->logMessageMaskKey(Ljava/lang/String;)V

    .line 2395
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_5

    if-eqz v8, :cond_5

    .line 2396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->this$0:Lcom/appsflyer/AppsFlyerLib;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lcom/appsflyer/AppsFlyerLib;->access$1200(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 2397
    .local v10, "conversionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v21, "iscache"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2400
    .local v12, "isCache":Ljava/lang/String;
    if-eqz v12, :cond_4

    const-string v21, "false"

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 2402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->this$0:Lcom/appsflyer/AppsFlyerLib;

    move-object/from16 v21, v0

    const-string v22, "appsflyerConversionDataCacheExpiration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-static {v0, v8, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->access$1100(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;J)V

    .line 2405
    :cond_4
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2406
    .local v11, "conversionJsonString":Ljava/lang/String;
    if-eqz v11, :cond_7

    .line 2407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->this$0:Lcom/appsflyer/AppsFlyerLib;

    move-object/from16 v21, v0

    const-string v22, "attributionId"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v8, v1, v11}, Lcom/appsflyer/AppsFlyerLib;->access$1300(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    :goto_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "iscache="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " caching conversion data"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 2415
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$700()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 2416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_5

    .line 2419
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->this$0:Lcom/appsflyer/AppsFlyerLib;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v8}, Lcom/appsflyer/AppsFlyerLib;->access$1400(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;)Ljava/util/Map;
    :try_end_2
    .catch Lcom/appsflyer/AttributionIDNotReady; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 2424
    .local v9, "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->attributionCallback(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2442
    .end local v9    # "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "conversionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "conversionJsonString":Ljava/lang/String;
    .end local v12    # "isCache":Ljava/lang/String;
    .end local v18    # "responseTime":J
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2443
    if-eqz v7, :cond_6

    .line 2444
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2447
    .end local v5    # "channel":Ljava/lang/String;
    .end local v6    # "channelPostfix":Ljava/lang/String;
    .end local v8    # "context":Landroid/content/Context;
    .end local v13    # "response":Ljava/lang/String;
    .end local v14    # "now":J
    .end local v16    # "responseCode":I
    .end local v20    # "urlString":Ljava/lang/StringBuilder;
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto/16 :goto_0

    .line 2410
    .restart local v5    # "channel":Ljava/lang/String;
    .restart local v6    # "channelPostfix":Ljava/lang/String;
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v10    # "conversionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "conversionJsonString":Ljava/lang/String;
    .restart local v12    # "isCache":Ljava/lang/String;
    .restart local v13    # "response":Ljava/lang/String;
    .restart local v14    # "now":J
    .restart local v16    # "responseCode":I
    .restart local v18    # "responseTime":J
    .restart local v20    # "urlString":Ljava/lang/StringBuilder;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->this$0:Lcom/appsflyer/AppsFlyerLib;

    move-object/from16 v21, v0

    const-string v22, "attributionId"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v8, v1, v13}, Lcom/appsflyer/AppsFlyerLib;->access$1300(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2436
    .end local v5    # "channel":Ljava/lang/String;
    .end local v6    # "channelPostfix":Ljava/lang/String;
    .end local v8    # "context":Landroid/content/Context;
    .end local v10    # "conversionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "conversionJsonString":Ljava/lang/String;
    .end local v12    # "isCache":Ljava/lang/String;
    .end local v13    # "response":Ljava/lang/String;
    .end local v14    # "now":J
    .end local v16    # "responseCode":I
    .end local v18    # "responseTime":J
    .end local v20    # "urlString":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v17

    .line 2437
    .local v17, "t":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$700()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v21

    if-eqz v21, :cond_8

    .line 2438
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->attributionCallbackFailure(Ljava/lang/String;I)V

    .line 2440
    :cond_8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2443
    if-eqz v7, :cond_6

    .line 2444
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    .line 2420
    .end local v17    # "t":Ljava/lang/Throwable;
    .restart local v5    # "channel":Ljava/lang/String;
    .restart local v6    # "channelPostfix":Ljava/lang/String;
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v10    # "conversionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "conversionJsonString":Ljava/lang/String;
    .restart local v12    # "isCache":Ljava/lang/String;
    .restart local v13    # "response":Ljava/lang/String;
    .restart local v14    # "now":J
    .restart local v16    # "responseCode":I
    .restart local v18    # "responseTime":J
    .restart local v20    # "urlString":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v4

    .line 2421
    .local v4, "ae":Lcom/appsflyer/AttributionIDNotReady;
    :try_start_6
    const-string v21, "Exception while trying to fetch attribution data. "

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2422
    move-object v9, v10

    .restart local v9    # "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 2430
    .end local v4    # "ae":Lcom/appsflyer/AttributionIDNotReady;
    .end local v9    # "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "conversionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "conversionJsonString":Ljava/lang/String;
    .end local v12    # "isCache":Ljava/lang/String;
    .end local v18    # "responseTime":J
    :cond_9
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$700()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v21

    if-eqz v21, :cond_a

    .line 2431
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error connection to server: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->attributionCallbackFailure(Ljava/lang/String;I)V

    .line 2433
    :cond_a
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "AttributionIdFetcher response code: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  url: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/appsflyer/LogMessages;->logMessageMaskKey(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 2442
    .end local v5    # "channel":Ljava/lang/String;
    .end local v6    # "channelPostfix":Ljava/lang/String;
    .end local v8    # "context":Landroid/content/Context;
    .end local v13    # "response":Ljava/lang/String;
    .end local v14    # "now":J
    .end local v16    # "responseCode":I
    .end local v20    # "urlString":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2443
    if-eqz v7, :cond_b

    .line 2444
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw v21
.end method
