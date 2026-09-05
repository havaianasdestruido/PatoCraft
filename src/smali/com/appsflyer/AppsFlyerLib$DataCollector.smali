.class Lcom/appsflyer/AppsFlyerLib$DataCollector;
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
    name = "DataCollector"
.end annotation


# instance fields
.field private appsFlyerKey:Ljava/lang/String;

.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private eventName:Ljava/lang/String;

.field private eventValue:Ljava/lang/String;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private isNewAPI:Z

.field private referrer:Ljava/lang/String;

.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;


# direct methods
.method private constructor <init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p3, "appsFlyerKey"    # Ljava/lang/String;
    .param p4, "eventName"    # Ljava/lang/String;
    .param p5, "eventValue"    # Ljava/lang/String;
    .param p6, "referrer"    # Ljava/lang/String;
    .param p7, "useNewAPI"    # Z
    .param p8, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2246
    .local p2, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2247
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->context:Ljava/lang/ref/WeakReference;

    .line 2248
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->appsFlyerKey:Ljava/lang/String;

    .line 2249
    iput-object p4, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->eventName:Ljava/lang/String;

    .line 2250
    iput-object p5, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->eventValue:Ljava/lang/String;

    .line 2251
    iput-object p6, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->referrer:Ljava/lang/String;

    .line 2252
    iput-boolean p7, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->isNewAPI:Z

    .line 2253
    iput-object p8, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2254
    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;Lcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/appsflyer/AppsFlyerLib;
    .param p2, "x1"    # Ljava/lang/ref/WeakReference;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Z
    .param p8, "x7"    # Ljava/util/concurrent/ExecutorService;
    .param p9, "x8"    # Lcom/appsflyer/AppsFlyerLib$1;

    .prologue
    .line 2230
    invoke-direct/range {p0 .. p8}, Lcom/appsflyer/AppsFlyerLib$DataCollector;-><init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->this$0:Lcom/appsflyer/AppsFlyerLib;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->appsFlyerKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->eventName:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->eventValue:Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->referrer:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->isNewAPI:Z

    invoke-static/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib;->access$500(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2258
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2259
    return-void
.end method
