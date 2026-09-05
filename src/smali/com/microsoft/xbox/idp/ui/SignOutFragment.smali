.class public Lcom/microsoft/xbox/idp/ui/SignOutFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "SignOutFragment.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;,
        Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;,
        Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field private static final LOADER_SIGN_OUT:I = 0x1

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callbacks:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

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

.field private final signOutCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->$assertionsDisabled:Z

    .line 32
    const-class v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->TAG:Ljava/lang/String;

    .line 188
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment$2;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/SignOutFragment$2;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->loaderMap:Landroid/util/SparseArray;

    .line 37
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    .line 118
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/SignOutFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/SignOutFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->signOutCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 40
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->loaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;

    const-class v3, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->signOutCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/idp/util/ResultLoaderInfo;-><init>(Ljava/lang/Class;Landroid/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/ui/SignOutFragment;)Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/ui/SignOutFragment;)Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    return-object v0
.end method


# virtual methods
.method public getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;
    .locals 1
    .param p1, "loaderId"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->loaderMap:Landroid/util/SparseArray;

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
    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 96
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->getActivityResult(IILandroid/content/Intent;)Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;

    move-result-object v0

    .line 97
    .local v0, "result":Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;->isTryAgain()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->TAG:Ljava/lang/String;

    const-string v2, "Trying again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->deleteLoader()V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    .line 103
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 50
    sget-boolean v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_0
    check-cast p1, Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    .line 52
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    if-nez p1, :cond_0

    .line 65
    const-class v0, Lcom/microsoft/xbox/idp/toolkit/SignOutLoader$Result;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getResultCache(Ljava/lang/Class;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/util/ResultCache;->clear()V

    .line 66
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->setActivityContext(Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;)V

    .line 71
    return-void

    .line 68
    :cond_0
    const-string v0, "KEY_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    sget v0, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_busy:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onDetach()V

    .line 57
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;

    .line 58
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 75
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onResume()V

    .line 77
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, "args":Landroid/os/Bundle;
    sget-object v2, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->TAG:Ljava/lang/String;

    const-string v3, "Initializing LOADER_SIGN_OUT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 81
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "KEY_RESULT_KEY"

    new-instance v3, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    const-class v4, Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v2, v5, v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    .line 85
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 90
    const-string v0, "KEY_STATE"

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignOutFragment;->state:Lcom/microsoft/xbox/idp/ui/SignOutFragment$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 91
    return-void
.end method
