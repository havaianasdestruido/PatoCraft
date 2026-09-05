.class Lquack/mc/patocraft/MainActivity$4$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lquack/mc/patocraft/MainActivity$4;->onDeleteKeyPressed()V
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
    .line 473
    iput-object p1, p0, Lquack/mc/patocraft/MainActivity$4$1;->this$1:Lquack/mc/patocraft/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lquack/mc/patocraft/MainActivity$4$1;->this$1:Lquack/mc/patocraft/MainActivity$4;

    iget-object v0, v0, Lquack/mc/patocraft/MainActivity$4;->this$0:Lquack/mc/patocraft/MainActivity;

    invoke-virtual {v0}, Lquack/mc/patocraft/MainActivity;->nativeBackSpacePressed()V

    .line 478
    return-void
.end method
