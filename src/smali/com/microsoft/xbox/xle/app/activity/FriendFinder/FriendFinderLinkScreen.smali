.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;
.super Lcom/microsoft/xbox/xle/app/activity/ActivityBase;
.source "FriendFinderLinkScreen.java"


# instance fields
.field private linkType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>()V

    .line 16
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;->linkType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;->linkType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    .line 23
    return-void
.end method


# virtual methods
.method protected getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "Friend Finder Facebook Link"

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 27
    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onCreate()V

    .line 29
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;->onCreateContentView()V

    .line 31
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v0

    .line 32
    .local v0, "params":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getFriendFinderType()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;->linkType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    .line 36
    const-string v2, "Expected link type"

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;->linkType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;->linkType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v2, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v1, v2, :cond_3

    .line 41
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreen()V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_1
    :goto_1
    return-void

    .line 36
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 44
    :cond_3
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;->linkType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v2, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v1, v2, :cond_1

    .line 45
    new-instance v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    goto :goto_1

    .line 42
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onCreateContentView()V
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/microsoft/xboxtcui/R$layout;->friendfinder_link_screen:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;->setContentView(I)V

    .line 52
    return-void
.end method
