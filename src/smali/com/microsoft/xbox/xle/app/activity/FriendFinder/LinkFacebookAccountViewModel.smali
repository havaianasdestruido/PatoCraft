.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;
.super Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.source "LinkFacebookAccountViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;
    }
.end annotation


# instance fields
.field private linkAccountAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 0
    .param p1, "screenLayout"    # Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;->onLinkAccountAsyncTaskCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method private cancelActiveTasks()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;->linkAccountAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;->linkAccountAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;->cancel()V

    .line 57
    :cond_0
    return-void
.end method

.method private onLinkAccountAsyncTaskCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 7
    .param p1, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    const/4 v2, 0x1

    .line 79
    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 83
    :pswitch_0
    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->loadAsync(Z)V

    .line 86
    :try_start_0
    new-instance v6, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v6}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    .line 87
    .local v6, "parameters":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {v6, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFriendFinderType(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    .line 88
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookLoginSuccessful(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    const/4 v1, 0x1

    const-class v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreen;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v6    # "parameters":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->resetFacebookToken(Z)V

    .line 97
    sget v0, Lcom/microsoft/xboxtcui/R$string;->Service_ErrorText:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;->showError(I)V

    .line 98
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->OnBackButtonPressed()Z

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isBusy()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public load(Z)V
    .locals 2
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;->cancelActiveTasks()V

    .line 68
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;->linkAccountAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;

    .line 69
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;->linkAccountAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;->load(Z)V

    .line 70
    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackBackButtonPressed(Ljava/lang/CharSequence;Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    .line 75
    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onBackButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onRehydrate()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onStart()V

    .line 37
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookManagerReady()Lcom/microsoft/xbox/toolkit/Ready;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->getIsReady()Z

    move-result v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 38
    return-void
.end method

.method protected onStartOverride()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method protected onStopOverride()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;->cancelActiveTasks()V

    .line 51
    return-void
.end method
