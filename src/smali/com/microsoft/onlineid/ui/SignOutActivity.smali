.class public Lcom/microsoft/onlineid/ui/SignOutActivity;
.super Landroid/app/Activity;
.source "SignOutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;
    }
.end annotation


# instance fields
.field private _isSignedOutOfThisAppOnly:Z

.field private _resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

.field private _userCid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/onlineid/ui/SignOutActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/ui/SignOutActivity;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/microsoft/onlineid/ui/SignOutActivity;->_isSignedOutOfThisAppOnly:Z

    return v0
.end method

.method static synthetic access$002(Lcom/microsoft/onlineid/ui/SignOutActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/onlineid/ui/SignOutActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity;->_isSignedOutOfThisAppOnly:Z

    return p1
.end method

.method static synthetic access$100(Lcom/microsoft/onlineid/ui/SignOutActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/ui/SignOutActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/SignOutActivity;->_userCid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/onlineid/ui/SignOutActivity;)Lcom/microsoft/onlineid/internal/ActivityResultSender;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/ui/SignOutActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/SignOutActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    return-object v0
.end method

.method private buildDialog()Landroid/app/AlertDialog;
    .locals 13

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/SignOutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "applicationContext":Landroid/content/Context;
    new-instance v6, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/SignOutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-direct {v6, v0, v9}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 64
    .local v6, "originalSignOutRequest":Lcom/microsoft/onlineid/internal/ApiRequest;
    new-instance v7, Lcom/microsoft/onlineid/internal/Resources;

    invoke-direct {v7, v0}, Lcom/microsoft/onlineid/internal/Resources;-><init>(Landroid/content/Context;)V

    .line 66
    .local v7, "resources":Lcom/microsoft/onlineid/internal/Resources;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/SignOutActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const-string v10, "sign_out_custom_content_view"

    .line 67
    invoke-virtual {v7, v10}, Lcom/microsoft/onlineid/internal/Resources;->getLayout(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 68
    .local v4, "customContentView":Landroid/widget/RelativeLayout;
    const-string v9, "signOutCheckBox"

    invoke-virtual {v7, v9}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 69
    .local v3, "checkBox":Landroid/widget/CheckBox;
    const-string v9, "sign_out_dialog_checkbox"

    .line 70
    invoke-virtual {v7, v9}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 71
    invoke-virtual {v6}, Lcom/microsoft/onlineid/internal/ApiRequest;->getAccountName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 69
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v8, Lcom/microsoft/onlineid/ui/SignOutActivity$1;

    invoke-direct {v8, p0, v6, v3, v0}, Lcom/microsoft/onlineid/ui/SignOutActivity$1;-><init>(Lcom/microsoft/onlineid/ui/SignOutActivity;Lcom/microsoft/onlineid/internal/ApiRequest;Landroid/widget/CheckBox;Landroid/content/Context;)V

    .line 98
    .local v8, "signOutOnClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/microsoft/onlineid/ui/SignOutActivity$2;

    invoke-direct {v2, p0}, Lcom/microsoft/onlineid/ui/SignOutActivity$2;-><init>(Lcom/microsoft/onlineid/ui/SignOutActivity;)V

    .line 108
    .local v2, "cancelOnClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Lcom/microsoft/onlineid/ui/SignOutActivity$3;

    invoke-direct {v5, p0}, Lcom/microsoft/onlineid/ui/SignOutActivity$3;-><init>(Lcom/microsoft/onlineid/ui/SignOutActivity;)V

    .line 119
    .local v5, "onCancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const-string v10, "sign_out_dialog_title"

    .line 121
    invoke-virtual {v7, v10}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const-string v10, "sign_out_dialog_button_sign_out"

    .line 123
    invoke-virtual {v7, v10}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 122
    invoke-virtual {v9, v10, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const-string v10, "sign_out_dialog_button_cancel"

    .line 126
    invoke-virtual {v7, v10}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 125
    invoke-virtual {v9, v10, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 128
    invoke-virtual {v9, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9
.end method

.method public static getSignOutIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "accountPuid"    # Ljava/lang/String;
    .param p2, "accountCid"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "callerState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountPuid:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    .line 189
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    .line 190
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.user_cid"

    .line 191
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.client_state"

    .line 192
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;-><init>()V

    .line 193
    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 188
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/ui/SignOutActivity;->requestWindowFeature(I)Z

    .line 48
    new-instance v1, Lcom/microsoft/onlineid/internal/ActivityResultSender;

    sget-object v2, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Account:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    invoke-direct {v1, p0, v2}, Lcom/microsoft/onlineid/internal/ActivityResultSender;-><init>(Landroid/app/Activity;Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;)V

    iput-object v1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    .line 51
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/SignOutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.user_cid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity;->_userCid:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lcom/microsoft/onlineid/ui/SignOutActivity;->buildDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 54
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 55
    return-void
.end method
