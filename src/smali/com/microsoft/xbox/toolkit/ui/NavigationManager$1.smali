.class Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

.field final synthetic val$callbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

.field final synthetic val$newScreen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

.field final synthetic val$popCount:I

.field final synthetic val$screenParameters:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;ILcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->val$screenParameters:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    iput p3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->val$popCount:I

    iput-object p4, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->val$callbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    iput-object p5, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->val$newScreen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 428
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->access$102(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Z)Z

    .line 429
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    .line 430
    .local v0, "from":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->val$screenParameters:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-virtual {v3, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFromScreen(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    .line 431
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->val$screenParameters:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putSourcePage(Ljava/lang/String;)V

    .line 433
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 434
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onSetInactive()V

    .line 435
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onPause()V

    .line 436
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onStop()V

    .line 440
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->val$popCount:I

    if-ge v1, v3, :cond_1

    .line 441
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onDestroy()V

    .line 442
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->val$callbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->access$200(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    invoke-interface {v4, v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;->removeContentViewXLE(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    .line 443
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->access$300(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->purgeResourceBitmapCache()V

    .line 448
    const/4 v2, 0x0

    .line 450
    .local v2, "to":Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->val$newScreen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    if-eqz v3, :cond_6

    .line 454
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->val$newScreen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isKeepPreviousScreen()Z

    move-result v3

    if-nez v3, :cond_2

    .line 455
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onTombstone()V

    .line 458
    :cond_2
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->val$callbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->access$200(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)Ljava/util/Stack;

    move-result-object v3

    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->val$newScreen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    invoke-virtual {v3, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    invoke-interface {v4, v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;->addContentViewXLE(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    .line 459
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->access$300(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)Ljava/util/Stack;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->val$screenParameters:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onCreate()V

    .line 472
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 473
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onStart()V

    .line 474
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onResume()V

    .line 475
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onSetActive()V

    .line 476
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onAnimateInStarted()V

    .line 477
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 478
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v2

    .line 481
    :cond_4
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->access$400(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 482
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->access$400(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;->onPageNavigated(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    .line 486
    :cond_5
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->access$102(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Z)Z

    .line 487
    return-void

    .line 463
    :cond_6
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 465
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->val$callbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;->addContentViewXLE(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    .line 467
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getIsTombstoned()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 468
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onRehydrate()V

    goto :goto_1
.end method
