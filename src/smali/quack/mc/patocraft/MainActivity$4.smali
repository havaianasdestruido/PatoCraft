.class Lquack/mc/patocraft/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lquack/mc/patocraft/TextInputProxyEditTextbox$MCPEKeyWatcher;


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
    .line 470
    iput-object p1, p0, Lquack/mc/patocraft/MainActivity$4;->this$0:Lquack/mc/patocraft/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackKeyPressed()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lquack/mc/patocraft/MainActivity$4;->this$0:Lquack/mc/patocraft/MainActivity;

    new-instance v1, Lquack/mc/patocraft/MainActivity$4$2;

    invoke-direct {v1, p0}, Lquack/mc/patocraft/MainActivity$4$2;-><init>(Lquack/mc/patocraft/MainActivity$4;)V

    invoke-virtual {v0, v1}, Lquack/mc/patocraft/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 495
    return-void
.end method

.method public onDeleteKeyPressed()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lquack/mc/patocraft/MainActivity$4;->this$0:Lquack/mc/patocraft/MainActivity;

    new-instance v1, Lquack/mc/patocraft/MainActivity$4$1;

    invoke-direct {v1, p0}, Lquack/mc/patocraft/MainActivity$4$1;-><init>(Lquack/mc/patocraft/MainActivity$4;)V

    invoke-virtual {v0, v1}, Lquack/mc/patocraft/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 481
    return-void
.end method
