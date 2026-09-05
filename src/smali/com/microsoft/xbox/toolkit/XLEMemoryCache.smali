.class public Lcom/microsoft/xbox/toolkit/XLEMemoryCache;
.super Ljava/lang/Object;
.source "XLEMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private itemCount:I

.field private final lruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<TK;",
            "Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private final maxFileSizeBytes:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "sizeInBytes"    # I
    .param p2, "maxFileSizeInBytes"    # I

    .prologue
    .line 10
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEMemoryCache;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    .line 11
    if-gez p1, :cond_0

    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sizeInBytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_0
    if-gez p2, :cond_1

    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxFileSizeInBytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    iput p2, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->maxFileSizeBytes:I

    .line 20
    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    .line 32
    return-void

    .line 20
    :cond_2
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;-><init>(Lcom/microsoft/xbox/toolkit/XLEMemoryCache;I)V

    goto :goto_0
.end method

.method static synthetic access$006(Lcom/microsoft/xbox/toolkit/XLEMemoryCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    .prologue
    .line 5
    iget v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 3
    .param p3, "fileByteCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEMemoryCache;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCache<TK;TV;>;"
    .local p1, "filename":Ljava/lang/Object;, "TK;"
    .local p2, "data":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .line 50
    iget v2, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->maxFileSizeBytes:I

    if-le p3, v2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    if-eqz v2, :cond_0

    .line 59
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;

    invoke-direct {v0, p2, p3}, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;-><init>(Ljava/lang/Object;I)V

    .line 62
    .local v0, "entry":Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry<TV;>;"
    iget v1, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    .line 63
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEMemoryCache;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCache<TK;TV;>;"
    .local p1, "filename":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 69
    .local v1, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;

    .line 71
    .local v0, "entry":Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry<TV;>;"
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 75
    .end local v0    # "entry":Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry<TV;>;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object v1
.end method

.method public getBytesCurrent()I
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEMemoryCache;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCache<TK;TV;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getBytesFree()I
    .locals 2

    .prologue
    .line 43
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEMemoryCache;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCache<TK;TV;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->maxSize()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItemsInCache()I
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEMemoryCache;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCache<TK;TV;>;"
    iget v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    return v0
.end method
