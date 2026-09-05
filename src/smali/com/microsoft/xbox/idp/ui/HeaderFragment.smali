.class public Lcom/microsoft/xbox/idp/ui/HeaderFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "HeaderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOADER_GET_PROFILE:I = 0x1

.field private static final LOADER_USER_IMAGE_URL:I = 0x2

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callbacks:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

.field private final imageCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private userAccount:Lcom/microsoft/xbox/idp/model/UserAccount;

.field userAccountCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
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

.field private userEmail:Landroid/widget/TextView;

.field private userImageView:Landroid/widget/ImageView;

.field private userName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->$assertionsDisabled:Z

    .line 35
    const-class v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->TAG:Ljava/lang/String;

    .line 174
    new-instance v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$3;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment$3;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    .line 39
    sget-object v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

    .line 107
    new-instance v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userAccountCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 144
    new-instance v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;-><init>(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->imageCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 47
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userAccount:Lcom/microsoft/xbox/idp/model/UserAccount;

    return-object v0
.end method

.method static synthetic access$102(Lcom/microsoft/xbox/idp/ui/HeaderFragment;Lcom/microsoft/xbox/idp/model/UserAccount;)Lcom/microsoft/xbox/idp/model/UserAccount;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/HeaderFragment;
    .param p1, "x1"    # Lcom/microsoft/xbox/idp/model/UserAccount;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userAccount:Lcom/microsoft/xbox/idp/model/UserAccount;

    return-object p1
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userEmail:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->imageCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$500(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userImageView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 57
    sget-boolean v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_0
    check-cast p1, Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

    .line 59
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 102
    .local v0, "id":I
    sget v1, Lcom/microsoft/xbox/idp/R$id;->xbid_close:I

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

    invoke-interface {v1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;->onClickCloseHeader()V

    .line 105
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    sget v0, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_header:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onDetach()V

    .line 64
    sget-object v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

    .line 65
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 90
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onResume()V

    .line 91
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userAccountCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    sget-object v1, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->TAG:Ljava/lang/String;

    const-string v2, "No arguments provided"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_user_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userImageView:Landroid/widget/ImageView;

    .line 84
    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_user_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userName:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_user_email:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userEmail:Landroid/widget/TextView;

    .line 86
    return-void
.end method
