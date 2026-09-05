.class Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;
.super Ljava/lang/Object;
.source "SignOutLoader.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/SignOutLoader;
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
        "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final cache:Lcom/microsoft/xbox/idp/util/ResultCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/idp/util/ResultCache",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final resultKey:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V
    .locals 0
    .param p2, "resultKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/util/ResultCache",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "cache":Lcom/microsoft/xbox/idp/util/ResultCache;, "Lcom/microsoft/xbox/idp/util/ResultCache<Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    .line 50
    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;->resultKey:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/xbox/idp/util/ResultCache;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$1;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;-><init>(Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;->hasCache()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;)Lcom/microsoft/xbox/idp/util/ResultCache;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;->resultKey:Ljava/lang/Object;

    return-object v0
.end method

.method private hasCache()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;->resultKey:Ljava/lang/Object;

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
    .line 96
    return-void
.end method

.method public start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "listener":Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;, "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener<Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;>;"
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    monitor-enter v2

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;->resultKey:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/util/ResultCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;

    .line 63
    .local v0, "r":Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    .line 92
    .end local v0    # "r":Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;
    :goto_0
    return-void

    .line 63
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 69
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->getInstance()Lcom/microsoft/xbox/idp/interop/XsapiUser;

    move-result-object v1

    new-instance v2, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker$1;

    invoke-direct {v2, p0, p1}, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker$1;-><init>(Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->signOut(Lcom/microsoft/xbox/idp/interop/XsapiUser$SignOutCallback;)V

    goto :goto_0
.end method
