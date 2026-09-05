.class public Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;
.super Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;
.source "ProfileScreenAdapter.java"


# instance fields
.field private blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private contentScrollView:Landroid/widget/ScrollView;

.field private followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private gamerPicImageView:Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

.field private gamerscoreIconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private gamerscoreTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private gamertagTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private loadingProgressBar:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

.field private muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private rootView:Lcom/microsoft/xbox/xle/ui/XLERootView;

.field private viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private viewInXboxAppSubTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V
    .locals 4
    .param p1, "viewModel"    # Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    .line 41
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    .line 43
    sget v0, Lcom/microsoft/xboxtcui/R$id;->profile_root:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/XLERootView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->rootView:Lcom/microsoft/xbox/xle/ui/XLERootView;

    .line 44
    sget v0, Lcom/microsoft/xboxtcui/R$id;->profile_gamerpic:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerPicImageView:Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    .line 45
    sget v0, Lcom/microsoft/xboxtcui/R$id;->profile_screen_loading:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->loadingProgressBar:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    .line 46
    sget v0, Lcom/microsoft/xboxtcui/R$id;->profile_screen_content_list:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->contentScrollView:Landroid/widget/ScrollView;

    .line 47
    sget v0, Lcom/microsoft/xboxtcui/R$id;->profile_realname:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 48
    sget v0, Lcom/microsoft/xboxtcui/R$id;->profile_gamerscore_icon:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreIconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 49
    sget v0, Lcom/microsoft/xboxtcui/R$id;->profile_gamerscore:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 50
    sget v0, Lcom/microsoft/xboxtcui/R$id;->profile_gamertag:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamertagTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 51
    sget v0, Lcom/microsoft/xboxtcui/R$id;->profile_follow:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    .line 52
    sget v0, Lcom/microsoft/xboxtcui/R$id;->profile_mute:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    .line 53
    sget v0, Lcom/microsoft/xboxtcui/R$id;->profile_block:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    .line 54
    sget v0, Lcom/microsoft/xboxtcui/R$id;->profile_report:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    .line 55
    sget v0, Lcom/microsoft/xboxtcui/R$id;->profile_view_in_xbox_app:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    .line 56
    sget v0, Lcom/microsoft/xboxtcui/R$id;->profile_view_in_xbox_app_subtext:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppSubTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 58
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    .line 62
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isMeProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppSubTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v1, Lcom/microsoft/xboxtcui/R$string;->Profile_ViewInXboxApp_Details_MeProfile:I

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(I)V

    .line 86
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    .line 77
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    .line 84
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppSubTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v1, Lcom/microsoft/xboxtcui/R$string;->Profile_ViewInXboxApp_Details_YouProfile:I

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 90
    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStart()V

    .line 92
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$1;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$2;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$2;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$3;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$3;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$4;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$4;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-eqz v0, :cond_4

    .line 147
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->appDeeplinkingSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$5;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$5;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    :cond_4
    :goto_0
    return-void

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppSubTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateViewOverride()V
    .locals 11

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 164
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->rootView:Lcom/microsoft/xbox/xle/ui/XLERootView;

    if-eqz v4, :cond_0

    .line 165
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->rootView:Lcom/microsoft/xbox/xle/ui/XLERootView;

    iget-object v8, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v8}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getPreferredColor()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/microsoft/xbox/xle/ui/XLERootView;->setBackgroundColor(I)V

    .line 168
    :cond_0
    iget-object v8, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->loadingProgressBar:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isBusy()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->setVisibility(I)V

    .line 169
    iget-object v8, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->contentScrollView:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isBusy()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v6

    :goto_1
    invoke-virtual {v8, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 171
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerPicImageView:Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    if-eqz v4, :cond_1

    .line 172
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerPicImageView:Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    iget-object v8, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v8}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getGamerPicUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    sget v9, Lcom/microsoft/xboxtcui/R$drawable;->gamerpic_missing:I

    sget v10, Lcom/microsoft/xboxtcui/R$drawable;->gamerpic_missing:I

    invoke-virtual {v4, v8, v9, v10}, Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;->setImageURI2(Ljava/net/URI;II)V

    .line 175
    :cond_1
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    if-eqz v4, :cond_2

    .line 176
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getRealName()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "realName":Ljava/lang/String;
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 178
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {v4, v3}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setVisibility(I)V

    .line 185
    .end local v3    # "realName":Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreIconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    if-eqz v4, :cond_3

    .line 186
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getGamerScore()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "gamerScore":Ljava/lang/String;
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 188
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v4, v0, v5}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 189
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreIconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v4, v5}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateVisibilityIfNotNull(Landroid/view/View;I)V

    .line 193
    .end local v0    # "gamerScore":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamertagTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    if-eqz v4, :cond_4

    .line 194
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getGamerTag()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "gamerTag":Ljava/lang/String;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 196
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamertagTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v4, v1, v5}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 200
    .end local v1    # "gamerTag":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isMeProfile()Z

    move-result v4

    if-nez v4, :cond_6

    .line 201
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsAddingUserToBlockList()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsRemovingUserFromBlockList()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_5
    move v2, v7

    .line 203
    .local v2, "pendingBlockChange":Z
    :goto_3
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iget-object v6, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v6}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isCallerFollowingTarget()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    .line 204
    iget-object v6, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-nez v2, :cond_b

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsBlocked()Z

    move-result v4

    if-nez v4, :cond_b

    move v4, v7

    :goto_4
    invoke-virtual {v6, v4}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 206
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iget-object v6, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v6}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsMuted()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    .line 207
    iget-object v6, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsAddingUserToMutedList()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsRemovingUserFromMutedList()Z

    move-result v4

    if-nez v4, :cond_c

    move v4, v7

    :goto_5
    invoke-virtual {v6, v4}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 209
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iget-object v6, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v6}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsBlocked()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    .line 210
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-nez v2, :cond_d

    :goto_6
    invoke-virtual {v4, v7}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 212
    .end local v2    # "pendingBlockChange":Z
    :cond_6
    return-void

    :cond_7
    move v4, v6

    .line 168
    goto/16 :goto_0

    :cond_8
    move v4, v5

    .line 169
    goto/16 :goto_1

    .line 181
    .restart local v3    # "realName":Ljava/lang/String;
    :cond_9
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {v4, v6}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setVisibility(I)V

    goto/16 :goto_2

    .end local v3    # "realName":Ljava/lang/String;
    :cond_a
    move v2, v5

    .line 201
    goto :goto_3

    .restart local v2    # "pendingBlockChange":Z
    :cond_b
    move v4, v5

    .line 204
    goto :goto_4

    :cond_c
    move v4, v5

    .line 207
    goto :goto_5

    :cond_d
    move v7, v5

    .line 210
    goto :goto_6
.end method
