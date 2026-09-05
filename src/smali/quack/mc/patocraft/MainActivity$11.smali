.class Lquack/mc/patocraft/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lquack/mc/patocraft/MainActivity;->updateTextboxText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lquack/mc/patocraft/MainActivity;

.field final synthetic val$setText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lquack/mc/patocraft/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lquack/mc/patocraft/MainActivity;

    .prologue
    .line 605
    iput-object p1, p0, Lquack/mc/patocraft/MainActivity$11;->this$0:Lquack/mc/patocraft/MainActivity;

    iput-object p2, p0, Lquack/mc/patocraft/MainActivity$11;->val$setText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 611
    iget-object v0, p0, Lquack/mc/patocraft/MainActivity$11;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v0, v0, Lquack/mc/patocraft/MainActivity;->textInputWidget:Lquack/mc/patocraft/TextInputProxyEditTextbox;

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lquack/mc/patocraft/MainActivity$11;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v1, p0, Lquack/mc/patocraft/MainActivity$11;->val$setText:Ljava/lang/String;

    iget-object v2, p0, Lquack/mc/patocraft/MainActivity$11;->val$setText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lquack/mc/patocraft/MainActivity;->setupKeyboardViews(Ljava/lang/String;IZZ)V

    .line 614
    :cond_0
    iget-object v0, p0, Lquack/mc/patocraft/MainActivity$11;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v0, v0, Lquack/mc/patocraft/MainActivity;->textInputWidget:Lquack/mc/patocraft/TextInputProxyEditTextbox;

    iget-object v1, p0, Lquack/mc/patocraft/MainActivity$11;->val$setText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lquack/mc/patocraft/TextInputProxyEditTextbox;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v0, p0, Lquack/mc/patocraft/MainActivity$11;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v0, v0, Lquack/mc/patocraft/MainActivity;->textInputWidget:Lquack/mc/patocraft/TextInputProxyEditTextbox;

    iget-object v1, p0, Lquack/mc/patocraft/MainActivity$11;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v1, v1, Lquack/mc/patocraft/MainActivity;->textInputWidget:Lquack/mc/patocraft/TextInputProxyEditTextbox;

    invoke-virtual {v1}, Lquack/mc/patocraft/TextInputProxyEditTextbox;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lquack/mc/patocraft/TextInputProxyEditTextbox;->setSelection(I)V

    .line 616
    return-void
.end method
