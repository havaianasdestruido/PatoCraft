.class public Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "FinishSignInFragment.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;,
        Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;,
        Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ARG_AUTH_STATUS:Ljava/lang/String; = "ARG_AUTH_STATUS"

.field public static final ARG_CID:Ljava/lang/String; = "ARG_CID"

.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field private static final LOADER_FINISH_SIGN_IN:I = 0x1

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

.field private final finishSignInCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;",
            ">;"
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

.field private state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->$assertionsDisabled:Z

    .line 35
    const-class v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->TAG:Ljava/lang/String;

    .line 199
    new-instance v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$2;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$2;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->loaderMap:Landroid/util/SparseArray;

    .line 40
    sget-object v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    .line 128
    new-instance v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->finishSignInCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 43
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->loaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;

    const-class v3, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->finishSignInCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;-><init>(Ljava/lang/Class;Landroid/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;)Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;)Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    return-object v0
.end method


# virtual methods
.method public getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;
    .locals 1
    .param p1, "loaderId"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->loaderMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 106
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->getActivityResult(IILandroid/content/Intent;)Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;

    move-result-object v0

    .line 107
    .local v0, "result":Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;->isTryAgain()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    sget-object v1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->TAG:Ljava/lang/String;

    const-string v2, "Trying again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->deleteLoader()V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    .line 113
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 53
    sget-boolean v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_0
    check-cast p1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    .line 55
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 69
    sget-object v1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->TAG:Ljava/lang/String;

    const-string v2, "No arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;)V

    .line 81
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v1, "ARG_AUTH_STATUS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    sget-object v1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->TAG:Ljava/lang/String;

    const-string v2, "No ARG_AUTH_STATUS"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;)V

    goto :goto_0

    .line 74
    :cond_1
    const-string v1, "ARG_CID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    sget-object v1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->TAG:Ljava/lang/String;

    const-string v2, "No ARG_CID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;)V

    goto :goto_0

    .line 78
    :cond_2
    if-nez p1, :cond_3

    new-instance v1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;-><init>()V

    :goto_1
    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    .line 79
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v1, p0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->setActivityContext(Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;)V

    goto :goto_0

    .line 78
    :cond_3
    const-string v1, "KEY_STATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    sget v0, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_busy:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onDetach()V

    .line 60
    sget-object v0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;

    .line 61
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 85
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onResume()V

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 89
    .local v0, "args":Landroid/os/Bundle;
    sget-object v2, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->TAG:Ljava/lang/String;

    const-string v3, "Initializing LOADER_FINISH_SIGN_IN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 91
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "KEY_RESULT_KEY"

    new-instance v3, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    const-class v4, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v1, v3}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;Z)Z

    .line 95
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    const-string v0, "KEY_STATE"

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/FinishSignInFragment;->state:Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 101
    return-void
.end method
