.class public Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;
.super Landroid/app/Activity;
.source "AccountPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;,
        Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;
    }
.end annotation


# static fields
.field public static final ActionPickAccount:Ljava/lang/String; = "com.microsoft.onlineid.internal.PICK_ACCOUNT"

.field public static final AddAccountRequest:I = 0x1

.field private static final BackgroundDimValue:F = 0.5f


# instance fields
.field private _accountList:Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

.field private _accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

.field private _cidExclusionList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _resources:Lcom/microsoft/onlineid/internal/Resources;

.field private _resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountList:Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->launchAddAccountFlow()V

    return-void
.end method

.method static synthetic access$200(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;
    .param p1, "x1"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->onAccountPicked(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    return-void
.end method

.method static synthetic access$300(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_cidExclusionList:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->onException(Ljava/lang/Exception;)V

    return-void
.end method

.method public static getAccountPickerIntent(Landroid/content/Context;Ljava/util/ArrayList;Lcom/microsoft/onlineid/internal/AppProperties;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p2, "appProperties"    # Lcom/microsoft/onlineid/internal/AppProperties;
    .param p3, "clientPackageName"    # Ljava/lang/String;
    .param p4, "clientState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/onlineid/internal/AppProperties;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "cidExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    .line 421
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.internal.PICK_ACCOUNT"

    .line 422
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->CidsToExclude:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    .line 423
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.app_properties"

    .line 424
    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/AppProperties;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.client_package_name"

    .line 425
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.client_state"

    .line 426
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;-><init>()V

    .line 428
    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/util/List;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v1

    .line 429
    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/AppProperties;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v1

    .line 430
    invoke-virtual {v1, p3}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v1

    .line 431
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 427
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 420
    return-object v0
.end method

.method private getStatusBarHeight()I
    .locals 6

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 372
    .local v0, "resourceId":I
    const/4 v1, 0x0

    .line 373
    .local v1, "statusBarHeight":I
    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 377
    :cond_0
    return v1
.end method

.method private launchAddAccountFlow()V
    .locals 7

    .prologue
    .line 217
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v2

    const-string v3, "SDK"

    const-string v4, "Initiate account add"

    const-string v5, "via account picker"

    invoke-interface {v2, v3, v4, v5}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 224
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 225
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.microsoft.onlineid.app_properties"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 226
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.microsoft.onlineid.client_state"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 223
    invoke-static {v2, v3, v4, v5}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getSignInIntent(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 230
    .local v0, "addAccountIntent":Landroid/content/Intent;
    new-instance v2, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance v3, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$AddAccountFlowReceiver;-><init>(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Landroid/os/Handler;)V

    .line 231
    invoke-virtual {v2, v3}, Lcom/microsoft/onlineid/internal/ApiRequest;->setResultReceiver(Landroid/os/ResultReceiver;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v1

    .line 233
    .local v1, "addAccountRequest":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 234
    return-void
.end method

.method private onAccountPicked(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    .locals 1
    .param p1, "account"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putLimitedUserAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    .line 244
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->finish()V

    .line 245
    return-void
.end method

.method private onException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    .line 255
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->finish()V

    .line 256
    return-void
.end method

.method private setupWindow()V
    .locals 10

    .prologue
    .line 337
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->requestWindowFeature(I)Z

    .line 339
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 340
    .local v7, "window":Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 341
    .local v5, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 344
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 347
    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getStatusBarHeight()I

    move-result v9

    sub-int v0, v8, v9

    .line 348
    .local v0, "accountPickerHeight":I
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v9, "accountPickerMargin"

    invoke-virtual {v8, v9}, Lcom/microsoft/onlineid/internal/Resources;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v6

    .line 349
    .local v6, "sideMargin":I
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v1, v8, v6

    .line 352
    .local v1, "accountPickerWidth":I
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v9, "maxAccountPickerHeight"

    invoke-virtual {v8, v9}, Lcom/microsoft/onlineid/internal/Resources;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v3

    .line 353
    .local v3, "maxAccountPickerHeight":I
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v9, "maxAccountPickerWidth"

    invoke-virtual {v8, v9}, Lcom/microsoft/onlineid/internal/Resources;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v4

    .line 356
    .local v4, "maxAccountPickerWidth":I
    if-le v0, v3, :cond_0

    move v8, v3

    :goto_0
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 357
    if-le v1, v4, :cond_1

    .end local v4    # "maxAccountPickerWidth":I
    :goto_1
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 361
    if-le v0, v3, :cond_2

    const/16 v8, 0x11

    :goto_2
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 362
    const/high16 v8, 0x3f000000    # 0.5f

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 363
    invoke-virtual {v7, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 364
    return-void

    .restart local v4    # "maxAccountPickerWidth":I
    :cond_0
    move v8, v0

    .line 356
    goto :goto_0

    :cond_1
    move v4, v1

    .line 357
    goto :goto_1

    .line 361
    .end local v4    # "maxAccountPickerWidth":I
    :cond_2
    const/16 v8, 0x50

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    new-instance v7, Lcom/microsoft/onlineid/internal/Resources;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/microsoft/onlineid/internal/Resources;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    .line 107
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->setupWindow()V

    .line 108
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v8, "webflow_header"

    invoke-virtual {v7, v8}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/microsoft/onlineid/internal/ui/AccountHeaderView;->applyStyle(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    new-instance v7, Lcom/microsoft/onlineid/internal/ActivityResultSender;

    sget-object v8, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Account:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    invoke-direct {v7, p0, v8}, Lcom/microsoft/onlineid/internal/ActivityResultSender;-><init>(Landroid/app/Activity;Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;)V

    iput-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    .line 114
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v8, "account_picker"

    invoke-virtual {v7, v8}, Lcom/microsoft/onlineid/internal/Resources;->getLayout(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->setContentView(I)V

    .line 116
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.microsoft.onlineid.client_state"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 120
    .local v5, "clientState":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 121
    .local v3, "bodyText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "clientPackageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v7, "com.microsoft.msa.authenticator"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 127
    const-string v7, "com.microsoft.onlineid.account_picker_body"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    :cond_0
    if-nez v3, :cond_1

    .line 133
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v8, "account_picker_list_body"

    invoke-virtual {v7, v8}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    :cond_1
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v8, "account_picker_list_header"

    .line 137
    invoke-virtual {v7, v8}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;

    .line 136
    invoke-static {v7, v3, v8}, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;->buildWithBaseScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;

    move-result-object v2

    .line 141
    .local v2, "baseScreenFragment":Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    .line 142
    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    iget-object v8, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v9, "accountPickerBase"

    .line 143
    invoke-virtual {v8, v9}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 144
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 146
    new-instance v7, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    invoke-direct {v7, p0}, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountList:Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    .line 147
    new-instance v7, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    .line 150
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    sget-object v8, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->CidsToExclude:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    .line 151
    invoke-virtual {v8}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 152
    .local v6, "excluded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_cidExclusionList:Ljava/util/Set;

    .line 154
    if-eqz v6, :cond_2

    .line 156
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_cidExclusionList:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 159
    :cond_2
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v8, "listAccounts"

    invoke-virtual {v7, v8}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 160
    .local v0, "accounts":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    iget-object v8, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v9, "add_account_tile"

    .line 161
    invoke-virtual {v8, v9}, Lcom/microsoft/onlineid/internal/Resources;->getLayout(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    .line 160
    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 165
    .local v1, "addAccountView":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 166
    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountList:Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    new-instance v7, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;

    invoke-direct {v7, p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;-><init>(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 191
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 384
    .local v0, "inflater":Landroid/view/MenuInflater;
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v2, "action_dismiss_account_picker"

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/Resources;->getMenu(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 385
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 391
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_resources:Lcom/microsoft/onlineid/internal/Resources;

    const-string v2, "action_dismiss"

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->finish()V

    .line 395
    const/4 v0, 0x1

    .line 399
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 197
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_cidExclusionList:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getFilteredAccounts(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 200
    .local v0, "accounts":Ljava/util/Set;, "Ljava/util/Set<Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;>;"
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d active account(s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 202
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->launchAddAccountFlow()V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->_accountList:Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->setContent(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 100
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    const-string v1, "Account picker"

    invoke-interface {v0, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logScreenView(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 101
    return-void
.end method
