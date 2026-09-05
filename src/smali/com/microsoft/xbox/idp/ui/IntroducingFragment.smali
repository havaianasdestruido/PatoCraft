.class public Lcom/microsoft/xbox/idp/ui/IntroducingFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "IntroducingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Callbacks;,
        Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;,
        Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final KEY_STATE:Ljava/lang/String; = "IntroducingFragment.KEY_STATE"

.field private static final LOADER_GAMER_IMAGE:I = 0x2

.field private static final LOADER_GAMER_PROFILE:I = 0x1

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Callbacks;

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

.field private callbacks:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Callbacks;

.field private displayNameText:Landroid/widget/TextView;

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

.field private state:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;

.field private user:Lcom/microsoft/xbox/idp/model/Profile$User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->$assertionsDisabled:Z

    .line 49
    const-class v0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->TAG:Ljava/lang/String;

    .line 316
    new-instance v0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$4;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$4;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Callbacks;

    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->loaderMap:Landroid/util/SparseArray;

    .line 55
    sget-object v0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Callbacks;

    .line 187
    new-instance v0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$2;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$2;-><init>(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->bitmapCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 216
    new-instance v0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;-><init>(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->profileCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 67
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->loaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->profileCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->loaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-instance v2, Lcom/microsoft/xbox/idp/util/BitmapLoaderInfo;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->bitmapCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/idp/util/BitmapLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->bottomBarShadow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->gamerpicView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Lcom/microsoft/xbox/idp/model/Profile$User;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->user:Lcom/microsoft/xbox/idp/model/Profile$User;

    return-object v0
.end method

.method static synthetic access$402(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;Lcom/microsoft/xbox/idp/model/Profile$User;)Lcom/microsoft/xbox/idp/model/Profile$User;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/IntroducingFragment;
    .param p1, "x1"    # Lcom/microsoft/xbox/idp/model/Profile$User;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->user:Lcom/microsoft/xbox/idp/model/Profile$User;

    return-object p1
.end method

.method static synthetic access$500(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->displayNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->gamerTagText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->state:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;

    return-object v0
.end method


# virtual methods
.method public getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;
    .locals 1
    .param p1, "loaderId"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->loaderMap:Landroid/util/SparseArray;

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
    .line 156
    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 157
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->state:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->getActivityResult(IILandroid/content/Intent;)Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;

    move-result-object v0

    .line 158
    .local v0, "result":Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;->isTryAgain()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    sget-object v1, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->TAG:Ljava/lang/String;

    const-string v2, "Trying again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->state:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->deleteLoader()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->state:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    .line 164
    sget-object v1, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 78
    sget-boolean v0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Callbacks;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_0
    check-cast p1, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Callbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Callbacks;

    .line 80
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 173
    .local v0, "id":I
    sget v1, Lcom/microsoft/xbox/idp/R$id;->xbid_done:I

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->user:Lcom/microsoft/xbox/idp/model/Profile$User;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCIntroducing;->trackDone(Lcom/microsoft/xbox/idp/model/Profile$User;Ljava/lang/CharSequence;)V

    .line 178
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    sget v0, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_introducing:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->removePage()V

    .line 88
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onDetach()V

    .line 89
    sget-object v0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Callbacks;

    .line 90
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 133
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onResume()V

    .line 135
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 136
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 137
    sget-object v2, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->TAG:Ljava/lang/String;

    const-string v3, "Initializing LOADER_GAMER_PROFILE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 139
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "KEY_RESULT_KEY"

    new-instance v3, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    const-class v4, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 140
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->state:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->state:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v2, v5, v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    .line 146
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    sget-object v2, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->TAG:Ljava/lang/String;

    const-string v3, "No arguments provided"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 151
    const-string v0, "IntroducingFragment.KEY_STATE"

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->state:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 101
    if-nez p2, :cond_2

    new-instance v2, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;-><init>()V

    :goto_0
    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->state:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;

    .line 102
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->state:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v2, p0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->setActivityContext(Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;)V

    .line 104
    sget v2, Lcom/microsoft/xbox/idp/R$id;->xbid_scroll_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->scrollView:Landroid/widget/ScrollView;

    .line 105
    sget v2, Lcom/microsoft/xbox/idp/R$id;->xbid_bottom_bar_shadow:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->bottomBarShadow:Landroid/view/View;

    .line 106
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->scrollView:Landroid/widget/ScrollView;

    new-instance v3, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$1;

    invoke-direct {v3, p0}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 112
    sget v2, Lcom/microsoft/xbox/idp/R$id;->xbid_gamerpic:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->gamerpicView:Landroid/widget/ImageView;

    .line 113
    sget v2, Lcom/microsoft/xbox/idp/R$id;->xbid_display_name:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->displayNameText:Landroid/widget/TextView;

    .line 114
    sget v2, Lcom/microsoft/xbox/idp/R$id;->xbid_gamertag:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->gamerTagText:Landroid/widget/TextView;

    .line 115
    sget v2, Lcom/microsoft/xbox/idp/R$id;->xbid_done:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 116
    .local v1, "doneButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 120
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 121
    const-string v2, "ARG_LOG_IN_BUTTON_TEXT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const-string v2, "ARG_LOG_IN_BUTTON_TEXT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    const-string v2, "ARG_ALT_BUTTON_TEXT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    const-string v2, "ARG_ALT_BUTTON_TEXT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_1
    return-void

    .line 101
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "doneButton":Landroid/widget/Button;
    :cond_2
    const-string v2, "IntroducingFragment.KEY_STATE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;

    goto :goto_0
.end method
