.class public Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;
.super Lcom/microsoft/xbox/toolkit/XLEManagedDialog;
.source "ChangeFriendshipDialog.java"


# instance fields
.field private addFavorite:Landroid/widget/RadioButton;

.field private addFriend:Landroid/widget/RadioButton;

.field private cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

.field private confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private favoriteIconView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private gamertag:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private overlayLoadingIndicator:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

.field private previousVM:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

.field private profileAccountTier:Landroid/widget/TextView;

.field private profileGamerScore:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private profilePic:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

.field private realName:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

.field private shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

.field private vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vm"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .param p3, "previousVM"    # Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    .prologue
    .line 62
    sget v0, Lcom/microsoft/xboxtcui/R$style;->TcuiDialog:I

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;-><init>(Landroid/content/Context;I)V

    .line 63
    iput-object p3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->previousVM:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    .line 64
    iput-object p2, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->dismissSelf()V

    return-void
.end method

.method private dismissSelf()V
    .locals 1

    .prologue
    .line 305
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->getManager()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->dismissChangeFriendshipDialog()V

    .line 306
    return-void
.end method

.method private setDialogLoadingView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->overlayLoadingIndicator:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateVisibilityIfNotNull(Landroid/view/View;I)V

    .line 281
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    .line 287
    :cond_1
    return-void
.end method

.method private setDialogValidContentView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 270
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->overlayLoadingIndicator:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateVisibilityIfNotNull(Landroid/view/View;I)V

    .line 271
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    .line 277
    :cond_1
    return-void
.end method


# virtual methods
.method public closeDialog()V
    .locals 2

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->dismissSelf()V

    .line 291
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->previousVM:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->load(Z)V

    .line 292
    return-void
.end method

.method protected getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    const-string v0, "ChangeRelationship Info"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->dismissSelf()V

    .line 302
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x400

    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 69
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->requestWindowFeature(I)Z

    .line 72
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 73
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 75
    sget v3, Lcom/microsoft/xboxtcui/R$layout;->change_friendship_dialog:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->setContentView(I)V

    .line 76
    sget v3, Lcom/microsoft/xboxtcui/R$id;->change_friendship_profile_pic:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    iput-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profilePic:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    .line 77
    sget v3, Lcom/microsoft/xboxtcui/R$id;->gamertag_text:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->gamertag:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 78
    sget v3, Lcom/microsoft/xboxtcui/R$id;->realname_text:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->realName:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 79
    sget v3, Lcom/microsoft/xboxtcui/R$id;->peoplehub_info_gamerscore_icon:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profileAccountTier:Landroid/widget/TextView;

    .line 80
    sget v3, Lcom/microsoft/xboxtcui/R$id;->peoplehub_info_gamerscore:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profileGamerScore:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 81
    sget v3, Lcom/microsoft/xboxtcui/R$id;->add_as_friend:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFriend:Landroid/widget/RadioButton;

    .line 82
    sget v3, Lcom/microsoft/xboxtcui/R$id;->add_as_favorite:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFavorite:Landroid/widget/RadioButton;

    .line 83
    sget v3, Lcom/microsoft/xboxtcui/R$id;->share_real_name_checkbox:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    iput-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    .line 84
    sget v3, Lcom/microsoft/xboxtcui/R$id;->submit_button:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    .line 85
    sget v3, Lcom/microsoft/xboxtcui/R$id;->cancel_button:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    .line 86
    sget v3, Lcom/microsoft/xboxtcui/R$id;->change_friendship_switch_panel:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    iput-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    .line 87
    sget v3, Lcom/microsoft/xboxtcui/R$id;->remove_friend_btn_layout:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    iput-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    .line 88
    sget v3, Lcom/microsoft/xboxtcui/R$id;->people_favorites_icon:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->favoriteIconView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 89
    sget v3, Lcom/microsoft/xboxtcui/R$id;->overlay_loading_indicator:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    iput-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->overlayLoadingIndicator:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    .line 92
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 93
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, 0x5

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 96
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "closeButton":Lcom/microsoft/xbox/toolkit/ui/XLEButton;
    const/16 v3, 0x3c

    invoke-virtual {v0, v3, v5, v5, v5}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setPadding(IIII)V

    .line 98
    sget v3, Lcom/microsoft/xboxtcui/R$drawable;->common_button_background:I

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setBackgroundResource(I)V

    .line 99
    sget v3, Lcom/microsoft/xboxtcui/R$string;->ic_Close:I

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setText(I)V

    .line 100
    invoke-virtual {v0, v4}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTextColor(I)V

    .line 101
    const/4 v3, 0x2

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTextSize(IF)V

    .line 102
    const-string v3, "fonts/SegXboxSymbol.ttf"

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTypeFace(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/microsoft/xboxtcui/R$string;->TextInput_Confirm:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v3, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$1;

    invoke-direct {v3, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$1;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance v3, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$2;

    invoke-direct {v3, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$2;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 128
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-virtual {p0, v1, v2}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->load()V

    .line 135
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->updateView()V

    .line 137
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getPreferredColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->setBackgroundColor(I)V

    .line 139
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getActivityName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipView(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public reportAsyncTaskCompleted()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isBusy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->closeDialog()V

    .line 368
    :cond_0
    return-void
.end method

.method public reportAsyncTaskFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->setState(I)V

    .line 373
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->updateView()V

    .line 376
    return-void
.end method

.method public setVm(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;)V
    .locals 0
    .param p1, "vm"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    .line 310
    return-void
.end method

.method public updateShareIdentityCheckboxStatus()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 313
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getCallerShareRealNameStatus()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "callerShareRealNameStatus":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 316
    const-string v4, "Blocked"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 318
    .local v1, "isBlocked":Z
    iget-object v7, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    if-eqz v1, :cond_3

    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v7, v4}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setVisibility(I)V

    .line 320
    if-nez v1, :cond_2

    .line 321
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getRealName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v6

    .line 322
    .local v2, "isTargetSharingRealName":Z
    :goto_1
    const-string v4, "Everyone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 323
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v6}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    .line 324
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v4, v6}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    .line 325
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setEnabled(Z)V

    .line 326
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/microsoft/xboxtcui/R$string;->ChangeRelationship_Checkbox_Subtext_ShareRealName_Everyone:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setSubText(Ljava/lang/CharSequence;)V

    .line 329
    :cond_0
    const-string v4, "PeopleOnMyList"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 330
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v6}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    .line 331
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v4, v6}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    .line 332
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setEnabled(Z)V

    .line 333
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/microsoft/xboxtcui/R$string;->ChangeRelationship_Checkbox_Subtext_ShareRealName_Friends:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setSubText(Ljava/lang/CharSequence;)V

    .line 336
    :cond_1
    const-string v4, "FriendCategoryShareIdentity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 337
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFollowing()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 338
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getCallerMarkedTargetAsIdentityShared()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 339
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v6}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    .line 340
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v4, v6}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    .line 355
    :goto_2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/microsoft/xboxtcui/R$string;->ChangeRelationship_Checkbox_Subtext_ShareRealName:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    .line 356
    invoke-virtual {v8}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getGamerTag()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 355
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v3}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setSubText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v6}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setEnabled(Z)V

    .line 362
    .end local v1    # "isBlocked":Z
    .end local v2    # "isTargetSharingRealName":Z
    .end local v3    # "text":Ljava/lang/String;
    :cond_2
    return-void

    .restart local v1    # "isBlocked":Z
    :cond_3
    move v4, v5

    .line 318
    goto/16 :goto_0

    :cond_4
    move v2, v5

    .line 321
    goto/16 :goto_1

    .line 342
    .restart local v2    # "isTargetSharingRealName":Z
    :cond_5
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    .line 343
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    goto :goto_2

    .line 346
    :cond_6
    if-eqz v2, :cond_7

    .line 347
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v6}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    .line 348
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v4, v6}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    .line 349
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v4, v6}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldAddUserToShareIdentityList(Z)V

    goto :goto_2

    .line 351
    :cond_7
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    .line 352
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    goto :goto_2
.end method

.method public updateView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 143
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getViewModelState()Lcom/microsoft/xbox/toolkit/network/ListState;

    move-result-object v1

    sget-object v3, Lcom/microsoft/xbox/toolkit/network/ListState;->ValidContentState:Lcom/microsoft/xbox/toolkit/network/ListState;

    if-ne v1, v3, :cond_e

    .line 144
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->setDialogValidContentView()V

    .line 145
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->gamertag:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getGamerTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateAndShowTextViewUnlessEmpty(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profilePic:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profilePic:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getGamerPicUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    sget v4, Lcom/microsoft/xboxtcui/R$drawable;->gamerpic_missing:I

    sget v5, Lcom/microsoft/xboxtcui/R$drawable;->gamerpic_missing:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setImageURI2(Ljava/net/URI;II)V

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->realName:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getRealName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateAndShowTextViewUnlessEmpty(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 152
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->favoriteIconView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFavorite()Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    :goto_0
    invoke-static {v3, v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateVisibilityIfNotNull(Landroid/view/View;I)V

    .line 154
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFavorite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->favoriteIconView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/microsoft/xboxtcui/R$color;->XboxGreen:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setTextColor(I)V

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getGamerScore()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "gamerScore":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profileGamerScore:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getGamerScore()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateAndShowTextViewUnlessEmpty(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profileAccountTier:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateVisibilityIfNotNull(Landroid/view/View;I)V

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFriend:Landroid/widget/RadioButton;

    if-eqz v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFollowing()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 166
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFriend:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 172
    :goto_1
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFriend:Landroid/widget/RadioButton;

    new-instance v3, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$3;

    invoke-direct {v3, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$3;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_3
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFavorite:Landroid/widget/RadioButton;

    if-eqz v1, :cond_5

    .line 187
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFavorite()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFavorite:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFavorite:Landroid/widget/RadioButton;

    new-instance v3, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$4;

    invoke-direct {v3, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$4;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    :cond_5
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v1, :cond_6

    .line 203
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    new-instance v3, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$5;

    invoke-direct {v3, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$5;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    :cond_6
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v1, :cond_7

    .line 214
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    new-instance v3, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$6;

    invoke-direct {v3, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$6;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    :cond_7
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    if-eqz v1, :cond_8

    .line 224
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getCallerMarkedTargetAsIdentityShared()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    .line 226
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    new-instance v3, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;

    invoke-direct {v3, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 243
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->updateShareIdentityCheckboxStatus()V

    .line 246
    :cond_8
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    if-eqz v1, :cond_9

    .line 247
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFollowing()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 248
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    new-instance v2, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$8;

    invoke-direct {v2, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$8;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    :goto_2
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getDialogButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_9
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->updateShareIdentityCheckboxStatus()V

    .line 267
    .end local v0    # "gamerScore":Ljava/lang/String;
    :cond_a
    :goto_3
    return-void

    .line 152
    :cond_b
    const/4 v1, 0x4

    goto/16 :goto_0

    .line 168
    .restart local v0    # "gamerScore":Ljava/lang/String;
    :cond_c
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1, v6}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldAddUserToFriendList(Z)V

    .line 169
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFriend:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 258
    :cond_d
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;->setEnabled(Z)V

    .line 259
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;->setVisibility(I)V

    goto :goto_2

    .line 264
    .end local v0    # "gamerScore":Ljava/lang/String;
    :cond_e
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getViewModelState()Lcom/microsoft/xbox/toolkit/network/ListState;

    move-result-object v1

    sget-object v2, Lcom/microsoft/xbox/toolkit/network/ListState;->LoadingState:Lcom/microsoft/xbox/toolkit/network/ListState;

    if-ne v1, v2, :cond_a

    .line 265
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->setDialogLoadingView()V

    goto :goto_3
.end method
