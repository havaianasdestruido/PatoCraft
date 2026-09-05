.class Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedRequestSender"
.end annotation


# instance fields
.field private ctxReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;


# direct methods
.method public constructor <init>(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2501
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 2502
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 2503
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 2506
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$1500()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2547
    :cond_0
    :goto_0
    return-void

    .line 2509
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/appsflyer/AppsFlyerLib;->access$1602(J)J

    .line 2510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 2513
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->access$1502(Z)Z

    .line 2515
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->this$0:Lcom/appsflyer/AppsFlyerLib;

    const-string v3, "AppsFlyerKey"

    invoke-static {v2, v3}, Lcom/appsflyer/AppsFlyerLib;->access$1700(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2516
    .local v5, "afDevKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2517
    :try_start_1
    invoke-static {}, Lcom/appsflyer/cache/CacheManager;->getInstance()Lcom/appsflyer/cache/CacheManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v3, v2}, Lcom/appsflyer/cache/CacheManager;->getCachedRequests(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/appsflyer/cache/RequestCacheData;

    .line 2519
    .local v15, "requestCacheData":Lcom/appsflyer/cache/RequestCacheData;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resending request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/appsflyer/cache/RequestCacheData;->getRequestURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2524
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2525
    .local v12, "currentTime":J
    invoke-virtual {v15}, Lcom/appsflyer/cache/RequestCacheData;->getCacheKey()Ljava/lang/String;

    move-result-object v9

    .line 2526
    .local v9, "cachedTimeString":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-static {v9, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    .line 2528
    .local v10, "cachedTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->this$0:Lcom/appsflyer/AppsFlyerLib;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/appsflyer/cache/RequestCacheData;->getRequestURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&isCachedRequest=true&timeincache="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v6, v12, v10

    const-wide/16 v18, 0x3e8

    div-long v6, v6, v18

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2529
    invoke-virtual {v15}, Lcom/appsflyer/cache/RequestCacheData;->getPostData()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 2532
    invoke-virtual {v15}, Lcom/appsflyer/cache/RequestCacheData;->getCacheKey()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 2528
    invoke-static/range {v2 .. v8}, Lcom/appsflyer/AppsFlyerLib;->access$600(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2535
    .end local v9    # "cachedTimeString":Ljava/lang/String;
    .end local v10    # "cachedTime":J
    .end local v12    # "currentTime":J
    :catch_0
    move-exception v14

    .line 2536
    .local v14, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "Failed to resend cached request"

    invoke-static {v2, v14}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2539
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v15    # "requestCacheData":Lcom/appsflyer/cache/RequestCacheData;
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2540
    .end local v5    # "afDevKey":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 2541
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "failed to check cache. "

    invoke-static {v2, v14}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2543
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->access$1502(Z)Z

    .line 2545
    .end local v14    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$1800()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 2546
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->access$1802(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    goto/16 :goto_0

    .line 2539
    .restart local v5    # "afDevKey":Ljava/lang/String;
    :cond_2
    :try_start_6
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2543
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->access$1502(Z)Z

    goto :goto_2

    .end local v5    # "afDevKey":Ljava/lang/String;
    :catchall_1
    move-exception v2

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/appsflyer/AppsFlyerLib;->access$1502(Z)Z

    throw v2
.end method
