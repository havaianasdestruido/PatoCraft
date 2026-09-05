.class Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;
.super Ljava/lang/Object;
.source "TextureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/TextureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextureManagerDownloadThreadWorker"
.end annotation


# instance fields
.field private request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;)V
    .locals 0
    .param p2, "request"    # Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    .line 578
    return-void
.end method

.method private downloadFromAssets(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "requestUrl"    # Ljava/lang/String;

    .prologue
    .line 626
    :try_start_0
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 628
    :goto_0
    return-object v1

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private downloadFromWeb(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p1, "requestUrl"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 615
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 616
    .local v2, "get":Lorg/apache/http/client/methods/HttpGet;
    sget-object v5, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->textureFactory:Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

    const/16 v6, 0x3a98

    invoke-virtual {v5, v6}, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->getHttpClient(I)Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    move-result-object v0

    .line 617
    .local v0, "client":Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;->getHttpStatusAndStreamInternal(Lorg/apache/http/client/methods/HttpUriRequest;Z)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object v3

    .line 618
    .local v3, "statusAndStream":Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    iget v5, v3, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusCode:I

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    iget-object v4, v3, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->stream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    .end local v0    # "client":Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;
    .end local v2    # "get":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "statusAndStream":Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    :cond_0
    :goto_0
    return-object v4

    .line 619
    :catch_0
    move-exception v1

    .line 620
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 581
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 584
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->stream:Ljava/io/InputStream;

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 588
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget-boolean v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->useFileCache:Z

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$300(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/XLEFileCache;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v2, v2, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->getInputStreamForRead(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->stream:Ljava/io/InputStream;

    .line 591
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->stream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v1, v1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v1, v1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->downloadFromWeb(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->stream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$500(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 609
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$100(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;->push(Ljava/lang/Object;)V

    .line 610
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    return-void

    .line 581
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 596
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v1, v1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v1, v1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->downloadFromWeb(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->stream:Ljava/io/InputStream;

    goto :goto_1

    .line 602
    :catch_0
    move-exception v0

    goto :goto_1

    .line 599
    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v1, v1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v1, v1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->downloadFromAssets(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->stream:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 610
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
