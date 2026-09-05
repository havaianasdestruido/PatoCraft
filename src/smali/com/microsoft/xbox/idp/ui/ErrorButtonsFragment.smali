.class public Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "ErrorButtonsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;
    }
.end annotation


# static fields
.field public static final ARG_LEFT_ERROR_BUTTON_STRING_ID:Ljava/lang/String; = "ARG_LEFT_ERROR_BUTTON_STRING_ID"

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;


# instance fields
.field private callbacks:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    .line 22
    sget-object v0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 27
    check-cast p1, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    .line 28
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 56
    .local v0, "id":I
    sget v1, Lcom/microsoft/xbox/idp/R$id;->xbid_error_left_button:I

    if-ne v0, v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    invoke-interface {v1}, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;->onClickedLeftButton()V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    sget v1, Lcom/microsoft/xbox/idp/R$id;->xbid_error_right_button:I

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    invoke-interface {v1}, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;->onClickedRightButton()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    sget v0, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_error_buttons:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onDetach()V

    .line 33
    sget-object v0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    .line 34
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    sget v2, Lcom/microsoft/xbox/idp/R$id;->xbid_error_left_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 45
    .local v1, "leftButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget v2, Lcom/microsoft/xbox/idp/R$id;->xbid_error_right_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "ARG_LEFT_ERROR_BUTTON_STRING_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const-string v2, "ARG_LEFT_ERROR_BUTTON_STRING_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 51
    :cond_0
    return-void
.end method
