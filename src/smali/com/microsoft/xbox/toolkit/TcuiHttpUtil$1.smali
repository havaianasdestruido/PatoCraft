.class final Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;
.super Ljava/lang/Object;
.source "TcuiHttpUtil.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$returnClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$returnClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processResponse(ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V
    .locals 5
    .param p1, "httpStatus"    # I
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "headers"    # Lcom/microsoft/xbox/idp/util/HttpHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    const/16 v1, 0xc8

    if-ge p1, v1, :cond_0

    const/16 v1, 0x12b

    if-gt p1, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$returnClass:Ljava/lang/Class;

    invoke-static {p2, v1}, Lcom/microsoft/xbox/toolkit/GsonUtil;->deserializeJson(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    .local v0, "result":Ljava/lang/Object;, "TT;"
    :goto_0
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 28
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 29
    monitor-exit v2

    .line 30
    return-void

    .line 24
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 29
    .restart local v0    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
