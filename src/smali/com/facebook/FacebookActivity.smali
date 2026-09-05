.class public Lcom/facebook/FacebookActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "FacebookActivity.java"


# static fields
.field private static final API_EC_DIALOG_CANCEL:I = 0x1069

.field private static FRAGMENT_TAG:Ljava/lang/String;

.field public static PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;


# instance fields
.field private singleFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "PassThrough"

    sput-object v0, Lcom/facebook/FacebookActivity;->PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;

    .line 57
    const-string v0, "SingleFragment"

    sput-object v0, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private static final getRedirectUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handlePassThroughError()V
    .locals 4

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 129
    .local v2, "requestIntent":Landroid/content/Intent;
    invoke-static {v2}, Lcom/facebook/internal/NativeProtocol;->getMethodArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 130
    .local v0, "errorResults":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/facebook/internal/NativeProtocol;->getExceptionFromErrorData(Landroid/os/Bundle;)Lcom/facebook/FacebookException;

    move-result-object v1

    .line 132
    .local v1, "exception":Lcom/facebook/FacebookException;
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/facebook/FacebookActivity;->sendResult(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 133
    return-void
.end method

.method private handlePassThroughUrl(Ljava/lang/String;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 136
    if-eqz p1, :cond_6

    invoke-static {}, Lcom/facebook/FacebookActivity;->getRedirectUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 137
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 138
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 139
    .local v7, "values":Landroid/os/Bundle;
    invoke-virtual {v6}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 141
    iget-object v8, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    instance-of v8, v8, Lcom/facebook/login/LoginFragment;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    check-cast v8, Lcom/facebook/login/LoginFragment;

    .line 142
    invoke-virtual {v8, v7}, Lcom/facebook/login/LoginFragment;->validateChallengeParam(Landroid/os/Bundle;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 143
    :cond_0
    new-instance v8, Lcom/facebook/FacebookException;

    const-string v9, "Invalid state parameter"

    invoke-direct {v8, v9}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10, v8}, Lcom/facebook/FacebookActivity;->sendResult(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 146
    :cond_1
    const-string v8, "error"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "error":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 148
    const-string v8, "error_type"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_2
    const-string v8, "error_msg"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "errorMessage":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 153
    const-string v8, "error_message"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    :cond_3
    if-nez v3, :cond_4

    .line 156
    const-string v8, "error_description"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    :cond_4
    const-string v8, "error_code"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "errorCodeString":Ljava/lang/String;
    const/4 v1, -0x1

    .line 160
    .local v1, "errorCode":I
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 162
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 168
    :cond_5
    :goto_0
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, -0x1

    if-ne v1, v8, :cond_7

    .line 170
    invoke-virtual {p0, v7, v10}, Lcom/facebook/FacebookActivity;->sendResult(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 182
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "errorCode":I
    .end local v2    # "errorCodeString":Ljava/lang/String;
    .end local v3    # "errorMessage":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/os/Bundle;
    :cond_6
    :goto_1
    return-void

    .line 163
    .restart local v0    # "error":Ljava/lang/String;
    .restart local v1    # "errorCode":I
    .restart local v2    # "errorCodeString":Ljava/lang/String;
    .restart local v3    # "errorMessage":Ljava/lang/String;
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "values":Landroid/os/Bundle;
    :catch_0
    move-exception v4

    .line 164
    .local v4, "ex":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    goto :goto_0

    .line 171
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_7
    if-eqz v0, :cond_9

    const-string v8, "access_denied"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "OAuthAccessDeniedException"

    .line 172
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 173
    :cond_8
    new-instance v8, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v8}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-virtual {p0, v10, v8}, Lcom/facebook/FacebookActivity;->sendResult(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_1

    .line 174
    :cond_9
    const/16 v8, 0x1069

    if-ne v1, v8, :cond_a

    .line 175
    new-instance v8, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v8}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-virtual {p0, v10, v8}, Lcom/facebook/FacebookActivity;->sendResult(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_1

    .line 177
    :cond_a
    new-instance v5, Lcom/facebook/FacebookRequestError;

    invoke-direct {v5, v1, v0, v3}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    .local v5, "requestError":Lcom/facebook/FacebookRequestError;
    new-instance v8, Lcom/facebook/FacebookServiceException;

    invoke-direct {v8, v5, v3}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    invoke-virtual {p0, v10, v8}, Lcom/facebook/FacebookActivity;->sendResult(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_1
.end method


# virtual methods
.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 109
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 112
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    sget v4, Lcom/facebook/R$layout;->com_facebook_activity_layout:I

    invoke-virtual {p0, v4}, Lcom/facebook/FacebookActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 72
    .local v2, "intent":Landroid/content/Intent;
    sget-object v4, Lcom/facebook/FacebookActivity;->PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/facebook/FacebookActivity;->handlePassThroughError()V

    .line 103
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 78
    .local v3, "manager":Landroid/support/v4/app/FragmentManager;
    sget-object v4, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 80
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_1

    .line 81
    const-string v4, "FacebookDialogFragment"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    new-instance v0, Lcom/facebook/internal/FacebookDialogFragment;

    invoke-direct {v0}, Lcom/facebook/internal/FacebookDialogFragment;-><init>()V

    .line 83
    .local v0, "dialogFragment":Lcom/facebook/internal/FacebookDialogFragment;
    invoke-virtual {v0, v6}, Lcom/facebook/internal/FacebookDialogFragment;->setRetainInstance(Z)V

    .line 84
    sget-object v4, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/internal/FacebookDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 86
    move-object v1, v0

    .line 102
    .end local v0    # "dialogFragment":Lcom/facebook/internal/FacebookDialogFragment;
    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 87
    :cond_2
    const-string v4, "DeviceShareDialogFragment"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 88
    new-instance v0, Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-direct {v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;-><init>()V

    .line 89
    .local v0, "dialogFragment":Lcom/facebook/share/internal/DeviceShareDialogFragment;
    invoke-virtual {v0, v6}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->setRetainInstance(Z)V

    .line 90
    const-string v4, "content"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {v0, v4}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->setShareContent(Lcom/facebook/share/model/ShareContent;)V

    .line 91
    sget-object v4, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 92
    move-object v1, v0

    .line 93
    goto :goto_1

    .line 94
    .end local v0    # "dialogFragment":Lcom/facebook/share/internal/DeviceShareDialogFragment;
    :cond_3
    new-instance v1, Lcom/facebook/login/LoginFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/facebook/login/LoginFragment;-><init>()V

    .line 95
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v1, v6}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    .line 96
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    sget v5, Lcom/facebook/R$id;->com_facebook_fragment_container:I

    sget-object v6, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    .line 97
    invoke-virtual {v4, v5, v1, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 98
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 117
    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "url":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/facebook/FacebookActivity;->handlePassThroughUrl(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public sendResult(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 2
    .param p1, "results"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 187
    .local v1, "resultIntent":Landroid/content/Intent;
    if-nez p2, :cond_0

    .line 188
    const/4 v0, -0x1

    .line 189
    .local v0, "resultCode":I
    invoke-static {v1, p1}, Lcom/facebook/login/LoginManager;->setSuccessResult(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 197
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/facebook/FacebookActivity;->setResult(ILandroid/content/Intent;)V

    .line 198
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->finish()V

    .line 199
    return-void

    .line 191
    .end local v0    # "resultCode":I
    :cond_0
    const/4 v0, 0x0

    .line 192
    .restart local v0    # "resultCode":I
    invoke-static {v1, p1, p2}, Lcom/facebook/internal/NativeProtocol;->createProtocolResultIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method
