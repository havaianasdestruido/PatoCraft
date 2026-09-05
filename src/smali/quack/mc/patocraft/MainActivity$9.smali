.class Lquack/mc/patocraft/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lquack/mc/patocraft/MainActivity;->showKeyboard(Ljava/lang/String;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lquack/mc/patocraft/MainActivity;

.field final synthetic val$fLimitInput:Z

.field final synthetic val$fMaxLength:I

.field final synthetic val$fNumbersOnly:Z

.field final synthetic val$startText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lquack/mc/patocraft/MainActivity;Ljava/lang/String;IZZ)V
    .locals 0
    .param p1, "this$0"    # Lquack/mc/patocraft/MainActivity;

    .prologue
    .line 585
    iput-object p1, p0, Lquack/mc/patocraft/MainActivity$9;->this$0:Lquack/mc/patocraft/MainActivity;

    iput-object p2, p0, Lquack/mc/patocraft/MainActivity$9;->val$startText:Ljava/lang/String;

    iput p3, p0, Lquack/mc/patocraft/MainActivity$9;->val$fMaxLength:I

    iput-boolean p4, p0, Lquack/mc/patocraft/MainActivity$9;->val$fLimitInput:Z

    iput-boolean p5, p0, Lquack/mc/patocraft/MainActivity$9;->val$fNumbersOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 587
    iget-object v0, p0, Lquack/mc/patocraft/MainActivity$9;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v1, p0, Lquack/mc/patocraft/MainActivity$9;->val$startText:Ljava/lang/String;

    iget v2, p0, Lquack/mc/patocraft/MainActivity$9;->val$fMaxLength:I

    iget-boolean v3, p0, Lquack/mc/patocraft/MainActivity$9;->val$fLimitInput:Z

    iget-boolean v4, p0, Lquack/mc/patocraft/MainActivity$9;->val$fNumbersOnly:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lquack/mc/patocraft/MainActivity;->setupKeyboardViews(Ljava/lang/String;IZZ)V

    .line 588
    return-void
.end method
