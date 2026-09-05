.class final Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;
.super Ljava/lang/Object;
.source "TcuiHttpUtil.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$acceptableStatusCodes:Ljava/util/List;

.field final synthetic val$notifier:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$acceptableStatusCodes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processResponse(ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V
    .locals 4
    .param p1, "httpStatus"    # I
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "headers"    # Lcom/microsoft/xbox/idp/util/HttpHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$acceptableStatusCodes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
