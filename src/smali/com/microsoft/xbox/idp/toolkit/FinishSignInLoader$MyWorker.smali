.class Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;
.super Ljava/lang/Object;
.source "FinishSignInLoader.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader;
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
        "Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final authStatus:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

.field private final cache:Lcom/microsoft/xbox/idp/util/ResultCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/idp/util/ResultCache",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final cid:Ljava/lang/String;

.field private final resultKey:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;Ljava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V
    .locals 0
    .param p1, "authStatus"    # Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;
    .param p2, "cid"    # Ljava/lang/String;
    .param p4, "resultKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;",
            "Ljava/lang/String;",
            "Lcom/microsoft/xbox/idp/util/ResultCache",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p3, "cache":Lcom/microsoft/xbox/idp/util/ResultCache;, "Lcom/microsoft/xbox/idp/util/ResultCache<Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;->authStatus:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 53
    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;->cid:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    .line 55
    iput-object p4, p0, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;->resultKey:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;Ljava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/microsoft/xbox/idp/util/ResultCache;
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$1;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;-><init>(Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;Ljava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;->hasCache()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;)Lcom/microsoft/xbox/idp/util/ResultCache;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;->resultKey:Ljava/lang/Object;

    return-object v0
.end method

.method private hasCache()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;->resultKey:Ljava/lang/Object;

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
    .line 101
    return-void
.end method

.method public start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "listener":Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;, "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener<Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;>;"
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    monitor-enter v2

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/util/ResultCache;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;->resultKey:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/util/ResultCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;

    .line 68
    .local v0, "r":Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-interface {p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    .line 97
    .end local v0    # "r":Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;
    :goto_0
    return-void

    .line 68
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 74
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->getInstance()Lcom/microsoft/xbox/idp/interop/XsapiUser;

    move-result-object v1

    new-instance v2, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker$1;

    invoke-direct {v2, p0, p1}, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker$1;-><init>(Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V

    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;->authStatus:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->finishSignIn(Lcom/microsoft/xbox/idp/interop/XsapiUser$FinishSignInCallback;Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;Ljava/lang/String;)V

    goto :goto_0
.end method
