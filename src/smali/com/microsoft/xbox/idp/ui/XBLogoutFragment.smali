.class public Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "XBLogoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;,
        Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOADER_XB_LOGOUT:I = 0x1

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callbacks:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

.field private final xbLogoutCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->$assertionsDisabled:Z

    .line 22
    const-class v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->TAG:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$2;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$2;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    .line 24
    sget-object v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    .line 67
    new-instance v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->xbLogoutCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;)Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 33
    sget-boolean v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_0
    check-cast p1, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    .line 35
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 48
    sget-object v1, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->TAG:Ljava/lang/String;

    const-string v2, "No arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v1, "ARG_USER_PTR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    sget-object v1, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->TAG:Ljava/lang/String;

    const-string v2, "No ARG_USER_PTR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    sget v0, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_busy:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onDetach()V

    .line 40
    sget-object v0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;

    .line 41
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 58
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onResume()V

    .line 59
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment;->xbLogoutCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 60
    return-void
.end method
