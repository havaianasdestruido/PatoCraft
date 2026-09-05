.class public abstract Lcom/microsoft/xbox/idp/ui/AuthActivity;
.super Lcom/microsoft/xbox/idp/compat/BaseActivity;
.source "AuthActivity.java"


# static fields
.field public static final RESULT_PROVIDER_ERROR:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseActivity;-><init>()V

    return-void
.end method

.method public static fromActivityResult(I)Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;
    .locals 1
    .param p0, "result"    # I

    .prologue
    .line 32
    packed-switch p0, :pswitch_data_0

    .line 39
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    goto :goto_0

    .line 36
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static toActivityResult(Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;)I
    .locals 2
    .param p0, "status"    # Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .prologue
    .line 20
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthActivity$1;->$SwitchMap$com$microsoft$xbox$idp$interop$Interop$AuthFlowScreenStatus:[I

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 27
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 22
    :pswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 24
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected finishCompat()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->finish()V

    .line 73
    return-void
.end method

.method protected showBodyFragment(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "bodyFragment"    # Landroid/app/Fragment;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "showHeader"    # Z

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 45
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 46
    .local v2, "tx":Landroid/app/FragmentTransaction;
    if-eqz p3, :cond_2

    .line 47
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_header_fragment:I

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 48
    new-instance v1, Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;-><init>()V

    .line 49
    .local v1, "headerFragment":Landroid/app/Fragment;
    invoke-virtual {v1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_header_fragment:I

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 58
    .end local v1    # "headerFragment":Landroid/app/Fragment;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    :cond_1
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_body_fragment:I

    invoke-virtual {v2, v3, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 62
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 63
    return-void

    .line 53
    :cond_2
    sget v3, Lcom/microsoft/xbox/idp/R$id;->xbid_header_fragment:I

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 54
    .restart local v1    # "headerFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method
