.class Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;
.super Ljava/lang/Object;
.source "ObjectLoader.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

.field final synthetic val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    .prologue
    .line 95
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;"
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processResponse(ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V
    .locals 6
    .param p1, "httpStatus"    # I
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "httpHeaders"    # Lcom/microsoft/xbox/idp/util/HttpHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;"
    const/16 v3, 0xc8

    if-lt p1, v3, :cond_0

    const/16 v3, 0x12b

    if-le p1, v3, :cond_2

    .line 100
    :cond_0
    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    new-instance v3, Lcom/microsoft/xbox/idp/toolkit/HttpError;

    invoke-direct {v3, p1, p1, p2}, Lcom/microsoft/xbox/idp/toolkit/HttpError;-><init>(IILjava/io/InputStream;)V

    invoke-direct {v1, v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;-><init>(Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    .line 102
    .local v1, "result":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<TT;>;"
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$100(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v4

    monitor-enter v4

    .line 104
    :try_start_0
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v3

    iget-object v5, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v5}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$300(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->put(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    .line 105
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-interface {v3, v1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    .line 134
    .end local v1    # "result":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<TT;>;"
    :goto_0
    return-void

    .line 105
    .restart local v1    # "result":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<TT;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 110
    .end local v1    # "result":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<TT;>;"
    :cond_2
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$400(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Void;

    if-ne v3, v4, :cond_3

    .line 112
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    new-instance v4, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_3
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 118
    .local v2, "sw":Ljava/io/StringWriter;
    :try_start_2
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 120
    .local v0, "r":Ljava/io/InputStreamReader;
    :try_start_3
    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$500(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/google/gson/Gson;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$400(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;-><init>(Ljava/lang/Object;)V

    .line 121
    .restart local v1    # "result":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<TT;>;"
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$100(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v4

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 123
    :try_start_4
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v3

    iget-object v5, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v5}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$300(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->put(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    .line 124
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 126
    :cond_4
    :try_start_5
    iget-object v3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-interface {v3, v1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 128
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 131
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V

    goto :goto_0

    .line 124
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 128
    .end local v1    # "result":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<TT;>;"
    :catchall_2
    move-exception v3

    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 131
    .end local v0    # "r":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v3

    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V

    throw v3
.end method
