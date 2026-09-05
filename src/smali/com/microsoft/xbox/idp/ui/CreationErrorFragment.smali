.class public Lcom/microsoft/xbox/idp/ui/CreationErrorFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "CreationErrorFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/microsoft/xbox/idp/ui/CreationErrorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/CreationErrorFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    sget v0, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_error_creation:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_error_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/microsoft/xbox/idp/R$string;->xbid_creation_error_android:I

    new-instance v2, Lcom/microsoft/xbox/idp/ui/CreationErrorFragment$1;

    invoke-direct {v2, p0}, Lcom/microsoft/xbox/idp/ui/CreationErrorFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/CreationErrorFragment;)V

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureClickableSpanOnUnderlineSpan(Landroid/widget/TextView;ILandroid/text/style/ClickableSpan;)V

    .line 44
    return-void
.end method
