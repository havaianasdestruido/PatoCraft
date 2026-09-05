.class Lquack/mc/patocraft/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 518
    iput-object p1, p0, Lquack/mc/patocraft/MainActivity$5;->this$0:Lquack/mc/patocraft/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 523
    iget-object v0, p0, Lquack/mc/patocraft/MainActivity$5;->this$0:Lquack/mc/patocraft/MainActivity;

    invoke-virtual {v0}, Lquack/mc/patocraft/MainActivity;->nativeBackPressed()V

    .line 524
    const/4 v0, 0x0

    return v0
.end method
