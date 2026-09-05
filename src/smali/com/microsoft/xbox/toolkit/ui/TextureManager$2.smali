.class Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;
.super Ljava/lang/Object;
.source "TextureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setXLEImageView(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

.field final synthetic val$bitmap:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

.field final synthetic val$key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

.field final synthetic val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    iput-object p4, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$bitmap:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 506
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v4, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 508
    const/4 v2, 0x0

    .line 510
    .local v2, "stillValid":Z
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$500(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 514
    :try_start_0
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$1000(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/MultiMap;

    move-result-object v3

    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v6, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    invoke-virtual {v3, v5, v6}, Lcom/microsoft/xbox/toolkit/MultiMap;->keyValueMatches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 515
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    if-eqz v2, :cond_0

    .line 518
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->getAlpha()F

    move-result v0

    .line 519
    .local v0, "finalAlpha":F
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->getShouldAnimate()Z

    move-result v1

    .line 520
    .local v1, "shouldAnimate":Z
    if-eqz v1, :cond_2

    .line 521
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2$1;

    invoke-direct {v4, p0, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;F)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 540
    :goto_1
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$500(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 541
    :try_start_1
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$1000(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/MultiMap;

    move-result-object v3

    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    invoke-virtual {v3, v5}, Lcom/microsoft/xbox/toolkit/MultiMap;->removeValue(Ljava/lang/Object;)V

    .line 542
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 546
    .end local v0    # "finalAlpha":F
    .end local v1    # "shouldAnimate":Z
    :cond_0
    return-void

    .line 506
    .end local v2    # "stillValid":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 515
    .restart local v2    # "stillValid":Z
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 531
    .restart local v0    # "finalAlpha":F
    .restart local v1    # "shouldAnimate":Z
    :cond_2
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$bitmap:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    invoke-static {v3, v4, v5}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$1100(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    goto :goto_1

    .line 542
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method
