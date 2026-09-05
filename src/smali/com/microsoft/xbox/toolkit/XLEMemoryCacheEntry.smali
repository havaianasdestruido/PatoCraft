.class public Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;
.super Ljava/lang/Object;
.source "XLEMemoryCacheEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private byteCount:I

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 2
    .param p2, "byteCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 7
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry<TV;>;"
    .local p1, "data":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    if-nez p1, :cond_0

    .line 10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_0
    if-gtz p2, :cond_1

    .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteCount"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_1
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;->data:Ljava/lang/Object;

    .line 18
    iput p2, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;->byteCount:I

    .line 19
    return-void
.end method


# virtual methods
.method public getByteCount()I
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry<TV;>;"
    iget v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;->byteCount:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;, "Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry<TV;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;->data:Ljava/lang/Object;

    return-object v0
.end method
