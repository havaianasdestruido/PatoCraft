.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreen;
.super Lcom/microsoft/xbox/xle/app/activity/ActivityBase;
.source "FriendFinderPhoneInviteScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "Friend Finder Phone Invite"

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onCreate()V

    .line 14
    const-string v0, "This isn\'t supported yet."

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->fail(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreen;->onCreateContentView()V

    .line 18
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreen;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    .line 20
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreen;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackContactsInviteFriendsView(Ljava/lang/CharSequence;)V

    .line 21
    return-void
.end method

.method public onCreateContentView()V
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/microsoft/xboxtcui/R$layout;->friendfinder_suggestions_screen:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreen;->setContentView(I)V

    .line 26
    return-void
.end method
