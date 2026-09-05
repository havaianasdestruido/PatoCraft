.class Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker$1;
.super Ljava/lang/Object;
.source "XTokenLoader.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/interop/Interop$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;

.field final synthetic val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(IILjava/lang/String;)V
    .locals 4
    .param p1, "httpStatusCode"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;

    const/4 v1, 0x0

    new-instance v2, Lcom/microsoft/xbox/idp/toolkit/HttpError;

    invoke-direct {v2, p2, p1, p3}, Lcom/microsoft/xbox/idp/toolkit/HttpError;-><init>(IILjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;-><init>(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    .line 102
    .local v0, "result":Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->access$000(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->access$100(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v2

    monitor-enter v2

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->access$100(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v1

    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/microsoft/xbox/idp/util/ResultCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-interface {v1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    .line 108
    return-void

    .line 105
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onXTokenAcquired(J)V
    .locals 5
    .param p1, "authFlowResultPtr"    # J

    .prologue
    .line 90
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;

    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;

    new-instance v2, Lcom/microsoft/xbox/idp/util/AuthFlowResult;

    invoke-direct {v2, p1, p2}, Lcom/microsoft/xbox/idp/util/AuthFlowResult;-><init>(J)V

    invoke-direct {v1, v2}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;-><init>(Lcom/microsoft/xbox/idp/util/AuthFlowResult;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;-><init>(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    .line 91
    .local v0, "result":Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->access$000(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->access$100(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v2

    monitor-enter v2

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->access$100(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v1

    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/microsoft/xbox/idp/util/ResultCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-interface {v1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    .line 97
    return-void

    .line 94
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
