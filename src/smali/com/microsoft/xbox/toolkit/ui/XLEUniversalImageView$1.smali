.class Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;
.super Ljava/lang/Object;
.source "XLEUniversalImageView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 316
    sub-int v2, p4, p2

    .line 317
    .local v2, "width":I
    sub-int v0, p5, p3

    .line 318
    .local v0, "height":I
    sub-int v3, p8, p6

    if-ne v2, v3, :cond_0

    sub-int v3, p9, p7

    if-eq v0, v3, :cond_1

    .line 319
    :cond_0
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->access$100(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->hasText()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    invoke-direct {v1, v3}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;-><init>(Landroid/widget/ImageView;)V

    .line 321
    .local v1, "t":Lcom/microsoft/xbox/toolkit/ui/XLETextTask;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->access$100(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->getArgText()Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 324
    .end local v1    # "t":Lcom/microsoft/xbox/toolkit/ui/XLETextTask;
    :cond_1
    return-void
.end method
