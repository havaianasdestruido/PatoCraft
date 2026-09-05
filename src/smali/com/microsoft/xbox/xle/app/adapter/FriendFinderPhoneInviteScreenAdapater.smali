.class public Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;
.super Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;
.source "FriendFinderPhoneInviteScreenAdapater.java"


# instance fields
.field private contactsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;

.field private contactsListView:Landroid/widget/ListView;

.field private loadingLayout:Landroid/widget/FrameLayout;

.field private subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;)V
    .locals 4
    .param p1, "viewModel"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    .line 33
    const-string v1, "This isn\'t supported yet."

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->fail(Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;

    .line 37
    sget v1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_title:I

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 38
    sget v1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_subtitle:I

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 39
    sget v1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_list:I

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListView:Landroid/widget/ListView;

    .line 40
    sget v1, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_loading:I

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->loadingLayout:Landroid/widget/FrameLayout;

    .line 42
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 43
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 44
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListView:Landroid/widget/ListView;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 45
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->loadingLayout:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 47
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_PhoneInviteFriends_Dialog_Title:I

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(I)V

    .line 49
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_PhoneInviteFriends_Dialog_Text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "subtitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    const-string v2, "-"

    const-string v3, "\n\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 53
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStart()V

    .line 59
    new-instance v0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;

    .line 60
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$layout;->friendfinder_phone_invite_list_item:I

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;

    .line 63
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListView:Landroid/widget/ListView;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater$1;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    return-void
.end method

.method protected updateViewOverride()V
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->loadingLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;->clear()V

    .line 79
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->viewModel:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;->getContacts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;->addAll(Ljava/util/Collection;)V

    .line 80
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->contactsListAdapter:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;->notifyDataSetChanged()V

    .line 81
    return-void

    .line 76
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
