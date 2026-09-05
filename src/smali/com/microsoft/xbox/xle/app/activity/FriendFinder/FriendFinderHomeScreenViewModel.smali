.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;
.super Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.source "FriendFinderHomeScreenViewModel.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;
.implements Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$SearchGamertagRunner;,
        Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;,
        Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;
    }
.end annotation


# static fields
.field private static final MAX_SEARCH_LENGTH:I = 0x100

.field private static final MSA_TAG:Ljava/lang/String; = "FriendFinder.MSA"

.field private static final POLICY:Ljava/lang/String; = "mbi_ssl"

.field private static final SCOPE:Ljava/lang/String; = "ssl.live.com"


# instance fields
.field private fbSettingsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;

.field private initFBandModelTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;

.field private isLoadingFriendFinderState:Z

.field private isSearchGamertagTaskRunning:Z

.field private isUploadingContacts:Z

.field private searchGamertagLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private searchGamertagTask:Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

.field private shouldShowDone:Ljava/lang/Boolean;

.field private uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 1
    .param p1, "screenLayout"    # Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isSearchGamertagTaskRunning:Z

    .line 72
    new-instance v0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    .line 73
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertagLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 74
    return-void
.end method

.method static synthetic access$002(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isUploadingContacts:Z

    return p1
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->navigateToSuggestions(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    return-void
.end method

.method static synthetic access$202(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isLoadingFriendFinderState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->onSearchGamertagCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Ljava/lang/String;)V

    return-void
.end method

.method private cancelActiveTasks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->initFBandModelTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->initFBandModelTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;->cancel()V

    .line 225
    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->initFBandModelTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->fbSettingsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->fbSettingsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;->cancel()V

    .line 230
    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->fbSettingsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertagTask:Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertagTask:Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->cancel()V

    .line 235
    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertagTask:Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->cancel()V

    .line 240
    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    .line 242
    :cond_3
    return-void
.end method

.method private hasReadContactsPermission()Z
    .locals 2

    .prologue
    .line 191
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private navigateToInfo(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V
    .locals 3
    .param p1, "infoType"    # Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    .prologue
    .line 115
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    .line 116
    .local v0, "params":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFriendFinderType(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    .line 119
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    const-class v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;

    invoke-virtual {v1, v2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private navigateToSuggestions(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V
    .locals 3
    .param p1, "type"    # Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    .prologue
    .line 160
    :try_start_0
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    .line 161
    .local v0, "parameters":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFriendFinderType(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    .line 162
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    const-class v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreen;

    invoke-virtual {v1, v2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v0    # "parameters":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onSearchGamertagCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .param p2, "gamertagXuid"    # Ljava/lang/String;

    .prologue
    .line 288
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isSearchGamertagTaskRunning:Z

    .line 289
    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$3;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 310
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->updateAdapter()V

    .line 311
    return-void

    .line 294
    :pswitch_0
    :try_start_0
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    .line 297
    .local v0, "parameters":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putSelectedProfile(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackGamertagSearchSuccess(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    const-class v2, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreen;

    invoke-virtual {v1, v2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    .end local v0    # "parameters":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 307
    :pswitch_1
    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendsHub_CouldNotFindGamer:I

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->showError(I)V

    goto :goto_0

    .line 289
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

.method private showContactsPermissionDialog()V
    .locals 7

    .prologue
    .line 195
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 196
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "appName":Ljava/lang/String;
    sget v4, Lcom/microsoft/xboxtcui/R$string;->Contacts_Permission_Denied_Android:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "message":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v4, Lcom/microsoft/xboxtcui/R$string;->Contacts_Permission_Denied_Header:I

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 203
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 204
    return-void
.end method

.method private validSearchGamertag(Ljava/lang/String;)Z
    .locals 2
    .param p1, "gamertag"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_0

    .line 187
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public facebookLinked()Z
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookManagerReady()Lcom/microsoft/xbox/toolkit/Ready;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->getIsReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->isFacebookFriendFinderOptedIn()Z

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishFriendFinder()V
    .locals 1

    .prologue
    .line 126
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopAllScreens()V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getFacebookIconUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->MEDIUM:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->getIconBySize(Ljava/lang/String;Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isLoadingFriendFinderState:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isUploadingContacts:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Z)V
    .locals 7
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->cancelActiveTasks()V

    .line 253
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getSCDRpsTicket()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "FriendFinderHome"

    const-string v4, "ssl.live.com"

    const-string v5, "mbi_ssl"

    new-instance v3, Lcom/microsoft/xbox/idp/interop/LocalConfig;

    invoke-direct {v3}, Lcom/microsoft/xbox/idp/interop/LocalConfig;-><init>()V

    invoke-virtual {v3}, Lcom/microsoft/xbox/idp/interop/LocalConfig;->getCid()Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->start()Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    .line 257
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookManagerReady()Lcom/microsoft/xbox/toolkit/Ready;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->getIsReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->loadAsync(ZLcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;)V

    .line 264
    :goto_0
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->fbSettingsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;

    .line 265
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->fbSettingsAsyncTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBSettingsAsyncTask;->load(Z)V

    .line 266
    return-void

    .line 260
    :cond_1
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->initFBandModelTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;

    .line 261
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->initFBandModelTask:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$FBManagerAndModelInitTask;->load(Z)V

    goto :goto_0
.end method

.method public navigateToFacebookSuggestions()V
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->navigateToSuggestions(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    .line 133
    return-void
.end method

.method public navigateToLinkFacebook()V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->navigateToInfo(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    .line 104
    return-void
.end method

.method public navigateToLinkPhone()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->hasReadContactsPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->PHONE:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->navigateToInfo(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->showContactsPermissionDialog()V

    goto :goto_0
.end method

.method public navigateToPhoneSuggestions()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 136
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->hasReadContactsPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->cancel()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    .line 142
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    new-instance v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$1;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;)V

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;-><init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    .line 150
    iput-boolean v2, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isUploadingContacts:Z

    .line 151
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->updateAdapter()V

    .line 152
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->uploadContactsAsyncTask:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->load(Z)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->showContactsPermissionDialog()V

    goto :goto_0
.end method

.method public onAccountAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/UserAccount;)V
    .locals 0
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .param p2, "userAccount"    # Lcom/microsoft/onlineid/UserAccount;

    .prologue
    .line 350
    return-void
.end method

.method protected onFacebookInitCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 269
    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$3;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_0
    return-void

    .line 273
    :pswitch_0
    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->loadAsync(ZLcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel$LoadFailedCallback;)V

    goto :goto_0

    .line 278
    :pswitch_1
    sget v0, Lcom/microsoft/xboxtcui/R$string;->Service_ErrorText:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->showError(I)V

    goto :goto_0

    .line 269
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

.method protected onFacebookSettingsCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->updateAdapter()V

    .line 285
    return-void
.end method

.method public onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 337
    const-string v0, "FriendFinder.MSA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure - ignoring and will fail phone finder if invoked. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void
.end method

.method public onFriendFinderLoadFailed()V
    .locals 3

    .prologue
    .line 360
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/microsoft/xboxtcui/R$string;->Service_ErrorText:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 362
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 363
    sget v1, Lcom/microsoft/xboxtcui/R$string;->OK_Text:I

    new-instance v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$2;

    invoke-direct {v2, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$2;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 374
    return-void
.end method

.method public onRehydrate()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    .line 214
    return-void
.end method

.method public onSignedOut(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 0
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;

    .prologue
    .line 346
    return-void
.end method

.method protected onStartOverride()V
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->addUniqueObserver(Lcom/microsoft/xbox/toolkit/XLEObserver;)V

    .line 209
    return-void
.end method

.method protected onStopOverride()V
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->cancelActiveTasks()V

    .line 219
    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->removeObserver(Lcom/microsoft/xbox/toolkit/XLEObserver;)V

    .line 220
    return-void
.end method

.method public onTicketAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/Ticket;)V
    .locals 3
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .param p2, "ticket"    # Lcom/microsoft/onlineid/Ticket;

    .prologue
    .line 354
    const-string v0, "FriendFinder.MSA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTicketAcquired - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/microsoft/onlineid/Ticket;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/onlineid/Ticket;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->setSCDRpsTicket(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public onUiNeeded(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 2
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;

    .prologue
    .line 332
    const-string v0, "FriendFinder.MSA"

    const-string v1, "onUiNeeded - ignoring and will fail phone finder if invoked."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method

.method public onUserCancel(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 0
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;

    .prologue
    .line 342
    return-void
.end method

.method public phoneLinked()Z
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getResult()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    move-result-object v0

    .line 86
    .local v0, "stateResult":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->getPhoneAccountOptInStatus()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    move-result-object v1

    sget-object v2, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->OptedIn:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public searchGamertag(Ljava/lang/String;)V
    .locals 7
    .param p1, "gamertag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 168
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isSearchGamertagTaskRunning:Z

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertagTask:Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertagTask:Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->cancel()V

    .line 172
    iput-object v4, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertagTask:Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    .line 175
    :cond_0
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->validSearchGamertag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isSearchGamertagTaskRunning:Z

    .line 177
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v5, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertagLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$SearchGamertagRunner;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel$SearchGamertagRunner;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;Ljava/lang/String;)V

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->StartLoadFromUI(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->searchGamertagTask:Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 179
    :cond_2
    sget v0, Lcom/microsoft/xboxtcui/R$string;->FriendsHub_CouldNotFindGamer:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->showError(I)V

    goto :goto_0
.end method

.method public shouldShowDone()Z
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->shouldShowDone:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 95
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v0

    .line 96
    .local v0, "parameters":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getFriendFinderDone()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->shouldShowDone:Ljava/lang/Boolean;

    .line 99
    .end local v0    # "parameters":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->shouldShowDone:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 96
    .restart local v0    # "parameters":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateOverride(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/model/UpdateData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "asyncResult":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/model/UpdateData;>;"
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/UpdateData;->getUpdateType()Lcom/microsoft/xbox/service/model/UpdateType;

    move-result-object v1

    sget-object v2, Lcom/microsoft/xbox/service/model/UpdateType;->FriendFinderFacebook:Lcom/microsoft/xbox/service/model/UpdateType;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/UpdateData;->getIsFinal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getResult()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    move-result-object v0

    .line 318
    .local v0, "newResult":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->isLoadingFriendFinderState:Z

    .line 320
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookFriendFinderState()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 321
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookFriendFinderState()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->isFacebookStateChanged(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->setFacebookFriendFinderState(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;)V

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreenViewModel;->updateAdapter()V

    .line 328
    .end local v0    # "newResult":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
    :cond_2
    return-void
.end method
