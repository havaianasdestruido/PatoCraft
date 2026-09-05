.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreen;
.super Lcom/microsoft/xbox/xle/app/activity/ActivityBase;
.source "FriendFinderVerifyCodeScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "Friend Finder Verify Code"

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onCreate()V

    .line 13
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreen;->onCreateContentView()V

    .line 15
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreenViewModel;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreen;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    .line 16
    return-void
.end method

.method public onCreateContentView()V
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/microsoft/xboxtcui/R$layout;->friendfinder_verify_code_screen:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreen;->setContentView(I)V

    .line 28
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onStart()V

    .line 22
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderVerifyCodeScreen;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackContactsVerifyPhoneView(Ljava/lang/CharSequence;)V

    .line 23
    return-void
.end method
