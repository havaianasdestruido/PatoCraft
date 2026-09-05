.class Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;
.super Landroid/util/LruCache;
.source "XLEMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/XLEMemoryCache;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<TK;",
        "Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/XLEMemoryCache;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/XLEMemoryCache;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/toolkit/XLEMemoryCache;
    .param p2, "x0"    # I

    .prologue
    .line 20
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;"
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;->this$0:Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;)V
    .locals 1
    .param p1, "evicted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;",
            "Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry",
            "<TV;>;",
            "Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry<TV;>;"
    .local p4, "newValue":Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry<TV;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;->this$0:Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->access$006(Lcom/microsoft/xbox/toolkit/XLEMemoryCache;)I

    .line 30
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;"
    check-cast p3, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;

    check-cast p4, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;->entryRemoved(ZLjava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;)V

    return-void
.end method

.method protected sizeOf(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry",
            "<TV;>;)I"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry<TV;>;"
    invoke-virtual {p2}, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;->getByteCount()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;"
    check-cast p2, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;->sizeOf(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;)I

    move-result v0

    return v0
.end method
