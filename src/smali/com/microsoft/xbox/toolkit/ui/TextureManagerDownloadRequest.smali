.class public Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;
.super Ljava/lang/Object;
.source "TextureManagerDownloadRequest.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public index:I

.field public key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

.field public stream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;)V
    .locals 1
    .param p1, "key"    # Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    .line 11
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->index:I

    .line 12
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;)I
    .locals 2
    .param p1, "rhs"    # Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    .prologue
    .line 15
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->index:I

    iget v1, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->compareTo(Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;)I

    move-result v0

    return v0
.end method
