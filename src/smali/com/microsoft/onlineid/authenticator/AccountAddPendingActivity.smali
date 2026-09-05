.class public Lcom/microsoft/onlineid/authenticator/AccountAddPendingActivity;
.super Lcom/microsoft/onlineid/ui/MsaSdkActivity;
.source "AccountAddPendingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/microsoft/onlineid/ui/MsaSdkActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    .line 28
    sget v1, Lcom/microsoft/onlineid/sdk/R$layout;->static_page:I

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/authenticator/AccountAddPendingActivity;->setContentView(I)V

    .line 29
    invoke-super {p0, p1}, Lcom/microsoft/onlineid/ui/MsaSdkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget v1, Lcom/microsoft/onlineid/sdk/R$id;->progressView:I

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/authenticator/AccountAddPendingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/ui/ProgressView;

    .line 32
    .local v0, "progress":Lcom/microsoft/onlineid/internal/ui/ProgressView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->setVisibility(I)V

    .line 33
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->startAnimation()Z

    .line 35
    sget v1, Lcom/microsoft/onlineid/sdk/R$id;->static_page_header:I

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/authenticator/AccountAddPendingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    sget v1, Lcom/microsoft/onlineid/sdk/R$id;->static_page_body_first:I

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/authenticator/AccountAddPendingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    sget v1, Lcom/microsoft/onlineid/sdk/R$id;->static_page_body_second:I

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/authenticator/AccountAddPendingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/microsoft/onlineid/ui/MsaSdkActivity;->onStart()V

    .line 50
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    const-string v1, "Account add pending screen"

    invoke-interface {v0, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logScreenView(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 51
    return-void
.end method
