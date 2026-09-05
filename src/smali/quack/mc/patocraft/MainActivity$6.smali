.class Lquack/mc/patocraft/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lquack/mc/patocraft/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lquack/mc/patocraft/MainActivity;

    .prologue
    .line 539
    iput-object p1, p0, Lquack/mc/patocraft/MainActivity$6;->this$0:Lquack/mc/patocraft/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move v6, v5

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 543
    .local v14, "event":Landroid/view/MotionEvent;
    iget-object v0, p0, Lquack/mc/patocraft/MainActivity$6;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v0, v0, Lquack/mc/patocraft/MainActivity;->textInputWidget:Lquack/mc/patocraft/TextInputProxyEditTextbox;

    invoke-virtual {v0, v14}, Lquack/mc/patocraft/TextInputProxyEditTextbox;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 544
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 545
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x1

    move v11, v5

    move v12, v5

    move v13, v4

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 546
    iget-object v0, p0, Lquack/mc/patocraft/MainActivity$6;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v0, v0, Lquack/mc/patocraft/MainActivity;->textInputWidget:Lquack/mc/patocraft/TextInputProxyEditTextbox;

    invoke-virtual {v0, v14}, Lquack/mc/patocraft/TextInputProxyEditTextbox;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 547
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 548
    iget-object v0, p0, Lquack/mc/patocraft/MainActivity$6;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v0, v0, Lquack/mc/patocraft/MainActivity;->textInputWidget:Lquack/mc/patocraft/TextInputProxyEditTextbox;

    iget-object v1, p0, Lquack/mc/patocraft/MainActivity$6;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v1, v1, Lquack/mc/patocraft/MainActivity;->textInputWidget:Lquack/mc/patocraft/TextInputProxyEditTextbox;

    invoke-virtual {v1}, Lquack/mc/patocraft/TextInputProxyEditTextbox;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lquack/mc/patocraft/TextInputProxyEditTextbox;->setSelection(I)V

    .line 549
    return-void
.end method
