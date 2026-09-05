.class public Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;
.super Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;
.source "FriendFinderHomeScreenAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private doneButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private inviteFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

.field private inviteFriendsTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private invitePhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

.field private linkFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

.field private linkPhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

.field private loadingFrameLayout:Landroid/widget/FrameLayout;

.field private searchButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

.field private searchEditText:Landroid/widget/EditText;

.field private searchIconButton:Landroid/widget/FrameLayout;

.field private final searchImeActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private searchLayout:Landroid/widget/RelativeLayout;

.field private viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;)V
    .locals 8
    .param p1, "viewModel"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 53
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v7, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 47
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 48
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 50
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 45
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchImeActions:Ljava/util/ArrayList;

    .line 55
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    .line 57
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_link_facebook:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    .line 58
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_link_phone:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkPhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    .line 59
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_link_search:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    .line 60
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_search_icon:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchIconButton:Landroid/widget/FrameLayout;

    .line 61
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_search_layout:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchLayout:Landroid/widget/RelativeLayout;

    .line 62
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_search_edittext:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchEditText:Landroid/widget/EditText;

    .line 63
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_home_invite_facebook:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    .line 64
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_home_invite_phone:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->invitePhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    .line 65
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_home_invite_friends_text:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFriendsTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 66
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_home_loading:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->loadingFrameLayout:Landroid/widget/FrameLayout;

    .line 67
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_home_done:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->doneButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    .line 69
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkPhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchIconButton:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->invitePhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFriendsTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->loadingFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->doneButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchImeActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method private setViewVisibilities()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 170
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->facebookLinked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setVisibility(I)V

    .line 171
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkPhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->phoneLinked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->setVisibility(I)V

    .line 172
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->facebookLinked()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setVisibility(I)V

    .line 173
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->invitePhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->phoneLinked()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->setVisibility(I)V

    .line 174
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->loadingFrameLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 175
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->doneButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->shouldShowDone()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_5
    invoke-virtual {v3, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFriendsTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    .line 178
    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->facebookLinked()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->phoneLinked()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 177
    :cond_1
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setVisibility(I)V

    .line 181
    return-void

    :cond_2
    move v0, v2

    .line 170
    goto :goto_0

    :cond_3
    move v0, v2

    .line 171
    goto :goto_1

    :cond_4
    move v0, v1

    .line 172
    goto :goto_2

    :cond_5
    move v0, v1

    .line 173
    goto :goto_3

    :cond_6
    move v0, v1

    .line 174
    goto :goto_4

    :cond_7
    move v0, v1

    .line 175
    goto :goto_5
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 187
    .local v1, "id":I
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "activityName":Ljava/lang/CharSequence;
    sget v2, Lcom/microsoft/xboxtcui/R$id;->friendfinder_link_facebook:I

    if-ne v1, v2, :cond_1

    .line 190
    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookSignup(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->navigateToLinkFacebook()V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    sget v2, Lcom/microsoft/xboxtcui/R$id;->friendfinder_link_phone:I

    if-ne v1, v2, :cond_2

    .line 194
    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackContactsSignUp(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->navigateToLinkPhone()V

    goto :goto_0

    .line 197
    :cond_2
    sget v2, Lcom/microsoft/xboxtcui/R$id;->friendfinder_link_search:I

    if-ne v1, v2, :cond_3

    .line 198
    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackGamertagSearch(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 200
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->setVisibility(I)V

    .line 201
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 203
    :cond_3
    sget v2, Lcom/microsoft/xboxtcui/R$id;->friendfinder_home_invite_facebook:I

    if-ne v1, v2, :cond_4

    .line 204
    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookSuggestions(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->navigateToFacebookSuggestions()V

    goto :goto_0

    .line 207
    :cond_4
    sget v2, Lcom/microsoft/xboxtcui/R$id;->friendfinder_home_invite_phone:I

    if-ne v1, v2, :cond_5

    .line 208
    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackContactsSuggestions(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->navigateToPhoneSuggestions()V

    goto :goto_0

    .line 211
    :cond_5
    sget v2, Lcom/microsoft/xboxtcui/R$id;->friendfinder_home_done:I

    if-ne v1, v2, :cond_0

    .line 212
    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackDone(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->finishFriendFinder()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStart()V

    .line 86
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    invoke-virtual {v1, p0}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkPhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    invoke-virtual {v1, p0}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    invoke-virtual {v1, p0}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    invoke-virtual {v1, p0}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->invitePhoneButton:Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    invoke-virtual {v1, p0}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->doneButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-virtual {v1, p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setImageUri(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setImageUri(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "activityName":Ljava/lang/String;
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchIconButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$1;

    invoke-direct {v2, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$1;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$2;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$3;

    invoke-direct {v2, p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$3;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 143
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->searchEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$4;

    invoke-direct {v2, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$4;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 155
    return-void
.end method

.method protected updateViewOverride()V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->setViewVisibilities()V

    .line 161
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->getFacebookIconUri()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "facebookIcon":Ljava/lang/String;
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->linkFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setImageUri(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->inviteFacebookButton:Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setImageUri(Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method
