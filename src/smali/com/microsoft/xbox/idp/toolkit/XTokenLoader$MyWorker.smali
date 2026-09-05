.class Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;
.super Ljava/lang/Object;
.source "XTokenLoader.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/XTokenLoader;
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
        "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final cache:Lcom/microsoft/xbox/idp/util/ResultCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/idp/util/ResultCache",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final resultKey:Ljava/lang/Object;

.field private final userPtr:J


# direct methods
.method public constructor <init>(JLcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V
    .locals 1
    .param p1, "userPtr"    # J
    .param p4, "resultKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/microsoft/xbox/idp/util/ResultCache",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p3, "cache":Lcom/microsoft/xbox/idp/util/ResultCache;, "Lcom/microsoft/xbox/idp/util/ResultCache<Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p1, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->userPtr:J

    .line 67
    iput-object p3, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    .line 68
    iput-object p4, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->resultKey:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->hasCache()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;)Lcom/microsoft/xbox/idp/util/ResultCache;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->resultKey:Ljava/lang/Object;

    return-object v0
.end method

.method private hasCache()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->resultKey:Ljava/lang/Object;

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
    .line 114
    return-void
.end method

.method public start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "listener":Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;, "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener<Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;>;"
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    monitor-enter v2

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->resultKey:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/util/ResultCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;

    .line 81
    .local v0, "r":Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    .line 110
    .end local v0    # "r":Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;
    :goto_0
    return-void

    .line 81
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 87
    :cond_0
    iget-wide v2, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->userPtr:J

    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker$1;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker$1;-><init>(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V

    invoke-static {v2, v3, v1}, Lcom/microsoft/xbox/idp/interop/Interop;->InvokeXTokenCallback(JLcom/microsoft/xbox/idp/interop/Interop$Callback;)V

    goto :goto_0
.end method
