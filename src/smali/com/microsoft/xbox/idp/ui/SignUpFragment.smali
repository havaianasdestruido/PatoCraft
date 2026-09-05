.class public Lcom/microsoft/xbox/idp/ui/SignUpFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "SignUpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;,
        Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;,
        Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;,
        Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ARG_ACCOUNT_PROVISIONING_RESULT:Ljava/lang/String; = "ARG_ACCOUNT_PROVISIONING_RESULT"

.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field private static final LOADER_CLAIM_GAMERTAG:I = 0x1

.field private static final LOADER_RESERVE_GAMERTAG:I = 0x2

.field private static final LOADER_SUGGESTIONS:I = 0x3

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bottomBarShadow:Landroid/view/View;

.field private callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

.field private claimItButton:Landroid/widget/Button;

.field private clearTextButton:Landroid/view/View;

.field private editTextGamerTag:Landroid/widget/EditText;

.field private editTextGamerTagContainer:Landroid/view/View;

.field private final gamerTagChangeListener:Landroid/text/TextWatcher;

.field private final gamerTagClaimCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/GamerTag$Response;",
            ">;>;"
        }
    .end annotation
.end field

.field private final gamerTagReservationCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
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

.field private gamerTagState:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

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

.field private final onSuggestionClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private privacyDetailsText:Landroid/widget/TextView;

.field private privacyText:Landroid/widget/TextView;

.field private provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

.field private scrollView:Landroid/widget/ScrollView;

.field private searchButton:Landroid/view/View;

.field private state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

.field private final suggestionsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/Suggestions$Response;",
            ">;>;"
        }
    .end annotation
.end field

.field private suggestionsList:Landroid/widget/AbsListView;

.field private suggestionsListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textGamerTagComment:Landroid/widget/TextView;

.field private final xboxDotComLauncher:Landroid/text/style/ClickableSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->$assertionsDisabled:Z

    .line 61
    const-class v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    .line 567
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$9;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$9;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->loaderMap:Landroid/util/SparseArray;

    .line 68
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    .line 308
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$3;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$3;-><init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagChangeListener:Landroid/text/TextWatcher;

    .line 323
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$4;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$4;-><init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->onSuggestionClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 331
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$5;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$5;-><init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagClaimCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 375
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;-><init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagReservationCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 414
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$7;-><init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 453
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$8;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$8;-><init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->xboxDotComLauncher:Landroid/text/style/ClickableSpan;

    .line 84
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->loaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-instance v2, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagReservationCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->loaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagClaimCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->loaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-instance v2, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/idp/util/ObjectLoaderInfo;-><init>(Landroid/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->bottomBarShadow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/microsoft/xbox/idp/ui/SignUpFragment;Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment;
    .param p1, "x1"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->setGamerTagState(Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTagContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/ui/SignUpFragment;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->resetGamerTagState(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsListAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTag:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    return-object v0
.end method

.method static synthetic access$800(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    return-object v0
.end method

.method static synthetic access$900(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    return-object v0
.end method

.method private resetGamerTagState(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "gamertag"    # Ljava/lang/CharSequence;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNINITIALIZED:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->setGamerTagState(Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V

    .line 306
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->EMPTY:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->setGamerTagState(Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTag:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 292
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getGamerTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->INITIAL:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->setGamerTagState(Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-boolean v0, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->reserved:Z

    if-eqz v0, :cond_3

    .line 295
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->AVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->setGamerTagState(Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V

    goto :goto_0

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTagWithSuggestions:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 297
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->hasSuggestions()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNAVAILABLE_WITH_SUGGESTIONS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    :goto_1
    invoke-direct {p0, v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->setGamerTagState(Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNAVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    goto :goto_1

    .line 299
    :cond_5
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNKNOWN:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->setGamerTagState(Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V

    goto :goto_0

    .line 301
    :cond_6
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTagWithSuggestions:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 302
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->hasSuggestions()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNAVAILABLE_WITH_SUGGESTIONS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    :goto_2
    invoke-direct {p0, v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->setGamerTagState(Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNAVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    goto :goto_2

    .line 304
    :cond_8
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNKNOWN:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->setGamerTagState(Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V

    goto :goto_0
.end method

.method private setGamerTagState(Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V
    .locals 6
    .param p1, "newState"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 260
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->textGamerTagComment:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->getStringId()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object v5, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->textGamerTagComment:Landroid/widget/TextView;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNKNOWN:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-ne p1, v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 263
    iget-object v5, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTag:Landroid/widget/EditText;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->CHECKING:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-eq p1, v1, :cond_5

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNINITIALIZED:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-eq p1, v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 264
    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNKNOWN:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-ne p1, v1, :cond_6

    :cond_0
    move v0, v2

    .line 265
    .local v0, "searchEnabled":Z
    :goto_2
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->textGamerTagComment:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 266
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->searchButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 267
    iget-object v5, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->searchButton:Landroid/view/View;

    if-eqz v0, :cond_7

    move v1, v3

    :goto_3
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->claimItButton:Landroid/widget/Button;

    sget-object v5, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->AVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-eq p1, v5, :cond_1

    sget-object v5, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->INITIAL:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-ne p1, v5, :cond_8

    :cond_1
    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 270
    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNAVAILABLE_WITH_SUGGESTIONS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-ne p1, v1, :cond_9

    .line 271
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 272
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->hasSuggestions()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsListAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->suggestions:Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/model/Suggestions$Response;->Gamertags:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 281
    :cond_3
    :goto_5
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->clearTextButton:Landroid/view/View;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTag:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    :goto_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagState:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    .line 284
    return-void

    .end local v0    # "searchEnabled":Z
    :cond_4
    move v1, v3

    .line 261
    goto :goto_0

    :cond_5
    move v1, v3

    .line 263
    goto :goto_1

    :cond_6
    move v0, v3

    .line 264
    goto :goto_2

    .restart local v0    # "searchEnabled":Z
    :cond_7
    move v1, v4

    .line 267
    goto :goto_3

    :cond_8
    move v2, v3

    .line 268
    goto :goto_4

    .line 276
    :cond_9
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagState:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNAVAILABLE_WITH_SUGGESTIONS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-ne v1, v2, :cond_3

    .line 277
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 278
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_5

    :cond_a
    move v4, v3

    .line 281
    goto :goto_6
.end method


# virtual methods
.method public getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;
    .locals 1
    .param p1, "loaderId"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->loaderMap:Landroid/util/SparseArray;

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
    .line 206
    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 207
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->getActivityResult(IILandroid/content/Intent;)Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;

    move-result-object v0

    .line 208
    .local v0, "result":Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;->isTryAgain()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    const-string v2, "Trying again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->deleteLoader()V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    .line 214
    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 96
    sget-boolean v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_0
    check-cast p1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    .line 98
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 223
    .local v0, "id":I
    sget v1, Lcom/microsoft/xbox/idp/R$id;->xbid_enter_gamertag_comment:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/microsoft/xbox/idp/R$id;->xbid_search:I

    if-ne v0, v1, :cond_2

    .line 224
    :cond_0
    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->CHECKING:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    invoke-direct {p0, v1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->setGamerTagState(Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V

    .line 225
    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    const-string v2, "Restarting LOADER_RESERVE_GAMERTAG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignup;->trackSearchGamerTag(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagReservationCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 252
    :cond_1
    :goto_0
    return-void

    .line 229
    :cond_2
    sget v1, Lcom/microsoft/xbox/idp/R$id;->xbid_aleady_have_gamer_tag_answer:I

    if-ne v0, v1, :cond_3

    .line 231
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignup;->trackSignInWithDifferentUser(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;Ljava/lang/CharSequence;)V

    .line 232
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->setIsSilent(Z)V

    .line 233
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->ERROR_SWITCH_USER:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;)V

    goto :goto_0

    .line 234
    :cond_3
    sget v1, Lcom/microsoft/xbox/idp/R$id;->xbid_claim_it:I

    if-ne v0, v1, :cond_5

    .line 235
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagState:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->INITIAL:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    if-ne v1, v2, :cond_4

    .line 236
    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    const-string v2, "Interop.SignUpStatus.NO_ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;)V

    .line 244
    :goto_1
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignup;->trackClaimGamerTag(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 239
    :cond_4
    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    const-string v2, "Restarting LOADER_CLAIM_GAMERTAG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagClaimCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1

    .line 246
    :cond_5
    sget v1, Lcom/microsoft/xbox/idp/R$id;->xbid_clear_text:I

    if-ne v0, v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTag:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignup;->trackClearGamerTag(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 115
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 116
    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    const-string v2, "No arguments provided"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v1, "ARG_ACCOUNT_PROVISIONING_RESULT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->TAG:Ljava/lang/String;

    const-string v2, "No ARG_ACCOUNT_PROVISIONING_RESULT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    sget v0, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_sign_up:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->removePage()V

    .line 106
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onDetach()V

    .line 107
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;

    .line 108
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onResume()V

    .line 195
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->restartLoader()Z

    .line 196
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 201
    const-string v0, "KEY_STATE"

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 202
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 135
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_scroll_container:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->scrollView:Landroid/widget/ScrollView;

    .line 136
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_bottom_bar_shadow:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->bottomBarShadow:Landroid/view/View;

    .line 137
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->scrollView:Landroid/widget/ScrollView;

    new-instance v4, Lcom/microsoft/xbox/idp/ui/SignUpFragment$1;

    invoke-direct {v4, p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 143
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_enter_gamertag_container:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTagContainer:Landroid/view/View;

    .line 144
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_enter_gamertag:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTag:Landroid/widget/EditText;

    .line 145
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTag:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->gamerTagChangeListener:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTag:Landroid/widget/EditText;

    new-instance v4, Lcom/microsoft/xbox/idp/ui/SignUpFragment$2;

    invoke-direct {v4, p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$2;-><init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 152
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_clear_text:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->clearTextButton:Landroid/view/View;

    .line 153
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->clearTextButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_search:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->searchButton:Landroid/view/View;

    .line 155
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->searchButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_enter_gamertag_comment:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->textGamerTagComment:Landroid/widget/TextView;

    .line 157
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->textGamerTagComment:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_privacy:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->privacyText:Landroid/widget/TextView;

    .line 159
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_privacy_details:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->privacyDetailsText:Landroid/widget/TextView;

    .line 160
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_aleady_have_gamer_tag_answer:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 161
    .local v2, "diffAccountLink":Landroid/widget/TextView;
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<u>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/microsoft/xbox/idp/R$string;->xbid_another_sign_in:I

    invoke-virtual {p0, v4}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->getString(I)Ljava/lang/String;

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

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_claim_it:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->claimItButton:Landroid/widget/Button;

    .line 164
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->claimItButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_suggestions_list:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView;

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsList:Landroid/widget/AbsListView;

    .line 166
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    sget v5, Lcom/microsoft/xbox/idp/R$layout;->xbid_row_suggestion:I

    sget v6, Lcom/microsoft/xbox/idp/R$id;->xbid_suggestion_text:I

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsListAdapter:Landroid/widget/ArrayAdapter;

    .line 167
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsList:Landroid/widget/AbsListView;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->suggestionsList:Landroid/widget/AbsListView;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->onSuggestionClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 171
    .local v1, "args":Landroid/os/Bundle;
    const-string v3, "ARG_ACCOUNT_PROVISIONING_RESULT"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    .line 173
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {v3}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getXuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignup;->trackPageView(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {v3}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getAgeGroup()Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    move-result-object v0

    .line 179
    .local v0, "ageGroup":Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;
    if-nez p2, :cond_1

    .line 180
    new-instance v3, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    invoke-direct {v3}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;-><init>()V

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    .line 181
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->provisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {v4}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getGamerTag()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTag:Ljava/lang/String;

    .line 182
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTag:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v4, v4, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_0
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iget-object v3, v3, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v3, p0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->setActivityContext(Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;)V

    .line 188
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->privacyText:Landroid/widget/TextView;

    sget v4, Lcom/microsoft/xbox/idp/R$string;->xbid_privacy_settings_header_android:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->resIdAgeGroup:I

    invoke-virtual {p0, v7}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->privacyDetailsText:Landroid/widget/TextView;

    iget v4, v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->resIdAgeGroupDetails:I

    iget-object v5, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->xboxDotComLauncher:Landroid/text/style/ClickableSpan;

    invoke-static {v3, v4, v5}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureClickableSpanOnUnderlineSpan(Landroid/widget/TextView;ILandroid/text/style/ClickableSpan;)V

    .line 190
    return-void

    .line 184
    :cond_1
    const-string v3, "KEY_STATE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->state:Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    .line 185
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->editTextGamerTag:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->resetGamerTagState(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
