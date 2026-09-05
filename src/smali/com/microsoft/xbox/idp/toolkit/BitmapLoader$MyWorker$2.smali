.class Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

.field final synthetic val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 112
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 113
    .local v3, "url":Ljava/net/URL;
    invoke-static {}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 116
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 117
    .local v1, "image":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->access$300(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    iget-object v4, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->access$400(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    :try_start_2
    invoke-static {}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Caching retrieved bitmap"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v4, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->access$400(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    move-result-object v4

    iget-object v6, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    invoke-static {v6}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->access$500(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6, v1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;->put(Ljava/lang/Object;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 121
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    new-instance v5, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    invoke-direct {v5, v1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v4, v5}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 128
    .end local v1    # "image":Landroid/graphics/Bitmap;
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 135
    .end local v2    # "stream":Ljava/io/InputStream;
    .end local v3    # "url":Ljava/net/URL;
    :goto_1
    return-void

    .line 121
    .restart local v1    # "image":Landroid/graphics/Bitmap;
    .restart local v2    # "stream":Ljava/io/InputStream;
    .restart local v3    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1

    .line 124
    .end local v1    # "image":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    iget-object v4, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    new-instance v5, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    invoke-direct {v5, v0}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;-><init>(Ljava/lang/Exception;)V

    invoke-interface {v4, v5}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "stream":Ljava/io/InputStream;
    .end local v3    # "url":Ljava/net/URL;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-static {}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received malformed URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->this$0:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    invoke-static {v6}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v4, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    new-instance v5, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    invoke-direct {v5, v0}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;-><init>(Ljava/lang/Exception;)V

    invoke-interface {v4, v5}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 132
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker$2;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    new-instance v5, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    invoke-direct {v5, v0}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;-><init>(Ljava/lang/Exception;)V

    invoke-interface {v4, v5}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    goto :goto_1
.end method
