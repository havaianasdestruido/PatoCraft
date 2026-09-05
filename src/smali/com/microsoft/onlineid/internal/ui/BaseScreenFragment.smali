.class public Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;
.super Landroid/app/Fragment;
.source "BaseScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;
    }
.end annotation


# instance fields
.field private _progress:Lcom/microsoft/onlineid/internal/ui/ProgressView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static buildWithBaseScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;
    .locals 4
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, "genericClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "baseScreenArguments":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    .local v2, "fragment":Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;, "TT;"
    sget-object v3, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->Header:Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v3, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->Body:Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2, v0}, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;->setArguments(Landroid/os/Bundle;)V

    .line 123
    return-object v2

    .line 108
    .end local v2    # "fragment":Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;, "TT;"
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 115
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    new-instance v5, Lcom/microsoft/onlineid/internal/Resources;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/microsoft/onlineid/internal/Resources;-><init>(Landroid/content/Context;)V

    .line 48
    .local v5, "resources":Lcom/microsoft/onlineid/internal/Resources;
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 49
    const-string v7, "base_screen"

    invoke-virtual {v5, v7}, Lcom/microsoft/onlineid/internal/Resources;->getLayout(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 52
    .local v6, "view":Landroid/view/View;
    const-string v7, "baseScreenProgressView"

    invoke-virtual {v5, v7}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/microsoft/onlineid/internal/ui/ProgressView;

    iput-object v7, p0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;->_progress:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    .line 55
    const-string v7, "baseScreenHeader"

    invoke-virtual {v5, v7}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 56
    .local v3, "header":Landroid/widget/TextView;
    const-string v7, "baseScreenBody"

    invoke-virtual {v5, v7}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    .local v1, "body":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, "arguments":Landroid/os/Bundle;
    sget-object v7, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->Header:Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    invoke-virtual {v7}, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->name()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "headerArgumentKey":Ljava/lang/String;
    sget-object v7, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->Body:Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    invoke-virtual {v7}, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->name()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "bodyArgumentKey":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-object v6
.end method

.method protected showProgressViewAnimation()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;->_progress:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;->_progress:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->startAnimation()Z

    .line 81
    return-void
.end method

.method protected stopProgressAnimation()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;->_progress:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->stopAnimation()Z

    .line 89
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;->_progress:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->setVisibility(I)V

    .line 90
    return-void
.end method
