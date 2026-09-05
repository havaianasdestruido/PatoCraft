.class Lcom/microsoft/xbox/idp/ui/SignUpFragment$3;
.super Ljava/lang/Object;
.source "SignUpFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/SignUpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$300(Lcom/microsoft/xbox/idp/ui/SignUpFragment;Ljava/lang/CharSequence;)V

    .line 320
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 311
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 315
    return-void
.end method
