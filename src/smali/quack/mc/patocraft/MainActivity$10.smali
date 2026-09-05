.class Lquack/mc/patocraft/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lquack/mc/patocraft/MainActivity;->hideKeyboard()V
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
    .line 592
    iput-object p1, p0, Lquack/mc/patocraft/MainActivity$10;->this$0:Lquack/mc/patocraft/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lquack/mc/patocraft/MainActivity$10;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v0, v0, Lquack/mc/patocraft/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lquack/mc/patocraft/MainActivity$10;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v0, v0, Lquack/mc/patocraft/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 598
    iget-object v0, p0, Lquack/mc/patocraft/MainActivity$10;->this$0:Lquack/mc/patocraft/MainActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lquack/mc/patocraft/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    .line 600
    :cond_0
    return-void
.end method
