.class Lcom/googleplay/iab/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googleplay/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/googleplay/iab/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googleplay/iab/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/googleplay/iab/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreItemSkus:Ljava/util/List;

.field final synthetic val$moreSubsSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/googleplay/iab/IabHelper;ZLjava/util/List;Ljava/util/List;Lcom/googleplay/iab/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/googleplay/iab/IabHelper;

    .prologue
    .line 698
    iput-object p1, p0, Lcom/googleplay/iab/IabHelper$2;->this$0:Lcom/googleplay/iab/IabHelper;

    iput-boolean p2, p0, Lcom/googleplay/iab/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/googleplay/iab/IabHelper$2;->val$moreItemSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/googleplay/iab/IabHelper$2;->val$moreSubsSkus:Ljava/util/List;

    iput-object p5, p0, Lcom/googleplay/iab/IabHelper$2;->val$listener:Lcom/googleplay/iab/IabHelper$QueryInventoryFinishedListener;

    iput-object p6, p0, Lcom/googleplay/iab/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 700
    new-instance v3, Lcom/googleplay/iab/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/googleplay/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 701
    .local v3, "result":Lcom/googleplay/iab/IabResult;
    const/4 v1, 0x0

    .line 703
    .local v1, "inv":Lcom/googleplay/iab/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/googleplay/iab/IabHelper$2;->this$0:Lcom/googleplay/iab/IabHelper;

    iget-boolean v6, p0, Lcom/googleplay/iab/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/googleplay/iab/IabHelper$2;->val$moreItemSkus:Ljava/util/List;

    iget-object v8, p0, Lcom/googleplay/iab/IabHelper$2;->val$moreSubsSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7, v8}, Lcom/googleplay/iab/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/googleplay/iab/Inventory;
    :try_end_0
    .catch Lcom/googleplay/iab/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 709
    :goto_0
    iget-object v5, p0, Lcom/googleplay/iab/IabHelper$2;->this$0:Lcom/googleplay/iab/IabHelper;

    invoke-virtual {v5}, Lcom/googleplay/iab/IabHelper;->flagEndAsync()V

    .line 711
    move-object v4, v3

    .line 712
    .local v4, "result_f":Lcom/googleplay/iab/IabResult;
    move-object v2, v1

    .line 713
    .local v2, "inv_f":Lcom/googleplay/iab/Inventory;
    iget-object v5, p0, Lcom/googleplay/iab/IabHelper$2;->this$0:Lcom/googleplay/iab/IabHelper;

    iget-boolean v5, v5, Lcom/googleplay/iab/IabHelper;->mDisposed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/googleplay/iab/IabHelper$2;->val$listener:Lcom/googleplay/iab/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_0

    .line 714
    iget-object v5, p0, Lcom/googleplay/iab/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/googleplay/iab/IabHelper$2$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/googleplay/iab/IabHelper$2$1;-><init>(Lcom/googleplay/iab/IabHelper$2;Lcom/googleplay/iab/IabResult;Lcom/googleplay/iab/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 720
    :cond_0
    return-void

    .line 705
    .end local v2    # "inv_f":Lcom/googleplay/iab/Inventory;
    .end local v4    # "result_f":Lcom/googleplay/iab/IabResult;
    :catch_0
    move-exception v0

    .line 706
    .local v0, "ex":Lcom/googleplay/iab/IabException;
    invoke-virtual {v0}, Lcom/googleplay/iab/IabException;->getResult()Lcom/googleplay/iab/IabResult;

    move-result-object v3

    goto :goto_0
.end method
