.class Lcom/microsoft/xbox/idp/ui/SignUpFragment$2;
.super Ljava/lang/Object;
.source "SignUpFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/ui/SignUpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 146
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$200(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_0

    sget v0, Lcom/microsoft/xbox/idp/R$drawable;->xbid_edit_text_state_focused:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 150
    return-void

    .line 149
    :cond_0
    sget v0, Lcom/microsoft/xbox/idp/R$drawable;->xbid_edit_text_state_normal:I

    goto :goto_0
.end method
