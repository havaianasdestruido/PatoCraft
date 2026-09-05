.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreen;
.super Lcom/microsoft/xbox/xle/app/activity/ActivityBase;
.source "FriendFinderHomeScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "FriendFinderHome"

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onCreate()V

    .line 24
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreen;->onCreateContentView()V

    .line 26
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreen;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    .line 27
    return-void
.end method

.method public onCreateContentView()V
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/microsoft/xboxtcui/R$layout;->friend_finder_home_screen:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreen;->setContentView(I)V

    .line 38
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onStart()V

    .line 32
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreen;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFriendFinderView(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 33
    return-void
.end method
