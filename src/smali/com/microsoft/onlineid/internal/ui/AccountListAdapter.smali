.class public Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;
.super Lcom/microsoft/onlineid/ui/AbstractListAdapter;
.source "AccountListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/ui/AbstractListAdapter",
        "<",
        "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _applicationContext:Landroid/content/Context;

.field private final _imageUserTileResId:I

.field protected final _resources:Lcom/microsoft/onlineid/internal/Resources;

.field private final _textEmailResId:I

.field private final _textFirstLastResId:I

.field protected final _visibleAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/microsoft/onlineid/ui/AbstractListAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_visibleAccounts:Ljava/util/Set;

    .line 63
    iput-object v2, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_applicationContext:Landroid/content/Context;

    .line 64
    iput-object v2, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    .line 65
    iput v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_imageUserTileResId:I

    .line 66
    iput v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_textFirstLastResId:I

    .line 67
    iput v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_textEmailResId:I

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activityContext"    # Landroid/app/Activity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/microsoft/onlineid/ui/AbstractListAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_visibleAccounts:Ljava/util/Set;

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_applicationContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/microsoft/onlineid/internal/Resources;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/Resources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    .line 53
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v1, "imageUserTile"

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_imageUserTileResId:I

    .line 54
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v1, "textFirstLast"

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_textFirstLastResId:I

    .line 55
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v1, "textEmail"

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_textEmailResId:I

    .line 56
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 73
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_items:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .line 76
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    if-nez p2, :cond_0

    .line 78
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v4, "account_picker_tile"

    invoke-virtual {v3, v4}, Lcom/microsoft/onlineid/internal/Resources;->getLayout(Ljava/lang/String;)I

    move-result v2

    .line 80
    .local v2, "layoutID":I
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 82
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 85
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "layoutID":I
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->setupBasicAccountViews(Landroid/view/View;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    .line 86
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method protected onChanged()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->onChanged()V

    .line 128
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_visibleAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 129
    return-void
.end method

.method protected setupBasicAccountViews(Landroid/view/View;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    .locals 5
    .param p1, "inflatedView"    # Landroid/view/View;
    .param p2, "account"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .prologue
    .line 99
    iget v3, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_imageUserTileResId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 100
    .local v0, "imageUserTile":Landroid/widget/ImageView;
    iget v3, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_textFirstLastResId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 101
    .local v2, "textFirstLast":Landroid/widget/TextView;
    iget v3, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_textEmailResId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 104
    .local v1, "textEmail":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getDisplayName()Ljava/lang/String;

    .line 105
    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    new-instance v3, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->_applicationContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2, v0}, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;-><init>(Landroid/content/Context;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Landroid/widget/ImageView;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    return-void
.end method
