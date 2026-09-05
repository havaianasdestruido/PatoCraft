.class Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;
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
    name = "SendToServerRunnable"
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

.field isLaunch:Z

.field params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;

.field private urlString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V
    .locals 1
    .param p2, "urlString"    # Ljava/lang/String;
    .param p4, "ctx"    # Landroid/content/Context;
    .param p5, "isLaunch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2273
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 2274
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    .line 2275
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    .line 2276
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 2277
    iput-boolean p5, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->isLaunch:Z

    .line 2278
    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZLcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/appsflyer/AppsFlyerLib;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/util/Map;
    .param p4, "x3"    # Landroid/content/Context;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lcom/appsflyer/AppsFlyerLib$1;

    .prologue
    .line 2262
    invoke-direct/range {p0 .. p5}, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;-><init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 2281
    const/4 v2, 0x0

    .line 2284
    .local v2, "postDataString":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v1, "appsflyerKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2286
    .local v3, "afDevKey":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2287
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->this$0:Lcom/appsflyer/AppsFlyerLib;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->isLaunch:Z

    invoke-static/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib;->access$600(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2298
    .end local v3    # "afDevKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2289
    :catch_0
    move-exception v7

    .line 2290
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "Exception while sending request to server. "

    invoke-static {v0, v7}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2291
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    const-string v1, "&isCachedRequest=true&timeincache="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2292
    invoke-static {}, Lcom/appsflyer/cache/CacheManager;->getInstance()Lcom/appsflyer/cache/CacheManager;

    move-result-object v1

    new-instance v4, Lcom/appsflyer/cache/RequestCacheData;

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    const-string v5, "4.7.1"

    invoke-direct {v4, v0, v2, v5}, Lcom/appsflyer/cache/RequestCacheData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v4, v0}, Lcom/appsflyer/cache/CacheManager;->cacheRequest(Lcom/appsflyer/cache/RequestCacheData;Landroid/content/Context;)V

    .line 2293
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2295
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 2296
    .local v8, "t":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
