.class Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;
.super Ljava/lang/Object;
.source "TextureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setView(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

.field final synthetic val$bitmap:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

.field final synthetic val$key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->val$key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->val$view:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->val$bitmap:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 466
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 468
    const/4 v0, 0x0

    .line 470
    .local v0, "stillValid":Z
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$500(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$1000(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/MultiMap;

    move-result-object v1

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->val$key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v4}, Lcom/microsoft/xbox/toolkit/MultiMap;->keyValueMatches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 475
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    if-eqz v0, :cond_0

    .line 478
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->val$view:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->val$bitmap:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    invoke-static {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$1100(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    .line 486
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$500(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 487
    :try_start_1
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$1000(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/MultiMap;

    move-result-object v1

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/toolkit/MultiMap;->removeValue(Ljava/lang/Object;)V

    .line 488
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 492
    :cond_0
    return-void

    .line 466
    .end local v0    # "stillValid":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 475
    .restart local v0    # "stillValid":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 488
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
