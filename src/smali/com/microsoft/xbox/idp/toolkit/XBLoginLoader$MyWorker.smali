.class Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;
.super Ljava/lang/Object;
.source "XBLoginLoader.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker",
        "<",
        "Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final cache:Lcom/microsoft/xbox/idp/util/ResultCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/idp/util/ResultCache",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final resultKey:Ljava/lang/Object;

.field private final rpsTicket:Ljava/lang/String;

.field private final userPtr:J


# direct methods
.method private constructor <init>(JLjava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V
    .locals 1
    .param p1, "userPtr"    # J
    .param p3, "rpsTicket"    # Ljava/lang/String;
    .param p5, "resultKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/microsoft/xbox/idp/util/ResultCache",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p4, "cache":Lcom/microsoft/xbox/idp/util/ResultCache;, "Lcom/microsoft/xbox/idp/util/ResultCache<Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide p1, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;->userPtr:J

    .line 72
    iput-object p3, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;->rpsTicket:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    .line 74
    iput-object p5, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;->resultKey:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lcom/microsoft/xbox/idp/util/ResultCache;
    .param p5, "x3"    # Ljava/lang/Object;
    .param p6, "x4"    # Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$1;

    .prologue
    .line 64
    invoke-direct/range {p0 .. p5}, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;-><init>(JLjava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;->hasCache()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;)Lcom/microsoft/xbox/idp/util/ResultCache;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;->resultKey:Ljava/lang/Object;

    return-object v0
.end method

.method private hasCache()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;->resultKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "listener":Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;, "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener<Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;>;"
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    monitor-enter v2

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;->resultKey:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/util/ResultCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;

    .line 87
    .local v0, "r":Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    .line 116
    .end local v0    # "r":Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;
    :goto_0
    return-void

    .line 87
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 93
    :cond_0
    iget-wide v2, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;->userPtr:J

    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;->rpsTicket:Ljava/lang/String;

    new-instance v4, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker$1;

    invoke-direct {v4, p0, p1}, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker$1;-><init>(Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V

    invoke-static {v2, v3, v1, v4}, Lcom/microsoft/xbox/idp/interop/Interop;->InvokeXBLogin(JLjava/lang/String;Lcom/microsoft/xbox/idp/interop/Interop$XBLoginCallback;)V

    goto :goto_0
.end method
