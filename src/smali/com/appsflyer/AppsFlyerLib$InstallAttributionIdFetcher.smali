.class Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;
.super Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;
.source "AppsFlyerLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallAttributionIdFetcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;


# direct methods
.method public constructor <init>(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appsFlyerDevKey"    # Ljava/lang/String;
    .param p4, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 2303
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;->this$0:Lcom/appsflyer/AppsFlyerLib;

    .line 2304
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;-><init>(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 2305
    return-void
.end method


# virtual methods
.method protected attributionCallback(Ljava/util/Map;)V
    .locals 5
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

    .prologue
    .local p1, "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2313
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$700()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/appsflyer/AppsFlyerConversionListener;->onInstallConversionDataLoaded(Ljava/util/Map;)V

    .line 2314
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "appsflyer-data"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2315
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;->this$0:Lcom/appsflyer/AppsFlyerLib;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "appsflyerConversionDataRequestRetries"

    invoke-static {v2, v1, v3, v4}, Lcom/appsflyer/AppsFlyerLib;->access$800(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;I)V

    .line 2316
    return-void
.end method

.method protected attributionCallbackFailure(Ljava/lang/String;I)V
    .locals 5
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "responseCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 2319
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$700()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/appsflyer/AppsFlyerConversionListener;->onInstallConversionFailure(Ljava/lang/String;)V

    .line 2321
    const/16 v2, 0x190

    if-lt p2, v2, :cond_0

    const/16 v2, 0x1f4

    if-ge p2, v2, :cond_0

    .line 2322
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string v3, "appsflyer-data"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2323
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "appsflyerConversionDataRequestRetries"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2324
    .local v0, "retries":I
    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;->this$0:Lcom/appsflyer/AppsFlyerLib;

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string v4, "appsflyerConversionDataRequestRetries"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v2, v4, v0}, Lcom/appsflyer/AppsFlyerLib;->access$800(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;I)V

    .line 2327
    .end local v0    # "retries":I
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2309
    const-string v0, "https://api.appsflyer.com/install_data/v3/"

    return-object v0
.end method
