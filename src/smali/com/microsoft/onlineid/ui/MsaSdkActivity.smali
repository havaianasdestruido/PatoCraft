.class public abstract Lcom/microsoft/onlineid/ui/MsaSdkActivity;
.super Landroid/app/Activity;
.source "MsaSdkActivity.java"


# static fields
.field public static final AuthenticatorIntentFlagTag:Ljava/lang/String; = "com.microsoft.msa.authenticator.authenticatorFlags"

.field public static final IntentFlagNoFinishAnimation:I = 0x1


# instance fields
.field protected _logHandler:Lcom/microsoft/onlineid/internal/log/SendLogsHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/MsaSdkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/onlineid/sdk/R$string;->webflow_header:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/ui/AccountHeaderView;->applyStyle(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

    invoke-direct {v0, p0}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/ui/MsaSdkActivity;->_logHandler:Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

    .line 47
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 77
    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/MsaSdkActivity;->_logHandler:Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/MsaSdkActivity;->_logHandler:Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->setSendScreenshot(Z)V

    .line 80
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/MsaSdkActivity;->_logHandler:Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->trySendLogsOnKeyEvent(I)V

    .line 83
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/MsaSdkActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/MsaSdkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.msa.authenticator.authenticatorFlags"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 60
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 63
    invoke-virtual {p0, v3, v3}, Lcom/microsoft/onlineid/ui/MsaSdkActivity;->overridePendingTransition(II)V

    .line 67
    .end local v0    # "flags":I
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 68
    return-void
.end method
