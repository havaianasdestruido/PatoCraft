.class public Lcom/microsoft/xbox/idp/ui/WelcomeFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "WelcomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;,
        Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;,
        Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final KEY_STATE:Ljava/lang/String; = "WelcomeFragment.KEY_STATE"

.field private static final LOADER_GAMER_IMAGE:I = 0x2

.field private static final LOADER_GAMER_PROFILE:I = 0x1

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bitmapCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private bottomBarShadow:Landroid/view/View;

.field private callbacks:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

.field private displayNameText:Landroid/widget/TextView;

.field private gamerScoreText:Landroid/widget/TextView;

.field private gamerTagText:Landroid/widget/TextView;

.field private gamerpicView:Landroid/widget/ImageView;

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

.field private final profileCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/Profile$Response;",
            ">;>;"
        }
    .end annotation
.end field

.field private scrollView:Landroid/widget/ScrollView;

.field private state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

.field private user:Lcom/microsoft/xbox/idp/model/Profile$User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->$assertionsDisabled:Z

    .line 52
    const-class v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->TAG:Ljava/lang/String;

    .line 337
    new-instance v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$4;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$4;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->loaderMap:Landroid/util/SparseArray;

    .line 58
    sget-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    .line 206
    new-instance v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$2;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$2;-><init>(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->bitmapCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 235
    new-instance v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$3;-><init>(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->profileCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 71
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->loaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->profileCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->loaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-instance v2, Lcom/microsoft/xbox/idp/util/BitmapLoaderInfo;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->bitmapCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/idp/util/BitmapLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->bottomBarShadow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->gamerpicView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Lcom/microsoft/xbox/idp/model/Profile$User;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->user:Lcom/microsoft/xbox/idp/model/Profile$User;

    return-object v0
.end method

.method static synthetic access$402(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;Lcom/microsoft/xbox/idp/model/Profile$User;)Lcom/microsoft/xbox/idp/model/Profile$User;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/WelcomeFragment;
    .param p1, "x1"    # Lcom/microsoft/xbox/idp/model/Profile$User;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->user:Lcom/microsoft/xbox/idp/model/Profile$User;

    return-object p1
.end method

.method static synthetic access$500(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->displayNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->gamerTagText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->gamerScoreText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    return-object v0
.end method


# virtual methods
.method public getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;
    .locals 1
    .param p1, "loaderId"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->loaderMap:Landroid/util/SparseArray;

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
    .line 168
    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 169
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->getActivityResult(IILandroid/content/Intent;)Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;

    move-result-object v0

    .line 170
    .local v0, "result":Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;->isTryAgain()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    sget-object v1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->TAG:Ljava/lang/String;

    const-string v2, "Trying again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->deleteLoader()V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    .line 176
    sget-object v1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 82
    sget-boolean v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_0
    check-cast p1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    .line 84
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 185
    .local v0, "id":I
    sget v1, Lcom/microsoft/xbox/idp/R$id;->xbid_done:I

    if-ne v0, v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->user:Lcom/microsoft/xbox/idp/model/Profile$User;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCWelcome;->trackDone(Lcom/microsoft/xbox/idp/model/Profile$User;Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    sget v1, Lcom/microsoft/xbox/idp/R$id;->xbid_different_gamer_tag_answer:I

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->user:Lcom/microsoft/xbox/idp/model/Profile$User;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCWelcome;->trackChangeUser(Lcom/microsoft/xbox/idp/model/Profile$User;Ljava/lang/CharSequence;)V

    .line 195
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->setIsSilent(Z)V

    .line 197
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->ERROR_SWITCH_USER:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    sget v0, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_welcome:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->removePage()V

    .line 92
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onDetach()V

    .line 93
    sget-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;

    .line 94
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 145
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onResume()V

    .line 147
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 148
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 149
    sget-object v2, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->TAG:Ljava/lang/String;

    const-string v3, "Initializing LOADER_GAMER_PROFILE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 151
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "KEY_RESULT_KEY"

    new-instance v3, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    const-class v4, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v2, v5, v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    .line 158
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    sget-object v2, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->TAG:Ljava/lang/String;

    const-string v3, "No arguments provided"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 163
    const-string v0, "WelcomeFragment.KEY_STATE"

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 164
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    if-nez p2, :cond_2

    new-instance v3, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    invoke-direct {v3}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;-><init>()V

    :goto_0
    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    .line 107
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->state:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    iget-object v3, v3, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v3, p0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->setActivityContext(Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;)V

    .line 109
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_scroll_container:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->scrollView:Landroid/widget/ScrollView;

    .line 110
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_bottom_bar_shadow:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->bottomBarShadow:Landroid/view/View;

    .line 111
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->scrollView:Landroid/widget/ScrollView;

    new-instance v4, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$1;

    invoke-direct {v4, p0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/WelcomeFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 117
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_gamerpic:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->gamerpicView:Landroid/widget/ImageView;

    .line 118
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_display_name:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->displayNameText:Landroid/widget/TextView;

    .line 119
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_gamertag:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->gamerTagText:Landroid/widget/TextView;

    .line 120
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_gamerscore:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->gamerScoreText:Landroid/widget/TextView;

    .line 121
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_done:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 122
    .local v2, "doneButton":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_different_gamer_tag_answer:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 124
    .local v1, "diffAccountLink":Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<u>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/microsoft/xbox/idp/R$string;->xbid_different_gamer_tag_answer:I

    invoke-virtual {p0, v4}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</u>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 130
    const-string v3, "ARG_LOG_IN_BUTTON_TEXT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    const-string v3, "ARG_LOG_IN_BUTTON_TEXT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    const-string v3, "ARG_ALT_BUTTON_TEXT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    const-string v3, "ARG_ALT_BUTTON_TEXT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_1
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->user:Lcom/microsoft/xbox/idp/model/Profile$User;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCWelcome;->trackPageView(Lcom/microsoft/xbox/idp/model/Profile$User;Ljava/lang/CharSequence;)V

    .line 141
    return-void

    .line 106
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "diffAccountLink":Landroid/widget/TextView;
    .end local v2    # "doneButton":Landroid/widget/Button;
    :cond_2
    const-string v3, "WelcomeFragment.KEY_STATE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$State;

    goto/16 :goto_0
.end method
