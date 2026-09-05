.class Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;
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
    name = "TextureManagerDecodeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;


# direct methods
.method private constructor <init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/xbox/toolkit/ui/TextureManager;
    .param p2, "x1"    # Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0xbb8

    .line 341
    :goto_0
    iget-object v10, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v10}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$100(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;

    move-result-object v10

    invoke-virtual {v10}, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    .line 344
    .local v7, "request":Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;
    const/4 v1, 0x0

    .line 346
    .local v1, "bitmap":Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    iget-object v10, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->stream:Ljava/io/InputStream;

    if-eqz v10, :cond_1

    .line 348
    invoke-static {}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    move-result-object v10

    invoke-virtual {v10, v14}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitForReady(I)V

    .line 353
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 354
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v10, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->stream:Ljava/io/InputStream;

    invoke-static {v0, v10}, Lcom/microsoft/xbox/toolkit/StreamUtil;->CopyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 355
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 358
    .local v3, "buffer":[B
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 359
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 360
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v11, 0x0

    invoke-static {v10, v11, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 362
    iget-object v10, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iget-object v11, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v11, v11, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v11, v11, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->width:I

    iget-object v12, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v12, v12, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v12, v12, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->height:I

    invoke-static {v10, v11, v12, v6}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$200(Lcom/microsoft/xbox/toolkit/ui/TextureManager;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v9

    .line 365
    .local v9, "scaleoptions":Landroid/graphics/BitmapFactory$Options;
    iget v10, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v10, v11

    iget v11, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v12, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v11, v12

    mul-int/2addr v10, v11

    mul-int/lit8 v5, v10, 0x4

    .line 367
    .local v5, "expectedBytes":I
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v10, v9}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v2

    .line 369
    .local v2, "bitmapsrc":Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    iget-object v10, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v10, v10, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget-boolean v10, v10, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->useFileCache:Z

    if-eqz v10, :cond_0

    .line 370
    iget-object v10, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v10}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$300(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/XLEFileCache;

    move-result-object v10

    iget-object v11, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    invoke-virtual {v10, v11}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->contains(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 371
    iget-object v10, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v10}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$300(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/XLEFileCache;

    move-result-object v10

    iget-object v11, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v10, v11, v12}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->save(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;Ljava/io/InputStream;)V

    .line 375
    :cond_0
    iget-object v10, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iget-object v11, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v11, v11, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v11, v11, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->width:I

    iget-object v12, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v12, v12, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v12, v12, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->height:I

    invoke-static {v10, v2, v11, v12}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$400(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;II)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 383
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bitmapsrc":Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .end local v3    # "buffer":[B
    .end local v5    # "expectedBytes":I
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v9    # "scaleoptions":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    move-result-object v10

    invoke-virtual {v10, v14}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitForReady(I)V

    .line 385
    iget-object v10, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v10}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$500(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 387
    if-eqz v1, :cond_3

    .line 388
    :try_start_1
    iget-object v10, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v10}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$600(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    move-result-object v10

    iget-object v12, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->getByteCount()I

    move-result v13

    invoke-virtual {v10, v12, v1, v13}, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->add(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 389
    iget-object v10, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v10}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$700(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v12, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iget-object v12, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    invoke-static {v10, v12, v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$800(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    .line 405
    iget-object v10, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v10}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$900(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/util/HashSet;

    move-result-object v10

    iget-object v12, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    invoke-virtual {v10, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 406
    monitor-exit v11

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 377
    :catch_0
    move-exception v4

    .line 378
    .local v4, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1

    .line 390
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    iget-object v10, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v10, v10, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v10, v10, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    const/4 v12, -0x1

    if-eq v10, v12, :cond_2

    .line 393
    iget-object v10, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iget-object v12, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v12, v12, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v12, v12, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    invoke-virtual {v10, v12}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v1

    .line 394
    iget-object v10, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v10}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$700(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v12, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;

    .line 395
    .local v8, "retryEntry":Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;
    if-eqz v8, :cond_4

    .line 396
    invoke-virtual {v8}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;->startNext()V

    goto :goto_2

    .line 398
    :cond_4
    iget-object v10, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v10}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$700(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v12, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    new-instance v13, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;

    invoke-direct {v13}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;-><init>()V

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
