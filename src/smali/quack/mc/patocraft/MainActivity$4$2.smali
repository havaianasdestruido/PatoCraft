.class Lquack/mc/patocraft/MainActivity$4$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lquack/mc/patocraft/MainActivity$4;->onBackKeyPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lquack/mc/patocraft/MainActivity$4;


# direct methods
.method constructor <init>(Lquack/mc/patocraft/MainActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lquack/mc/patocraft/MainActivity$4;

    .prologue
    .line 485
    iput-object p1, p0, Lquack/mc/patocraft/MainActivity$4$2;->this$1:Lquack/mc/patocraft/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 489
    const-string v0, "mcpe - keyboard"

    const-string v1, "textInputWidget.onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lquack/mc/patocraft/MainActivity$4$2;->this$1:Lquack/mc/patocraft/MainActivity$4;

    iget-object v0, v0, Lquack/mc/patocraft/MainActivity$4;->this$0:Lquack/mc/patocraft/MainActivity;

    invoke-virtual {v0}, Lquack/mc/patocraft/MainActivity;->nativeBackPressed()V

    .line 493
    return-void
.end method
