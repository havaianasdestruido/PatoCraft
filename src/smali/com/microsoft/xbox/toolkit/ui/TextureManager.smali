.class public Lcom/microsoft/xbox/toolkit/ui/TextureManager;
.super Ljava/lang/Object;
.source "TextureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;,
        Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;,
        Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;
    }
.end annotation


# static fields
.field private static final ANIM_TIME:I = 0x64

.field private static final BITMAP_CACHE_MAX_FILE_SIZE_IN_BYTES:I = 0x500000

.field private static final BMP_FILE_CACHE_DIR_NAME:Ljava/lang/String; = "texture"

.field private static final BMP_FILE_CACHE_SIZE:I = 0x7d0

.field private static final DECODE_THREAD_WAIT_TIMEOUT_MS:I = 0xbb8

.field private static final TEXTURE_TIMEOUT_MS:I = 0x3a98

.field private static final TIME_TO_RETRY_MS:J = 0x493e0L

.field public static instance:Lcom/microsoft/xbox/toolkit/ui/TextureManager;


# instance fields
.field private bitmapCache:Lcom/microsoft/xbox/toolkit/XLEMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/toolkit/XLEMemoryCache",
            "<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;",
            "Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

.field private decodeThread:Ljava/lang/Thread;

.field private inProgress:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;",
            ">;"
        }
    .end annotation
.end field

.field private listLock:Ljava/lang/Object;

.field private resourceBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;",
            "Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private stopwatch:Lcom/microsoft/xbox/toolkit/TimeMonitor;

.field private timeToRetryCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private toDecode:Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue",
            "<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/toolkit/MultiMap",
            "<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->instance:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->listLock:Ljava/lang/Object;

    .line 52
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->inProgress:Ljava/util/HashSet;

    .line 53
    new-instance v1, Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/MultiMap;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    .line 56
    const-string v1, "texture"

    const/16 v2, 0x7d0

    invoke-static {v1, v2}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->createCache(Ljava/lang/String;I)Lcom/microsoft/xbox/toolkit/XLEFileCache;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->timeToRetryCache:Ljava/util/HashMap;

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->resourceBitmapCache:Ljava/util/HashMap;

    .line 67
    new-instance v1, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->toDecode:Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;

    .line 69
    iput-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->decodeThread:Ljava/lang/Thread;

    .line 70
    new-instance v1, Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/TimeMonitor;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->stopwatch:Lcom/microsoft/xbox/toolkit/TimeMonitor;

    .line 91
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->getNetworkBitmapCacheSizeInMB()I

    move-result v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/high16 v2, 0x100000

    mul-int v0, v1, v2

    .line 92
    .local v0, "NETWORK_BITMAP_CACHE_SIZE_IN_BYTES":I
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    const/high16 v2, 0x500000

    invoke-direct {v1, v0, v2}, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;-><init>(II)V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapCache:Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    .line 94
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->stopwatch:Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/TimeMonitor;->start()V

    .line 96
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEThread;

    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;

    invoke-direct {v2, p0, v3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;)V

    const-string v3, "XLETextureDecodeThread"

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/XLEThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->decodeThread:Ljava/lang/Thread;

    .line 97
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->decodeThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 98
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->decodeThread:Ljava/lang/Thread;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 99
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->decodeThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 100
    return-void
.end method

.method public static Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->instance:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->toDecode:Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/MultiMap;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/TextureManager;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setImage(Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/toolkit/ui/TextureManager;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/TextureManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->computeInSampleSizeOptions(IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/XLEFileCache;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    return-object v0
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;II)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/TextureManager;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->createScaledBitmap(Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;II)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->listLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/XLEMemoryCache;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapCache:Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    return-object v0
.end method

.method static synthetic access$700(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->timeToRetryCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/TextureManager;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;
    .param p2, "x2"    # Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->drainWaitingForImage(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    return-void
.end method

.method static synthetic access$900(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->inProgress:Ljava/util/HashSet;

    return-object v0
.end method

.method private bindToViewInternal(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "option"    # Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    .prologue
    const/4 v7, -0x1

    .line 264
    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    invoke-direct {v2, p1, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;-><init>(Ljava/lang/String;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    .line 265
    .local v2, "key":Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;
    const/4 v1, 0x0

    .line 266
    .local v1, "bitmap":Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    const/4 v3, 0x1

    .line 269
    .local v3, "needToDownload":Z
    iget-object v6, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->listLock:Ljava/lang/Object;

    monitor-enter v6

    .line 271
    :try_start_0
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {v5, p2}, Lcom/microsoft/xbox/toolkit/MultiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {v5, p2}, Lcom/microsoft/xbox/toolkit/MultiMap;->removeValue(Ljava/lang/Object;)V

    .line 275
    :cond_0
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->invalidUrl(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 276
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapCache:Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    invoke-virtual {v5, v2}, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-object v1, v0

    .line 279
    if-nez v1, :cond_7

    .line 280
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->timeToRetryCache:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;

    .line 281
    .local v4, "retryEntry":Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;
    if-eqz v4, :cond_6

    .line 282
    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 284
    const/4 v3, 0x1

    .line 310
    .end local v4    # "retryEntry":Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;
    :goto_0
    if-eqz v3, :cond_2

    .line 312
    iget v5, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForLoading:I

    if-eq v5, v7, :cond_1

    .line 313
    iget v5, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForLoading:I

    invoke-virtual {p0, v5}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_a

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 317
    :cond_1
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {v5, v2, p2}, Lcom/microsoft/xbox/toolkit/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->inProgress:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 320
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->inProgress:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-direct {p0, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->load(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;)V

    .line 325
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-direct {p0, p2, v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setImage(Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    .line 331
    instance-of v5, p2, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    if-eqz v5, :cond_3

    .line 332
    check-cast p2, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    .end local p2    # "view":Landroid/widget/ImageView;
    iput-object p1, p2, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->TEST_loadingOrLoadedImageUrl:Ljava/lang/String;

    .line 334
    :cond_3
    return-void

    .line 287
    .restart local v4    # "retryEntry":Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;
    .restart local p2    # "view":Landroid/widget/ImageView;
    :cond_4
    :try_start_1
    iget v5, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    if-eq v5, v7, :cond_5

    .line 288
    iget v5, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    invoke-virtual {p0, v5}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v1

    .line 290
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 293
    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    .line 296
    .end local v4    # "retryEntry":Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;
    :cond_7
    const/4 v3, 0x0

    goto :goto_0

    .line 299
    :cond_8
    iget v5, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    if-eq v5, v7, :cond_9

    .line 301
    iget v5, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    invoke-virtual {p0, v5}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v1

    .line 302
    const/4 v3, 0x0

    .line 303
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 306
    :cond_9
    const/4 v3, 0x0

    goto :goto_0

    .line 314
    :cond_a
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private computeInSampleSizeOptions(IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;
    .locals 12
    .param p1, "desiredw"    # I
    .param p2, "desiredh"    # I
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v4, 0x1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 143
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 145
    .local v2, "scaleoptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    .line 146
    .local v1, "scale":I
    invoke-static {p1, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->validResizeDimention(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    iget v5, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v5, p1, :cond_0

    iget v5, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v5, p2, :cond_0

    .line 148
    iget v5, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    int-to-float v6, p1

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 149
    .local v3, "widthscale":I
    iget v5, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    int-to-float v6, p2

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 151
    .local v0, "heightscale":I
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-double v6, v5

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v1, v6

    .line 152
    if-lt v1, v4, :cond_1

    :goto_0
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 156
    .end local v0    # "heightscale":I
    .end local v3    # "widthscale":I
    :cond_0
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 157
    return-object v2

    .line 152
    .restart local v0    # "heightscale":I
    .restart local v3    # "widthscale":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private createScaledBitmap(Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;II)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .locals 6
    .param p1, "bitmapsrc"    # Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x1

    .line 416
    move-object v0, p1

    .line 418
    .local v0, "bitmap":Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    invoke-static {p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->validResizeDimention(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 419
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 420
    .local v1, "bitmapAR":F
    int-to-float v3, p3

    int-to-float v4, p2

    div-float v2, v3, v4

    .line 422
    .local v2, "viewAR":F
    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    .line 424
    int-to-float v3, p3

    div-float/2addr v3, v1

    float-to-int p2, v3

    .line 425
    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 432
    :goto_0
    invoke-static {p1, p2, p3, v5}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->createScaledBitmap8888(Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;IIZ)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v0

    .line 435
    .end local v1    # "bitmapAR":F
    .end local v2    # "viewAR":F
    :cond_0
    return-object v0

    .line 428
    .restart local v1    # "bitmapAR":F
    .restart local v2    # "viewAR":F
    :cond_1
    int-to-float v3, p2

    mul-float/2addr v3, v1

    float-to-int p3, v3

    .line 429
    invoke-static {v5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_0
.end method

.method private drainWaitingForImage(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 3
    .param p1, "key"    # Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;
    .param p2, "bitmap"    # Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    .prologue
    .line 441
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {v1, p1}, Lcom/microsoft/xbox/toolkit/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {v1, p1}, Lcom/microsoft/xbox/toolkit/MultiMap;->get(Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 444
    .local v0, "view":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 445
    instance-of v2, v0, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    if-eqz v2, :cond_1

    .line 446
    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    .end local v0    # "view":Landroid/widget/ImageView;
    invoke-direct {p0, p1, v0, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setXLEImageView(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    goto :goto_0

    .line 449
    .restart local v0    # "view":Landroid/widget/ImageView;
    :cond_1
    invoke-direct {p0, p1, v0, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setView(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    goto :goto_0

    .line 454
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_2
    return-void
.end method

.method private getNetworkBitmapCacheSizeInMB()I
    .locals 3

    .prologue
    .line 86
    const/4 v1, 0x0

    invoke-static {}, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->instance()Lcom/microsoft/xbox/toolkit/MemoryMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->getMemoryClass()I

    move-result v2

    add-int/lit8 v2, v2, -0x40

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 87
    .local v0, "overflow":I
    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0xc

    return v1
.end method

.method private static invalidUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 110
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private load(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;)V
    .locals 2
    .param p1, "key"    # Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    .prologue
    .line 122
    iget-object v1, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->invalidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;

    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    invoke-direct {v1, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;)V

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;)V

    .line 129
    .local v0, "worker":Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;
    sget-object v1, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->textureThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->run(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setImage(Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 4
    .param p1, "img"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    .prologue
    .line 558
    if-nez p2, :cond_2

    const/4 v0, 0x0

    .line 559
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :goto_0
    sget v2, Lcom/microsoft/xboxtcui/R$id;->image_callback:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;

    .line 561
    .local v1, "listener":Lcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;
    if-eqz v1, :cond_0

    .line 562
    invoke-interface {v1, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;->onBeforeImageSet(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 565
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 566
    sget v2, Lcom/microsoft/xboxtcui/R$id;->image_bound:I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 568
    if-eqz v1, :cond_1

    .line 569
    invoke-interface {v1, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;->onAfterImageSet(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 571
    :cond_1
    return-void

    .line 558
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "listener":Lcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;
    :cond_2
    invoke-virtual {p2}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private setView(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 1
    .param p1, "key"    # Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "bitmap"    # Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    .prologue
    .line 464
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    .line 494
    return-void
.end method

.method private setXLEImageView(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 1
    .param p1, "key"    # Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;
    .param p2, "view"    # Lcom/microsoft/xbox/toolkit/ui/XLEImageView;
    .param p3, "bitmap"    # Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    .prologue
    .line 504
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    .line 548
    return-void
.end method

.method private static validResizeDimention(II)Z
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 114
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 118
    :cond_1
    if-lez p0, :cond_2

    if-lez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindToView(ILandroid/widget/ImageView;II)V
    .locals 6
    .param p1, "resourceId"    # I
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 196
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToView(ILandroid/widget/ImageView;IILcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;)V

    .line 197
    return-void
.end method

.method public bindToView(ILandroid/widget/ImageView;IILcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;)V
    .locals 5
    .param p1, "resourceId"    # I
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "listener"    # Lcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v4, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v0

    .line 204
    .local v0, "bitmap":Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 207
    instance-of v1, p2, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 208
    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->TEST_loadingOrLoadedImageUrl:Ljava/lang/String;

    .line 212
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setImage(Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    .line 213
    return-void

    .end local v0    # "bitmap":Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    :cond_1
    move v1, v3

    .line 200
    goto :goto_0

    .restart local v0    # "bitmap":Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    :cond_2
    move v2, v3

    .line 204
    goto :goto_1
.end method

.method public bindToView(Ljava/net/URI;Landroid/widget/ImageView;II)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 231
    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 230
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    :cond_2
    if-nez p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-direct {v1, p3, p4}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(II)V

    invoke-direct {p0, v0, p2, v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToViewInternal(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    .line 236
    return-void

    .line 235
    :cond_3
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public bindToView(Ljava/net/URI;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "option"    # Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    .prologue
    .line 239
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 240
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToViewInternal(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    .line 241
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public bindToViewFromFile(Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 222
    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 221
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 226
    :cond_2
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-direct {v0, p3, p4}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(II)V

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToViewInternal(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    .line 227
    return-void
.end method

.method public bindToViewFromFile(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "option"    # Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    .prologue
    .line 216
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToViewInternal(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    .line 218
    return-void

    .line 216
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBusy()Z
    .locals 2

    .prologue
    .line 257
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->listLock:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->inProgress:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .locals 5
    .param p1, "resourceId"    # I

    .prologue
    .line 161
    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;

    invoke-direct {v2, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;-><init>(I)V

    .line 162
    .local v2, "request":Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->resourceBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    .line 163
    .local v0, "bitmap":Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    if-nez v0, :cond_0

    .line 165
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 166
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 167
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 170
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    invoke-static {v3, v4}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->decodeResource(Landroid/content/res/Resources;I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v0

    .line 172
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->resourceBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 176
    return-object v0
.end method

.method public loadScaledResourceDrawable(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v0

    .line 134
    .local v0, "bitmap":Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    if-nez v0, :cond_0

    .line 135
    const/4 v1, 0x0

    .line 138
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->getDrawable()Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    move-result-object v1

    goto :goto_0
.end method

.method public logMemoryUsage()V
    .locals 0

    .prologue
    .line 551
    return-void
.end method

.method public preload(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    .line 181
    return-void
.end method

.method public preload(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 188
    return-void
.end method

.method public preloadFromFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 192
    return-void
.end method

.method public purgeResourceBitmapCache()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->resourceBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 555
    return-void
.end method

.method public setCachingEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 244
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->getNetworkBitmapCacheSizeInMB()I

    move-result v0

    .line 246
    .local v0, "networkCacheSize":I
    :goto_0
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    const/high16 v2, 0x500000

    invoke-direct {v1, v0, v2}, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;-><init>(II)V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapCache:Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    .line 247
    const-string v1, "texture"

    const/16 v2, 0x7d0

    invoke-static {v1, v2, p1}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->createCache(Ljava/lang/String;IZ)Lcom/microsoft/xbox/toolkit/XLEFileCache;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    .line 248
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->resourceBitmapCache:Ljava/util/HashMap;

    .line 249
    return-void

    .line 244
    .end local v0    # "networkCacheSize":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unsafeClearBitmapCache()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method
