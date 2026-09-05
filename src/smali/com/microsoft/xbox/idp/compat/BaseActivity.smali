.class public abstract Lcom/microsoft/xbox/idp/compat/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public addFragment(ILcom/microsoft/xbox/idp/compat/BaseFragment;)V
    .locals 1
    .param p1, "fragmentId"    # I
    .param p2, "fragment"    # Lcom/microsoft/xbox/idp/compat/BaseFragment;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 20
    return-void
.end method

.method public hasFragment(I)Z
    .locals 1
    .param p1, "fragmentId"    # I

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->setOrientation()V

    .line 26
    return-void
.end method

.method public setOrientation()V
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 30
    .local v0, "size":I
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 31
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->setRequestedOrientation(I)V

    .line 33
    :cond_0
    return-void
.end method
