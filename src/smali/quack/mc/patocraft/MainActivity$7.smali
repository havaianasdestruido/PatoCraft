.class Lquack/mc/patocraft/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lquack/mc/patocraft/MainActivity;->setupKeyboardViews(Ljava/lang/String;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lquack/mc/patocraft/MainActivity;

.field final synthetic val$activityRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lquack/mc/patocraft/MainActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lquack/mc/patocraft/MainActivity;

    .prologue
    .line 553
    iput-object p1, p0, Lquack/mc/patocraft/MainActivity$7;->this$0:Lquack/mc/patocraft/MainActivity;

    iput-object p2, p0, Lquack/mc/patocraft/MainActivity$7;->val$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 555
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 557
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lquack/mc/patocraft/MainActivity$7;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 559
    iget-object v1, p0, Lquack/mc/patocraft/MainActivity$7;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v2, p0, Lquack/mc/patocraft/MainActivity$7;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lquack/mc/patocraft/MainActivity;->virtualKeyboardHeight:I

    .line 560
    return-void
.end method
