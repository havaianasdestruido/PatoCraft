.class Lquack/mc/patocraft/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lquack/mc/patocraft/MainActivity;->createAlertDialog(ZZZ)V
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
    .line 652
    iput-object p1, p0, Lquack/mc/patocraft/MainActivity$12;->this$0:Lquack/mc/patocraft/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 655
    iget-object v0, p0, Lquack/mc/patocraft/MainActivity$12;->this$0:Lquack/mc/patocraft/MainActivity;

    invoke-static {v0}, Lquack/mc/patocraft/MainActivity;->access$100(Lquack/mc/patocraft/MainActivity;)V

    .line 656
    return-void
.end method
