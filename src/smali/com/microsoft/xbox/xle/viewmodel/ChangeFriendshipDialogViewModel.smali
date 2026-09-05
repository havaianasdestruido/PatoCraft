.class public Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
.super Ljava/lang/Object;
.source "ChangeFriendshipDialogViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;,
        Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;,
        Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;,
        Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;,
        Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;,
        Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;,
        Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private addUserToFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;

.field private addUserToFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;

.field private addUserToShareIdentityListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;

.field private changeFriendshipForm:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;",
            ">;"
        }
    .end annotation
.end field

.field private isAddingUserToFavoriteList:Z

.field private isAddingUserToFollowingList:Z

.field private isAddingUserToShareIdentityList:Z

.field private isFavorite:Z

.field private isFollowing:Z

.field private isLoadingUserProfile:Z

.field private isRemovingUserFromFavoriteList:Z

.field private isRemovingUserFromFollowingList:Z

.field private isRemovingUserFromShareIdentityList:Z

.field private isSharingRealNameEnd:Z

.field private isSharingRealNameStart:Z

.field private loadProfileAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;

.field private model:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private removeUserFromFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;

.field private removeUserFromFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;

.field private removeUserFromShareIdentityListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;

.field private viewModelState:Lcom/microsoft/xbox/toolkit/network/ListState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;)V
    .locals 2
    .param p1, "model"    # Lcom/microsoft/xbox/service/model/ProfileModel;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    .line 46
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFollowing:Z

    .line 47
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFavorite:Z

    .line 49
    sget-object v1, Lcom/microsoft/xbox/toolkit/network/ListState;->LoadingState:Lcom/microsoft/xbox/toolkit/network/ListState;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->viewModelState:Lcom/microsoft/xbox/toolkit/network/ListState;

    .line 52
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->isMeXuid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 53
    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->onLoadPersonDataCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .param p2, "x2"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->onRemoveUserFromFavoriteListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V

    return-void
.end method

.method static synthetic access$1102(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromFavoriteList:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .param p2, "x2"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->onAddUserToFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V

    return-void
.end method

.method static synthetic access$1302(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToFollowingList:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .param p2, "x2"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->onRemoveUserFromFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V

    return-void
.end method

.method static synthetic access$1502(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromFollowingList:Z

    return p1
.end method

.method static synthetic access$202(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isLoadingUserProfile:Z

    return p1
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;)Lcom/microsoft/xbox/service/model/ProfileModel;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    return-object v0
.end method

.method static synthetic access$402(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromShareIdentityList:Z

    return p1
.end method

.method static synthetic access$500(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->onRemoveUserFromShareIdentityListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method static synthetic access$602(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToShareIdentityList:Z

    return p1
.end method

.method static synthetic access$700(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->onAddUseToShareIdentityListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method static synthetic access$800(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .param p2, "x2"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->onAddUserToFavoriteListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToFavoriteList:Z

    return p1
.end method

.method private notifyDialogAsyncTaskCompleted()V
    .locals 1

    .prologue
    .line 308
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->getManager()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->notifyChangeFriendshipDialogAsyncTaskCompleted()V

    .line 309
    return-void
.end method

.method private notifyDialogAsyncTaskFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->getManager()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->notifyChangeFriendshipDialogAsyncTaskFailed(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method private notifyDialogUpdateView()V
    .locals 1

    .prologue
    .line 304
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->getManager()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->notifyChangeFriendshipDialogUpdateView()V

    .line 305
    return-void
.end method

.method private onAddUseToShareIdentityListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToShareIdentityList:Z

    .line 363
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 374
    :goto_0
    return-void

    .line 367
    :pswitch_0
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskCompleted()V

    goto :goto_0

    .line 371
    :pswitch_1
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->RealNameSharing_ErrorChangeRemove:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 363
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

.method private onAddUserToFavoriteListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 2
    .param p1, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .param p2, "isFavorite"    # Z

    .prologue
    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToFavoriteList:Z

    .line 394
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 405
    :goto_0
    return-void

    .line 398
    :pswitch_0
    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFavorite:Z

    .line 399
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskCompleted()V

    goto :goto_0

    .line 403
    :pswitch_1
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->RealNameSharing_ErrorChangeRemove:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 394
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

.method private onAddUserToFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 4
    .param p1, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .param p2, "isFollowing"    # Z

    .prologue
    .line 424
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToFollowingList:Z

    .line 426
    sget-object v2, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 447
    :goto_0
    return-void

    .line 430
    :pswitch_0
    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFollowing:Z

    .line 431
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskCompleted()V

    goto :goto_0

    .line 435
    :pswitch_1
    const/4 v1, 0x0

    .line 436
    .local v1, "result":Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    .line 437
    .local v0, "meProfile":Lcom/microsoft/xbox/service/model/ProfileModel;
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAddUserToFollowingResult()Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    move-result-object v1

    .line 441
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->getAddFollowingRequestStatus()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v1, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->code:I

    const/16 v3, 0x404

    if-ne v2, v3, :cond_1

    .line 442
    iget-object v2, v1, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->description:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_1
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/microsoft/xboxtcui/R$string;->RealNameSharing_ErrorAddingFriend:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onLoadPersonDataCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 341
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isLoadingUserProfile:Z

    .line 342
    sget-object v1, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 358
    :goto_0
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogUpdateView()V

    .line 359
    return-void

    .line 346
    :pswitch_0
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSummaryData()Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    move-result-object v0

    .line 347
    .local v0, "summary":Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    if-eqz v0, :cond_0

    .line 348
    sget-object v1, Lcom/microsoft/xbox/toolkit/network/ListState;->ValidContentState:Lcom/microsoft/xbox/toolkit/network/ListState;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->viewModelState:Lcom/microsoft/xbox/toolkit/network/ListState;

    goto :goto_0

    .line 350
    :cond_0
    sget-object v1, Lcom/microsoft/xbox/toolkit/network/ListState;->ErrorState:Lcom/microsoft/xbox/toolkit/network/ListState;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->viewModelState:Lcom/microsoft/xbox/toolkit/network/ListState;

    goto :goto_0

    .line 355
    .end local v0    # "summary":Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    :pswitch_1
    sget-object v1, Lcom/microsoft/xbox/toolkit/network/ListState;->ErrorState:Lcom/microsoft/xbox/toolkit/network/ListState;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->viewModelState:Lcom/microsoft/xbox/toolkit/network/ListState;

    goto :goto_0

    .line 342
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

.method private onRemoveUserFromFavoriteListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 2
    .param p1, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .param p2, "isFavorite"    # Z

    .prologue
    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromFavoriteList:Z

    .line 410
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 421
    :goto_0
    return-void

    .line 414
    :pswitch_0
    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFavorite:Z

    .line 415
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskCompleted()V

    goto :goto_0

    .line 419
    :pswitch_1
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->RealNameSharing_ErrorChangeRemove:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 410
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

.method private onRemoveUserFromFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 3
    .param p1, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .param p2, "isFollowing"    # Z

    .prologue
    const/4 v2, 0x0

    .line 450
    iput-boolean v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromFollowingList:Z

    .line 452
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 466
    :goto_0
    return-void

    .line 456
    :pswitch_0
    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFollowing:Z

    .line 457
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFavorite:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFollowing:Z

    if-nez v0, :cond_0

    .line 458
    iput-boolean v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFavorite:Z

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskCompleted()V

    goto :goto_0

    .line 464
    :pswitch_1
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->RealNameSharing_ErrorChangeRemove:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 452
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

.method private onRemoveUserFromShareIdentityListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromShareIdentityList:Z

    .line 378
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 389
    :goto_0
    return-void

    .line 382
    :pswitch_0
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskCompleted()V

    goto :goto_0

    .line 386
    :pswitch_1
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->RealNameSharing_ErrorChangeRemove:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 378
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

.method private showError(I)V
    .locals 1
    .param p1, "contentResId"    # I

    .prologue
    .line 240
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/DialogManager;->showToast(I)V

    .line 241
    return-void
.end method


# virtual methods
.method public addFavoriteUser()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;->cancel()V

    .line 271
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;

    .line 272
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;->load(Z)V

    .line 273
    return-void
.end method

.method public addFollowingUser()V
    .locals 2

    .prologue
    .line 316
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->hasPrivilegeToAddFriend()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->cancel()V

    .line 320
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;

    .line 321
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->load(Z)V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_1
    sget v0, Lcom/microsoft/xboxtcui/R$string;->Global_MissingPrivilegeError_DialogBody:I

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->showError(I)V

    goto :goto_0
.end method

.method public addUserToShareIdentityList()V
    .locals 3

    .prologue
    .line 284
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToShareIdentityListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToShareIdentityListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;->cancel()V

    .line 287
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v1, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToShareIdentityListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;

    .line 290
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToShareIdentityListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;->load(Z)V

    .line 291
    return-void
.end method

.method public clearChangeFriendshipForm()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 219
    return-void
.end method

.method public getCallerGamerTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    .line 107
    .local v0, "meProfile":Lcom/microsoft/xbox/service/model/ProfileModel;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerTag()Ljava/lang/String;

    move-result-object v1

    .line 111
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getCallerMarkedTargetAsIdentityShared()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->hasCallerMarkedTargetAsIdentityShared()Z

    move-result v0

    return v0
.end method

.method public getCallerShareRealNameStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    .line 98
    .local v0, "meProfile":Lcom/microsoft/xbox/service/model/ProfileModel;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getShareRealNameStatus()Ljava/lang/String;

    move-result-object v1

    .line 102
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getDialogButtonText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFollowing:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->TextInput_Confirm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->OK_Text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGamerPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerPicImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGamerScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerScore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGamerTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsFavorite()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->hasCallerMarkedTargetAsFavorite()Z

    move-result v0

    return v0
.end method

.method public getIsFollowing()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->isCallerFollowingTarget()Z

    move-result v0

    return v0
.end method

.method public getIsSharingRealNameEnd()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isSharingRealNameEnd:Z

    return v0
.end method

.method public getIsSharingRealNameStart()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isSharingRealNameStart:Z

    return v0
.end method

.method public getPreferredColor()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getPreferedColor()I

    move-result v0

    return v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getRealName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelState()Lcom/microsoft/xbox/toolkit/network/ListState;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->viewModelState:Lcom/microsoft/xbox/toolkit/network/ListState;

    return-object v0
.end method

.method public getXuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isLoadingUserProfile:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToFavoriteList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromFavoriteList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToFollowingList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromFollowingList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToShareIdentityList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromShareIdentityList:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->loadProfileAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->loadProfileAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;->cancel()V

    .line 262
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$1;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->loadProfileAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;

    .line 263
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->loadProfileAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;->load(Z)V

    .line 264
    return-void
.end method

.method public onChangeRelationshipCompleted()V
    .locals 7

    .prologue
    .line 155
    const/4 v4, 0x0

    .line 157
    .local v4, "willPerformAsyncAction":Z
    iget-object v5, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v5}, Lcom/microsoft/xbox/service/model/ProfileModel;->isCallerFollowingTarget()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v3, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->EXISTINGFRIEND:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    .line 161
    .local v3, "relationship":Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;
    :goto_0
    iget-object v5, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 162
    invoke-virtual {v5}, Lcom/microsoft/xbox/service/model/ProfileModel;->hasCallerMarkedTargetAsFavorite()Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->EXISTINGFAVORITE:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    .line 166
    .local v0, "favoriteStatus":Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;
    :goto_1
    iget-object v5, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v5}, Lcom/microsoft/xbox/service/model/ProfileModel;->hasCallerMarkedTargetAsIdentityShared()Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v2, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->EXISTINGSHARED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    .line 172
    .local v2, "realNameStatus":Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;
    :goto_2
    sget-object v1, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;->NORMAL:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;

    .line 174
    .local v1, "gamerType":Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;
    iget-object v5, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v6, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    sget-object v3, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->ADDFRIEND:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    .line 176
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addFollowingUser()V

    .line 177
    const/4 v4, 0x1

    .line 180
    :cond_0
    iget-object v5, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v6, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 181
    sget-object v3, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->REMOVEFRIEND:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    .line 182
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeFollowingUser()V

    .line 183
    const/4 v4, 0x1

    .line 186
    :cond_1
    iget-object v5, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v6, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 187
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->FAVORITED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    .line 188
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addFavoriteUser()V

    .line 189
    const/4 v4, 0x1

    .line 192
    :cond_2
    iget-object v5, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v6, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 193
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->UNFAVORITED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    .line 194
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeFavoriteUser()V

    .line 195
    const/4 v4, 0x1

    .line 198
    :cond_3
    iget-object v5, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v6, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 199
    sget-object v2, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->SHARINGON:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    .line 200
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToShareIdentityList()V

    .line 201
    const/4 v4, 0x1

    .line 204
    :cond_4
    iget-object v5, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v6, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 205
    sget-object v2, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->SHARINGOFF:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    .line 206
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromShareIdentityList()V

    .line 207
    const/4 v4, 0x1

    .line 210
    :cond_5
    if-nez v4, :cond_9

    .line 211
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskCompleted()V

    .line 215
    :goto_3
    return-void

    .line 157
    .end local v0    # "favoriteStatus":Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;
    .end local v1    # "gamerType":Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;
    .end local v2    # "realNameStatus":Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;
    .end local v3    # "relationship":Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;
    :cond_6
    sget-object v3, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;->NOTCHANGED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;

    goto :goto_0

    .line 162
    .restart local v3    # "relationship":Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;
    :cond_7
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->EXISTINGNOTFAVORITED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    goto :goto_1

    .line 166
    .restart local v0    # "favoriteStatus":Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;
    :cond_8
    sget-object v2, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->EXISTINGNOTSHARED:Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    goto :goto_2

    .line 213
    .restart local v1    # "gamerType":Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;
    .restart local v2    # "realNameStatus":Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;
    :cond_9
    invoke-static {v3, v2, v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipDone(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/xle/telemetry/helpers/UTCChangeRelationship$GamerType;)V

    goto :goto_3
.end method

.method public removeFavoriteUser()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;->cancel()V

    .line 279
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;

    .line 280
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;->load(Z)V

    .line 281
    return-void
.end method

.method public removeFollowingUser()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;->cancel()V

    .line 333
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;

    .line 334
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;->load(Z)V

    .line 335
    return-void
.end method

.method public removeUserFromShareIdentityList()V
    .locals 3

    .prologue
    .line 294
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;->cancel()V

    .line 297
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v1, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromShareIdentityListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;

    .line 300
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromShareIdentityListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;->load(Z)V

    .line 301
    return-void
.end method

.method public setInitialRealNameSharingState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isSharingRealNameStart:Z

    .line 224
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isSharingRealNameEnd:Z

    .line 225
    return-void
.end method

.method public setIsSharingRealNameEnd(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isSharingRealNameEnd:Z

    .line 229
    return-void
.end method

.method public setShouldAddUserToFavoriteList(Z)V
    .locals 2
    .param p1, "shouldAddUserToFavoriteList"    # Z

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setShouldAddUserToFriendList(Z)V
    .locals 2
    .param p1, "shouldAddUserToFriendList"    # Z

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setShouldAddUserToShareIdentityList(Z)V
    .locals 2
    .param p1, "shouldAddUserToShareIdentityList"    # Z

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setShouldRemoveUserFroShareIdentityList(Z)V
    .locals 2
    .param p1, "shouldRemoveUserFroShareIdentityList"    # Z

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setShouldRemoveUserFromFavoriteList(Z)V
    .locals 2
    .param p1, "shouldRemoveUserFromFavoriteList"    # Z

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
