.class public Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;
.super Ljava/lang/Object;
.source "FacebookManager.java"


# static fields
.field private static facebookManagerReady:Lcom/microsoft/xbox/toolkit/Ready;

.field private static instance:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;


# instance fields
.field private callbackManager:Lcom/facebook/CallbackManager;

.field private facebookPermission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private firstLoginWithReadOnly:Z

.field private friendsFinderStateResult:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

.field private loginBehavior:Lcom/facebook/login/LoginBehavior;

.field private loginResult:Lcom/facebook/FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/login/LoginResult;",
            ">;"
        }
    .end annotation
.end field

.field private shareResult:Lcom/facebook/FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;"
        }
    .end annotation
.end field

.field private token:Lcom/facebook/AccessToken;

.field private tokenString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/microsoft/xbox/toolkit/Ready;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/Ready;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->facebookManagerReady:Lcom/microsoft/xbox/toolkit/Ready;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->firstLoginWithReadOnly:Z

    .line 46
    new-instance v1, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;-><init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)V

    iput-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->loginResult:Lcom/facebook/FacebookCallback;

    .line 81
    new-instance v1, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$2;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$2;-><init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)V

    iput-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->shareResult:Lcom/facebook/FacebookCallback;

    .line 96
    sget-object v1, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->facebookManagerReady:Lcom/microsoft/xbox/toolkit/Ready;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/Ready;->reset()V

    .line 97
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/xblshared/ProtectedRunnable;

    new-instance v1, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$3;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$3;-><init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)V

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/service/network/managers/xblshared/ProtectedRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 110
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 112
    sget-object v1, Lcom/facebook/login/LoginBehavior;->WEB_ONLY:Lcom/facebook/login/LoginBehavior;

    iput-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 113
    sget-object v1, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->facebookManagerReady:Lcom/microsoft/xbox/toolkit/Ready;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/Ready;->setReady()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Lcom/facebook/AccessToken;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->token:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method static synthetic access$002(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Lcom/facebook/AccessToken;)Lcom/facebook/AccessToken;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;
    .param p1, "x1"    # Lcom/facebook/AccessToken;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->token:Lcom/facebook/AccessToken;

    return-object p1
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->firstLoginWithReadOnly:Z

    return v0
.end method

.method static synthetic access$102(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->firstLoginWithReadOnly:Z

    return p1
.end method

.method static synthetic access$202(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->tokenString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->showShareDialog()V

    return-void
.end method

.method static synthetic access$402(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->facebookPermission:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Lcom/facebook/CallbackManager;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->callbackManager:Lcom/facebook/CallbackManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Lcom/facebook/CallbackManager;)Lcom/facebook/CallbackManager;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;
    .param p1, "x1"    # Lcom/facebook/CallbackManager;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->callbackManager:Lcom/facebook/CallbackManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Lcom/facebook/FacebookCallback;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->loginResult:Lcom/facebook/FacebookCallback;

    return-object v0
.end method

.method public static getFacebookManagerReady()Lcom/microsoft/xbox/toolkit/Ready;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->facebookManagerReady:Lcom/microsoft/xbox/toolkit/Ready;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;
    .locals 2

    .prologue
    .line 121
    const-class v1, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->instance:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-direct {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->instance:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    .line 124
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->instance:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPublishShimIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/microsoft/xboxtcui/FbLoginShimActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v0, "shimIntent":Landroid/content/Intent;
    const-string v1, "LoginType"

    sget-object v2, Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;->PUBLISH:Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 165
    return-object v0
.end method

.method private getReadShimIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/microsoft/xboxtcui/FbLoginShimActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, "shimIntent":Landroid/content/Intent;
    const-string v1, "LoginType"

    sget-object v2, Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;->READ:Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 158
    return-object v0
.end method

.method private showShareDialog()V
    .locals 4

    .prologue
    .line 195
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/microsoft/xboxtcui/FbShareShimActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method


# virtual methods
.method public getFacebookFriendFinderState()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->friendsFinderStateResult:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    return-object v0
.end method

.method public getFacebookPermission()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->facebookPermission:Ljava/util/List;

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/login/LoginBehavior;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-object v0
.end method

.method public getTokenString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->tokenString:Ljava/lang/String;

    return-object v0
.end method

.method public isFacebookFriendFinderOptedIn()Z
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->friendsFinderStateResult:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->friendsFinderStateResult:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    .line 186
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->getLinkedAccountOptInStatus()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->OptedIn:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->friendsFinderStateResult:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    .line 187
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->getLinkedAccountTokenStatus()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->OK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadPeopleHubFriendFinderState()V
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->getInstance()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderModel;->loadAsync(Z)V

    .line 200
    return-void
.end method

.method public login()V
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookLinkAccountView(Ljava/lang/CharSequence;)V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->firstLoginWithReadOnly:Z

    .line 146
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getReadShimIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method public onShimActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 192
    return-void
.end method

.method public registerShareCallback(Lcom/facebook/share/widget/ShareDialog;)V
    .locals 2
    .param p1, "shareDialog"    # Lcom/facebook/share/widget/ShareDialog;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->callbackManager:Lcom/facebook/CallbackManager;

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->shareResult:Lcom/facebook/FacebookCallback;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 129
    return-void
.end method

.method public resetFacebookToken(Z)V
    .locals 1
    .param p1, "forceResetLoginToken"    # Z

    .prologue
    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->token:Lcom/facebook/AccessToken;

    .line 170
    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->tokenString:Ljava/lang/String;

    .line 171
    if-eqz p1, :cond_0

    .line 172
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 174
    :cond_0
    return-void
.end method

.method public setFacebookFriendFinderState(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;)V
    .locals 0
    .param p1, "result"    # Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->friendsFinderStateResult:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    .line 178
    return-void
.end method

.method public shareToFacebook()V
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->firstLoginWithReadOnly:Z

    .line 151
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getPublishShimIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 152
    return-void
.end method
