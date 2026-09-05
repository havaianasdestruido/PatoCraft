.class Lcom/microsoft/xbox/toolkit/XLEFileCache$1;
.super Ljava/io/OutputStream;
.source "XLEFileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/XLEFileCache;->getOuputStreamForSave(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/XLEFileCache;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/XLEFileCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/toolkit/XLEFileCache;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$1;->this$0:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    return-void
.end method
