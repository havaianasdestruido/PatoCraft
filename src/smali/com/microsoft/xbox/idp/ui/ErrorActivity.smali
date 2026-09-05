.class public Lcom/microsoft/xbox/idp/ui/ErrorActivity;
.super Lcom/microsoft/xbox/idp/compat/BaseActivity;
.source "ErrorActivity.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    }
.end annotation


# static fields
.field public static final ARG_ERROR_TYPE:Ljava/lang/String; = "ARG_ERROR_TYPE"

.field public static final ARG_GAMER_TAG:Ljava/lang/String; = "ARG_GAMER_TAG"

.field public static final RESULT_TRY_AGAIN:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activityResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->activityResult:I

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 113
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->removePage()V

    .line 115
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->finish()V

    .line 116
    return-void
.end method

.method public onClickCloseHeader()V
    .locals 4

    .prologue
    .line 61
    sget-object v2, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->TAG:Ljava/lang/String;

    const-string v3, "onClickCloseHeader"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 64
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "ARG_ERROR_TYPE"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->fromId(I)Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    move-result-object v0

    .line 67
    .local v0, "errorScreen":Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackClose(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->finish()V

    .line 69
    return-void
.end method

.method public onClickedLeftButton()V
    .locals 5

    .prologue
    .line 73
    sget-object v2, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->TAG:Ljava/lang/String;

    const-string v3, "onClickedLeftButton"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ARG_ERROR_TYPE"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->fromId(I)Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    move-result-object v1

    .line 75
    .local v1, "errorScreen":Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    sget-object v2, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->BAN:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    if-ne v1, v2, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackGoToEnforcement(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V

    .line 81
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    sget-object v4, Lcom/microsoft/xbox/idp/model/Const;->URL_ENFORCEMENT_XBOX_COM:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackTryAgain(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V

    .line 90
    const/4 v2, 0x1

    iput v2, p0, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->activityResult:I

    .line 91
    iget v2, p0, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->activityResult:I

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->setResult(I)V

    .line 92
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->finish()V

    goto :goto_0
.end method

.method public onClickedRightButton()V
    .locals 4

    .prologue
    .line 98
    sget-object v2, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->TAG:Ljava/lang/String;

    const-string v3, "onClickedRightButton"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 101
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "ARG_ERROR_TYPE"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->fromId(I)Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    move-result-object v0

    .line 104
    .local v0, "errorScreen":Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackRightButton(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->finish()V

    .line 107
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    sget-object v2, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v2, Lcom/microsoft/xbox/idp/R$layout;->xbid_activity_error:I

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 40
    .local v1, "intent":Landroid/content/Intent;
    sget v2, Lcom/microsoft/xbox/idp/R$id;->xbid_header_fragment:I

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureHeaderFragment(Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z

    .line 42
    const-string v2, "ARG_ERROR_TYPE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    const-string v2, "ARG_ERROR_TYPE"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->fromId(I)Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    move-result-object v0

    .line 44
    .local v0, "errorScreen":Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    if-eqz v0, :cond_0

    .line 45
    invoke-static {p0, v0}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureErrorFragment(Lcom/microsoft/xbox/idp/compat/BaseActivity;Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)Z

    .line 46
    invoke-static {p0, v0}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureErrorButtonsFragment(Lcom/microsoft/xbox/idp/compat/BaseActivity;Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)Z

    .line 49
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackPageView(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V

    .line 57
    .end local v0    # "errorScreen":Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    :goto_0
    return-void

    .line 52
    .restart local v0    # "errorScreen":Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    :cond_0
    sget-object v2, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->TAG:Ljava/lang/String;

    const-string v3, "Incorrect error type was provided"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    .end local v0    # "errorScreen":Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    :cond_1
    sget-object v2, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->TAG:Ljava/lang/String;

    const-string v3, "No error type was provided"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
