.class final Lcom/microsoft/onlineid/internal/ui/Dimensions$1;
.super Ljava/lang/Object;
.source "Dimensions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/internal/ui/Dimensions;->ensureMinimumTouchTarget(Landroid/view/View;Landroid/view/View;Landroid/util/DisplayMetrics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$metrics:Landroid/util/DisplayMetrics;

.field final synthetic val$parentView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/util/DisplayMetrics;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;->val$metrics:Landroid/util/DisplayMetrics;

    iput-object p3, p0, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;->val$parentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 49
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;->val$view:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 52
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 53
    .local v2, "height":I
    const/high16 v5, 0x42400000    # 48.0f

    iget-object v6, p0, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;->val$metrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v6}, Lcom/microsoft/onlineid/internal/ui/Dimensions;->convertDipToPixels(FLandroid/util/DisplayMetrics;)I

    move-result v3

    .line 54
    .local v3, "minimumPixels":I
    if-ge v4, v3, :cond_0

    .line 56
    sub-int v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v1, v5, 0x2

    .line 57
    .local v1, "extraPadding":I
    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v1

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 58
    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 60
    .end local v1    # "extraPadding":I
    :cond_0
    if-ge v2, v3, :cond_1

    .line 62
    sub-int v5, v3, v2

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v1, v5, 0x2

    .line 63
    .restart local v1    # "extraPadding":I
    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v1

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 64
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v1

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 67
    .end local v1    # "extraPadding":I
    :cond_1
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;->val$parentView:Landroid/view/View;

    new-instance v6, Landroid/view/TouchDelegate;

    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/Dimensions$1;->val$view:Landroid/view/View;

    invoke-direct {v6, v0, v7}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 68
    return-void
.end method
