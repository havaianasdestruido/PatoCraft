.class public Lcom/microsoft/xbox/idp/ui/XBLoginFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "XBLoginFragment.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;,
        Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;,
        Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final AM_E_NO_NETWORK:I = -0x7822ffe2

.field public static final ARG_RPS_TICKET:Ljava/lang/String; = "ARG_RPS_TICKET"

.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field private static final LOADER_XB_LOGIN:I = 0x1

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;

.field private static final TAG:Ljava/lang/String;

.field private static final XO_E_ENFORCEMENT_BAN:I = -0x7fea23fd


# instance fields
.field private callbacks:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;

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

.field private state:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

.field private final xbLoginCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->$assertionsDisabled:Z

    .line 38
    const-class v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->TAG:Ljava/lang/String;

    .line 215
    new-instance v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$2;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$2;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;

    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->loaderMap:Landroid/util/SparseArray;

    .line 43
    sget-object v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;

    .line 133
    new-instance v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/XBLoginFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->xbLoginCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 46
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->loaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;

    const-class v3, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Result;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->xbLoginCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;-><init>(Ljava/lang/Class;Landroid/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/ui/XBLoginFragment;)Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;

    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/ui/XBLoginFragment;)Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->state:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

    return-object v0
.end method


# virtual methods
.method public getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;
    .locals 1
    .param p1, "loaderId"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->loaderMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 111
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->state:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->getActivityResult(IILandroid/content/Intent;)Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;

    move-result-object v0

    .line 112
    .local v0, "result":Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;->isTryAgain()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    sget-object v1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->TAG:Ljava/lang/String;

    const-string v2, "Trying again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->state:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->deleteLoader()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->state:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

    iput-object v4, v1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    .line 118
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v4, v3}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;Lcom/microsoft/xbox/idp/util/AuthFlowResult;Z)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 56
    sget-boolean v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_0
    check-cast p1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;

    .line 58
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 72
    sget-object v1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->TAG:Ljava/lang/String;

    const-string v2, "No arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    invoke-interface {v1, v2, v4, v3}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;Lcom/microsoft/xbox/idp/util/AuthFlowResult;Z)V

    .line 84
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v1, "ARG_USER_PTR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    sget-object v1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->TAG:Ljava/lang/String;

    const-string v2, "No ARG_USER_PTR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    invoke-interface {v1, v2, v4, v3}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;Lcom/microsoft/xbox/idp/util/AuthFlowResult;Z)V

    goto :goto_0

    .line 77
    :cond_1
    const-string v1, "ARG_RPS_TICKET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    sget-object v1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->TAG:Ljava/lang/String;

    const-string v2, "No ARG_USER_PTR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    invoke-interface {v1, v2, v4, v3}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;Lcom/microsoft/xbox/idp/util/AuthFlowResult;Z)V

    goto :goto_0

    .line 81
    :cond_2
    if-nez p1, :cond_3

    new-instance v1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;-><init>()V

    :goto_1
    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->state:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

    .line 82
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->state:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v1, p0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->setActivityContext(Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;)V

    goto :goto_0

    .line 81
    :cond_3
    const-string v1, "KEY_STATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    sget v0, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_busy:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onDetach()V

    .line 63
    sget-object v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;

    .line 64
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 88
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onResume()V

    .line 90
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, "args":Landroid/os/Bundle;
    sget-object v2, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->TAG:Ljava/lang/String;

    const-string v3, "Initializing LOADER_XB_LOGIN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 94
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "ARG_USER_PTR"

    const-string v3, "ARG_USER_PTR"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 95
    const-string v2, "ARG_RPS_TICKET"

    const-string v3, "ARG_RPS_TICKET"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "KEY_RESULT_KEY"

    new-instance v3, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    const-class v4, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-direct {v3, v4, v6}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->state:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->state:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v2, v6, v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    .line 100
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    const-string v0, "KEY_STATE"

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;->state:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 106
    return-void
.end method
