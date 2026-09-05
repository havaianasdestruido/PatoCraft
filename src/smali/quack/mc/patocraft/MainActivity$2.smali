.class Lquack/mc/patocraft/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 428
    iput-object p1, p0, Lquack/mc/patocraft/MainActivity$2;->this$0:Lquack/mc/patocraft/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 432
    const-string v5, "mcpe - keyboard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onEditorAction: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v2, 0x0

    .line 434
    .local v2, "handled":Z
    const/4 v5, 0x5

    if-ne p2, v5, :cond_3

    .line 435
    iget-object v5, p0, Lquack/mc/patocraft/MainActivity$2;->this$0:Lquack/mc/patocraft/MainActivity;

    invoke-virtual {v5}, Lquack/mc/patocraft/MainActivity;->nativeReturnKeyPressed()V

    .line 436
    iget-object v5, p0, Lquack/mc/patocraft/MainActivity$2;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v5, v5, Lquack/mc/patocraft/MainActivity;->textInputWidget:Lquack/mc/patocraft/TextInputProxyEditTextbox;

    invoke-virtual {v5}, Lquack/mc/patocraft/TextInputProxyEditTextbox;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "curText":Ljava/lang/String;
    iget-object v5, p0, Lquack/mc/patocraft/MainActivity$2;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v5, v5, Lquack/mc/patocraft/MainActivity;->textInputWidget:Lquack/mc/patocraft/TextInputProxyEditTextbox;

    invoke-virtual {v5}, Lquack/mc/patocraft/TextInputProxyEditTextbox;->getSelectionEnd()I

    move-result v0

    .line 439
    .local v0, "curSelect":I
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v0, v5, :cond_1

    .line 440
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 443
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "newText":Ljava/lang/String;
    iget-object v5, p0, Lquack/mc/patocraft/MainActivity$2;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v5, v5, Lquack/mc/patocraft/MainActivity;->textInputWidget:Lquack/mc/patocraft/TextInputProxyEditTextbox;

    invoke-virtual {v5, v4}, Lquack/mc/patocraft/TextInputProxyEditTextbox;->setText(Ljava/lang/CharSequence;)V

    .line 445
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lquack/mc/patocraft/MainActivity$2;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v6, v6, Lquack/mc/patocraft/MainActivity;->textInputWidget:Lquack/mc/patocraft/TextInputProxyEditTextbox;

    invoke-virtual {v6}, Lquack/mc/patocraft/TextInputProxyEditTextbox;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 446
    .local v3, "newSelection":I
    iget-object v5, p0, Lquack/mc/patocraft/MainActivity$2;->this$0:Lquack/mc/patocraft/MainActivity;

    iget-object v5, v5, Lquack/mc/patocraft/MainActivity;->textInputWidget:Lquack/mc/patocraft/TextInputProxyEditTextbox;

    invoke-virtual {v5, v3}, Lquack/mc/patocraft/TextInputProxyEditTextbox;->setSelection(I)V

    .line 448
    const/4 v2, 0x1

    .line 453
    .end local v0    # "curSelect":I
    .end local v1    # "curText":Ljava/lang/String;
    .end local v3    # "newSelection":I
    .end local v4    # "newText":Ljava/lang/String;
    :cond_2
    :goto_0
    return v2

    .line 449
    :cond_3
    const/4 v5, 0x7

    if-ne p2, v5, :cond_2

    .line 450
    iget-object v5, p0, Lquack/mc/patocraft/MainActivity$2;->this$0:Lquack/mc/patocraft/MainActivity;

    invoke-virtual {v5}, Lquack/mc/patocraft/MainActivity;->nativeBackPressed()V

    .line 451
    const/4 v2, 0x1

    goto :goto_0
.end method
