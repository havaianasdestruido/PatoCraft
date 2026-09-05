.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;
.super Lcom/microsoft/xbox/xle/app/activity/ActivityBase;
.source "FriendFinderInviteScreen.java"


# instance fields
.field private inviteType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>()V

    .line 26
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->inviteType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->inviteType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;)Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->inviteType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    return-object v0
.end method

.method private getFacebookIconUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->MEDIUM:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->getIconBySize(Ljava/lang/String;Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackButtonPressed()Z
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->inviteType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackBackButtonPressed(Ljava/lang/CharSequence;Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    .line 143
    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onBackButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 37
    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onCreate()V

    .line 39
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookManagerReady()Lcom/microsoft/xbox/toolkit/Ready;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/Ready;->getIsReady()Z

    move-result v1

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->onCreateContentView()V

    .line 43
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v0

    .line 44
    .local v0, "params":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 46
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getFriendFinderType()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->inviteType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    .line 48
    const-string v2, "Expected invite type"

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->inviteType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 50
    :cond_0
    return-void

    .line 48
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateContentView()V
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/microsoft/xboxtcui/R$layout;->friendfinder_invite_screen:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->setContentView(I)V

    .line 55
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 59
    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onStart()V

    .line 61
    sget v6, Lcom/microsoft/xboxtcui/R$id;->friendfinder_invite_title:I

    invoke-virtual {p0, v6}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 62
    .local v5, "titleTextView":Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    sget v6, Lcom/microsoft/xboxtcui/R$id;->friendfinder_invite_subtitle:I

    invoke-virtual {p0, v6}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 64
    .local v4, "subtitleTextView":Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    iget-object v6, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->inviteType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v7, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v6, v7, :cond_3

    .line 65
    sget v6, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Invite_Facebook_Title:I

    invoke-virtual {v5, v6}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(I)V

    .line 66
    sget v6, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Upsell_Description_Default_LineTwo:I

    invoke-virtual {v4, v6}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(I)V

    .line 68
    sget v6, Lcom/microsoft/xboxtcui/R$id;->friendfinder_invite_facebook:I

    invoke-virtual {p0, v6}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;

    .line 69
    .local v0, "facebookButton":Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, v8}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setVisibility(I)V

    .line 71
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->getFacebookIconUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setImageUri(Ljava/lang/String;)V

    .line 72
    new-instance v6, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$1;

    invoke-direct {v6, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$1;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;)V

    invoke-virtual {v0, v6}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->getActivityName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookShareView(Ljava/lang/CharSequence;)V

    .line 107
    .end local v0    # "facebookButton":Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;
    :cond_1
    :goto_0
    sget v6, Lcom/microsoft/xboxtcui/R$id;->friendfinder_invite_next:I

    invoke-virtual {p0, v6}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    .line 108
    .local v1, "nextButton":Lcom/microsoft/xbox/toolkit/ui/XLEButton;
    if-eqz v1, :cond_2

    .line 109
    new-instance v6, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$3;

    invoke-direct {v6, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$3;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;)V

    invoke-virtual {v1, v6}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :cond_2
    return-void

    .line 83
    .end local v1    # "nextButton":Lcom/microsoft/xbox/toolkit/ui/XLEButton;
    :cond_3
    iget-object v6, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->inviteType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v7, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->PHONE:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v6, v7, :cond_1

    .line 84
    sget v6, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_PhoneInviteFriends_Dialog_Title:I

    invoke-virtual {v5, v6}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(I)V

    .line 86
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_PhoneInviteFriends_Dialog_Text:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "subtitle":Ljava/lang/String;
    const-string v6, "-"

    const-string v7, "\n\n"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    sget v6, Lcom/microsoft/xboxtcui/R$id;->friendfinder_invite_phone:I

    invoke-virtual {p0, v6}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;

    .line 90
    .local v2, "phoneButton":Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;
    if-eqz v2, :cond_4

    .line 91
    invoke-virtual {v2, v8}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->setVisibility(I)V

    .line 92
    new-instance v6, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$2;

    invoke-direct {v6, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen$2;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;)V

    invoke-virtual {v2, v6}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInviteScreen;->getActivityName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackContactsInviteFriendsView(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
