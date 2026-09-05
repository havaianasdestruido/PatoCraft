.class public Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;
.super Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;
.source "FriendFinderVerifyCodeScreenAdapter.java"


# instance fields
.field private callMeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private codeEditText:Landroid/widget/EditText;

.field private loadingLayout:Landroid/widget/FrameLayout;

.field private resendCodeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private verifyButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;)V
    .locals 3
    .param p1, "viewModel"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    .line 30
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    .line 32
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_verify_code_edit_text:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->codeEditText:Landroid/widget/EditText;

    .line 33
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_verify_resend:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->resendCodeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    .line 34
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_verify_call_me:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->callMeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    .line 35
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_verify_verify_code:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->verifyButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    .line 36
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_verify_loading:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->loadingLayout:Landroid/widget/FrameLayout;

    .line 38
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->codeEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->resendCodeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->callMeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->verifyButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->loadingLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->resendCodeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    .line 45
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->resendCodeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 46
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->callMeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    .line 47
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->callMeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->verifyButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)Lcom/microsoft/xbox/toolkit/ui/XLEButton;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->verifyButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->codeEditText:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStart()V

    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->codeEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$1;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->resendCodeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$2;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$2;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->callMeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$3;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$3;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->verifyButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$4;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter$4;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method protected updateViewOverride()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->loadingLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 98
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->resendCodeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->isSendingCode()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->callMeButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderVerifyCodeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;->isSendingCode()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 100
    return-void

    .line 97
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    move v0, v1

    .line 98
    goto :goto_1

    :cond_2
    move v2, v1

    .line 99
    goto :goto_2
.end method
