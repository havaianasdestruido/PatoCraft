.class public Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;
.super Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;
.source "FriendFinderSuggestionsScreenAdapter.java"


# instance fields
.field private advanceButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private emptyListHeaderContainer:Landroid/view/ViewGroup;

.field private listHeaderContainer:Landroid/widget/FrameLayout;

.field private listHeaderGroup:Landroid/view/ViewGroup;

.field private loadingOverlay:Landroid/widget/FrameLayout;

.field private subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private suggestionsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

.field private suggestionsListView:Lcom/microsoft/xbox/toolkit/ui/XLEListView;

.field private titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;)V
    .locals 4
    .param p1, "viewModel"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    .line 39
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    .line 41
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_title:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 42
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_subtitle:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 43
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_empty_header_container:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->emptyListHeaderContainer:Landroid/view/ViewGroup;

    .line 44
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_header:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->listHeaderGroup:Landroid/view/ViewGroup;

    .line 45
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_list:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListView:Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    .line 46
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_button:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->advanceButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    .line 47
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_loading:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->loadingOverlay:Landroid/widget/FrameLayout;

    .line 49
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListView:Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->emptyListHeaderContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->listHeaderGroup:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->advanceButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->loadingOverlay:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 57
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->listHeaderContainer:Landroid/widget/FrameLayout;

    .line 58
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListView:Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->listHeaderContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 60
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListView:Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEListView;->setChoiceMode(I)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/toolkit/ui/XLEListView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListView:Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/toolkit/ui/XLEButton;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->advanceButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStart()V

    .line 67
    new-instance v0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

    .line 68
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$layout;->friendfinder_suggestions_list_item:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

    .line 72
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListView:Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListView:Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$1;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->advanceButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$2;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$2;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method protected updateViewOverride()V
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->loadingOverlay:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;->clear()V

    .line 120
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->getSuggestions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;->addAll(Ljava/util/Collection;)V

    .line 121
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;->notifyDataSetChanged()V

    .line 123
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->emptyListHeaderContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 124
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->listHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 126
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->suggestionsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->listHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->listHeaderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 131
    :goto_1
    return-void

    .line 114
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->emptyListHeaderContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->listHeaderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1
.end method
