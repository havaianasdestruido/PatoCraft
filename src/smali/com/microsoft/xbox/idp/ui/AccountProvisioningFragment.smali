.class public Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "AccountProvisioningFragment.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;,
        Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;,
        Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final GAMERPIC_UPDATE_IMAGE_URL_KEY:Ljava/lang/String; = "GAMERPIC_UPDATE_IMAGE_URL_KEY"

.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field private static final LOADER_GAMERPIC_CHOICE_LIST:I = 0x4

.field private static final LOADER_GAMERPIC_UPDATE:I = 0x5

.field private static final LOADER_GET_PRIVACY_SETTINGS:I = 0x6

.field private static final LOADER_GET_PROFILE:I = 0x1

.field private static final LOADER_POST_PROFILE:I = 0x2

.field private static final LOADER_SET_PRIVACY_SETTINGS:I = 0x7

.field private static final LOADER_XTOKEN:I = 0x3

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callbacks:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

.field private final gamerpicChoiceListCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/Profile$GamerpicChoiceList;",
            ">;>;"
        }
    .end annotation
.end field

.field private final gamerpicUpdateCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/Profile$GamerpicUpdateResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final getPrivacySettingsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/Privacy$Settings;",
            ">;>;"
        }
    .end annotation
.end field

.field private final loaderMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final setPrivacySettingsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private state:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

.field private userAccount:Lcom/microsoft/xbox/idp/model/UserAccount;

.field private final userProfileCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/UserAccount;",
            ">;>;"
        }
    .end annotation
.end field

.field private final xtokenCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private xtokenData:Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->$assertionsDisabled:Z

    .line 46
    const-class v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->TAG:Ljava/lang/String;

    .line 519
    new-instance v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$7;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$7;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->loaderMap:Landroid/util/SparseArray;

    .line 157
    new-instance v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->userProfileCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 234
    new-instance v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;-><init>(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->xtokenCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 275
    new-instance v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;-><init>(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->getPrivacySettingsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 324
    new-instance v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$4;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$4;-><init>(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->setPrivacySettingsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 360
    new-instance v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$5;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$5;-><init>(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->gamerpicUpdateCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 403
    new-instance v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$6;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$6;-><init>(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->gamerpicChoiceListCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 66
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->loaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->userProfileCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->loaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-instance v2, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->userProfileCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->loaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;

    const-class v3, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->xtokenCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;-><init>(Ljava/lang/Class;Landroid/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->loaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x4

    new-instance v2, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->gamerpicChoiceListCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->loaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-instance v2, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->gamerpicUpdateCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->loaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x6

    new-instance v2, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->getPrivacySettingsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->loaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x7

    new-instance v2, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->setPrivacySettingsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->userAccount:Lcom/microsoft/xbox/idp/model/UserAccount;

    return-object v0
.end method

.method static synthetic access$102(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;Lcom/microsoft/xbox/idp/model/UserAccount;)Lcom/microsoft/xbox/idp/model/UserAccount;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;
    .param p1, "x1"    # Lcom/microsoft/xbox/idp/model/UserAccount;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->userAccount:Lcom/microsoft/xbox/idp/model/UserAccount;

    return-object p1
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->state:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->xtokenData:Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;

    return-object v0
.end method

.method static synthetic access$302(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;)Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;
    .param p1, "x1"    # Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->xtokenData:Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;

    return-object p1
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    return-object v0
.end method


# virtual methods
.method public getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;
    .locals 1
    .param p1, "loaderId"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->loaderMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 139
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->state:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->getActivityResult(IILandroid/content/Intent;)Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;

    move-result-object v0

    .line 140
    .local v0, "result":Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;->isTryAgain()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    sget-object v1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->TAG:Ljava/lang/String;

    const-string v2, "Trying again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->state:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->deleteLoader()V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->state:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    iput-object v3, v1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    .line 146
    sget-object v1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;

    invoke-interface {v1, v2, v3}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 78
    sget-boolean v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_0
    check-cast p1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    .line 80
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 94
    sget-object v1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->TAG:Ljava/lang/String;

    const-string v2, "No arguments provided"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;

    invoke-interface {v1, v2, v3}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const-string v1, "ARG_USER_PTR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    sget-object v1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->TAG:Ljava/lang/String;

    const-string v2, "No ARG_USER_PTR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;

    invoke-interface {v1, v2, v3}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    sget v0, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_busy:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onDetach()V

    .line 85
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 119
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onResume()V

    .line 121
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "args":Landroid/os/Bundle;
    sget-object v2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->TAG:Ljava/lang/String;

    const-string v3, "Initializing LOADER_GET_PROFILE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 124
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "KEY_RESULT_KEY"

    new-instance v3, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    const-class v4, Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 125
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->state:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->state:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v2, v5, v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    .line 128
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    const-string v0, "KEY_STATE"

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->state:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 113
    if-nez p2, :cond_0

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->state:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    .line 114
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->state:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->setActivityContext(Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;)V

    .line 115
    return-void

    .line 113
    :cond_0
    const-string v0, "KEY_STATE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    goto :goto_0
.end method
