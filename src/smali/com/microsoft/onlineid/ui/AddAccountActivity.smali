.class public Lcom/microsoft/onlineid/ui/AddAccountActivity;
.super Landroid/app/Activity;
.source "AddAccountActivity.java"


# static fields
.field protected static final AccountAddedRequest:I = 0x2

.field public static final ActionAddAccount:Ljava/lang/String; = "com.microsoft.onlineid.internal.ADD_ACCOUNT"

.field public static final ActionSignUpAccount:Ljava/lang/String; = "com.microsoft.onlineid.internal.SIGN_UP_ACCOUNT"

.field protected static final AddPendingRequest:I = 0x1

.field protected static final NoRequest:I = -0x1

.field public static final PlatformLabel:Ljava/lang/String; = "platform"

.field public static final PlatformName:Ljava/lang/String; = "android"

.field protected static final SignInWebFlowRequest:I = 0x0

.field private static final WReplyLabel:Ljava/lang/String; = "wreply"


# instance fields
.field protected _accountPuid:Ljava/lang/String;

.field protected _handler:Landroid/os/Handler;

.field protected _pendingChildRequest:I

.field private _resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

.field protected _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    return-void
.end method

.method public static getSignInIntent(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "appProperties"    # Landroid/os/Bundle;
    .param p2, "clientPackageName"    # Ljava/lang/String;
    .param p3, "clientState"    # Landroid/os/Bundle;

    .prologue
    .line 485
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/microsoft/onlineid/ui/AddAccountActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.microsoft.onlineid.internal.ADD_ACCOUNT"

    .line 486
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.app_properties"

    .line 487
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.client_package_name"

    .line 488
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.client_state"

    .line 489
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    invoke-direct {v2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;-><init>()V

    .line 490
    invoke-virtual {v2, p1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 492
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public static getSignUpIntent(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "appProperties"    # Landroid/os/Bundle;
    .param p2, "clientPackageName"    # Ljava/lang/String;
    .param p3, "clientState"    # Landroid/os/Bundle;

    .prologue
    .line 460
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/microsoft/onlineid/ui/AddAccountActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.microsoft.onlineid.internal.SIGN_UP_ACCOUNT"

    .line 461
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.app_properties"

    .line 462
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.client_package_name"

    .line 463
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.client_state"

    .line 464
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    invoke-direct {v2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;-><init>()V

    .line 465
    invoke-virtual {v2, p1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 467
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method


# virtual methods
.method protected addCommonQueryStringParams(Landroid/net/Uri$Builder;)V
    .locals 5
    .param p1, "uriBuilder"    # Landroid/net/Uri$Builder;

    .prologue
    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/Resources;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "platformValue":Ljava/lang/String;
    const-string v2, "platform"

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 292
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 293
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-static {v2, v3}, Lcom/microsoft/onlineid/internal/Applications;->buildClientAppUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "appId":Ljava/lang/String;
    const-string v2, "client_id"

    invoke-virtual {p1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 295
    return-void
.end method

.method protected addTelemetryToResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 304
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    .line 307
    .local v0, "result":Lcom/microsoft/onlineid/internal/ApiResult;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->hasWebFlowTelemetryEvents()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putWebFlowTelemetryFields(Lcom/microsoft/onlineid/internal/ApiResult;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    .line 312
    .end local v0    # "result":Lcom/microsoft/onlineid/internal/ApiResult;
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 402
    iget v0, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    if-eq v0, v1, :cond_0

    .line 406
    iget v0, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->finishActivity(I)V

    .line 407
    iput v1, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    .line 410
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 411
    return-void
.end method

.method protected getLoginUri(Lcom/microsoft/onlineid/sts/ServerConfig;ZZ)Landroid/net/Uri;
    .locals 8
    .param p1, "serverConfig"    # Lcom/microsoft/onlineid/sts/ServerConfig;
    .param p2, "isCallerMsa"    # Z
    .param p3, "isWreply"    # Z

    .prologue
    .line 225
    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupWReplyMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 229
    .local v1, "endpoint":Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    :goto_0
    invoke-virtual {p1, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;->getUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;)Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 230
    .local v4, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {p0, v4}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->addCommonQueryStringParams(Landroid/net/Uri$Builder;)V

    .line 233
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->appPropertiesFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/AppProperties;

    move-result-object v0

    .line 234
    .local v0, "appProperties":Lcom/microsoft/onlineid/internal/AppProperties;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/AppProperties;->getServerQueryStringValues()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 236
    .local v3, "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 225
    .end local v0    # "appProperties":Lcom/microsoft/onlineid/internal/AppProperties;
    .end local v1    # "endpoint":Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    .end local v3    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_0
    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ConnectMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupWReplyPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ConnectPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    goto :goto_0

    .line 239
    .restart local v0    # "appProperties":Lcom/microsoft/onlineid/internal/AppProperties;
    .restart local v1    # "endpoint":Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    .restart local v4    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_3
    const/4 v2, 0x0

    .line 240
    .local v2, "loginUri":Landroid/net/Uri;
    if-eqz p3, :cond_4

    .line 242
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/onlineid/internal/Uris;->appendMarketQueryString(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 249
    :goto_2
    return-object v2

    .line 246
    :cond_4
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    goto :goto_2
.end method

.method protected getSignupUri(Lcom/microsoft/onlineid/sts/ServerConfig;Z)Landroid/net/Uri;
    .locals 7
    .param p1, "serverConfig"    # Lcom/microsoft/onlineid/sts/ServerConfig;
    .param p2, "isCallerMsa"    # Z

    .prologue
    .line 261
    if-eqz p2, :cond_0

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 265
    .local v1, "endpoint":Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    :goto_0
    invoke-virtual {p1, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;->getUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;)Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 266
    .local v3, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {p0, v3}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->addCommonQueryStringParams(Landroid/net/Uri$Builder;)V

    .line 269
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->appPropertiesFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/AppProperties;

    move-result-object v0

    .line 270
    .local v0, "appProperties":Lcom/microsoft/onlineid/internal/AppProperties;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/AppProperties;->getServerQueryStringValues()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 272
    .local v2, "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 261
    .end local v0    # "appProperties":Lcom/microsoft/onlineid/internal/AppProperties;
    .end local v1    # "endpoint":Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    .end local v2    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_0
    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    goto :goto_0

    .line 275
    .restart local v0    # "appProperties":Lcom/microsoft/onlineid/internal/AppProperties;
    .restart local v1    # "endpoint":Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    .restart local v3    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_1
    const-string v4, "wreply"

    const/4 v5, 0x1

    invoke-virtual {p0, p1, p2, v5}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getLoginUri(Lcom/microsoft/onlineid/sts/ServerConfig;ZZ)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 277
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 149
    iget v0, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    if-ne p1, v0, :cond_0

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    .line 155
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received activity result for unknown request code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received activity result for unknown request code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/String;)V

    .line 213
    :goto_0
    :pswitch_0
    return-void

    .line 160
    :pswitch_1
    invoke-virtual {p0, p3}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->addTelemetryToResult(Landroid/content/Intent;)V

    .line 162
    packed-switch p2, :pswitch_data_1

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sign in activity finished with unexpected result code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :pswitch_2
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 167
    :cond_1
    const-string v0, "Sign in flow finished successfully with no extras set."

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_2
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->getAccountPuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->onSetupSuccessful(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :pswitch_3
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/Exception;)V

    goto :goto_0

    .line 179
    :pswitch_4
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendCancelledResult()V

    goto :goto_0

    .line 195
    :pswitch_5
    packed-switch p2, :pswitch_data_2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account added activity finished with unexpected result code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :pswitch_6
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_accountPuid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendSuccessResult(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 162
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 195
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    new-instance v6, Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    .line 92
    .local v6, "serverConfig":Lcom/microsoft/onlineid/sts/ServerConfig;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "clientPackageName":Ljava/lang/String;
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/PackageInfoHelper;->isAuthenticatorApp(Ljava/lang/String;)Z

    move-result v4

    .line 96
    .local v4, "isCallerMsa":Z
    new-instance v11, Lcom/microsoft/onlineid/internal/ActivityResultSender;

    sget-object v12, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Account:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    invoke-direct {v11, p0, v12}, Lcom/microsoft/onlineid/internal/ActivityResultSender;-><init>(Landroid/app/Activity;Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;)V

    iput-object v11, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    .line 98
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-static {v11}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->appPropertiesFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/AppProperties;

    move-result-object v1

    .line 101
    .local v1, "appProperties":Lcom/microsoft/onlineid/internal/AppProperties;
    const-string v11, "client_web_telemetry_precaching_enabled"

    invoke-virtual {v1, v11}, Lcom/microsoft/onlineid/internal/AppProperties;->is(Ljava/lang/String;)Z

    move-result v5

    .line 102
    .local v5, "precachingEnabled":Z
    const-string v11, "client_web_telemetry_requested"

    invoke-virtual {v1, v11}, Lcom/microsoft/onlineid/internal/AppProperties;->is(Ljava/lang/String;)Z

    move-result v10

    .line 104
    .local v10, "webTelemetryRequested":Z
    const-string v11, "com.microsoft.onlineid.internal.SIGN_UP_ACCOUNT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 105
    invoke-virtual {p0, v6, v4}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getSignupUri(Lcom/microsoft/onlineid/sts/ServerConfig;Z)Landroid/net/Uri;

    move-result-object v7

    .line 108
    .local v7, "startUri":Landroid/net/Uri;
    :goto_0
    const-string v11, "com.microsoft.onlineid.internal.SIGN_UP_ACCOUNT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v9, "com.microsoft.onlineid.internal.SIGN_UP"

    .line 112
    .local v9, "webFlowAction":Ljava/lang/String;
    :goto_1
    new-instance v11, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    invoke-direct {v11}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;-><init>()V

    .line 113
    invoke-virtual {v11, v10}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setIsWebTelemetryRequested(Z)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v11

    .line 114
    invoke-virtual {v11, v2}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setCallingAppPackageName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v11

    .line 115
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v2}, Lcom/microsoft/onlineid/internal/PackageInfoHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setCallingAppVersionName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v11

    .line 116
    invoke-virtual {v11, v5}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->setWasPrecachingEnabled(Z)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    move-result-object v8

    .line 119
    .local v8, "telemetryData":Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 118
    invoke-static {v11, v7, v9, v1, v8}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getFlowRequest(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/microsoft/onlineid/internal/AppProperties;Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v11

    .line 123
    invoke-virtual {v11}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object v3

    .line 125
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v11, 0x10000

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    const/4 v11, 0x0

    iput v11, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_pendingChildRequest:I

    .line 129
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->hasInternetConnectivity(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 131
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v11

    const-string v12, "Performance"

    const-string v13, "No network connectivity"

    const-string v14, "At start of web flow"

    invoke-interface {v11, v12, v13, v14}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 136
    new-instance v11, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-direct {v11}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>()V

    invoke-virtual {p0, v11}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/Exception;)V

    .line 144
    :goto_2
    return-void

    .line 105
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v7    # "startUri":Landroid/net/Uri;
    .end local v8    # "telemetryData":Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    .end local v9    # "webFlowAction":Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    .line 106
    invoke-virtual {p0, v6, v4, v11}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getLoginUri(Lcom/microsoft/onlineid/sts/ServerConfig;ZZ)Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    .line 108
    .restart local v7    # "startUri":Landroid/net/Uri;
    :cond_1
    const-string v9, "com.microsoft.onlineid.internal.SIGN_IN"

    goto :goto_1

    .line 140
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v8    # "telemetryData":Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    .restart local v9    # "webFlowAction":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {p0, v3, v11}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 142
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    iput-object v11, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_handler:Landroid/os/Handler;

    goto :goto_2
.end method

.method protected onSetupFailure(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/Exception;)V

    .line 443
    return-void
.end method

.method protected onSetupSuccessful(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountPuid"    # Ljava/lang/String;

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->pushBackup(Landroid/content/Context;)V

    .line 425
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->finishActivity(I)V

    .line 430
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendSuccessResult(Ljava/lang/String;)V

    .line 432
    :cond_0
    return-void
.end method

.method protected sendCancelledResult()V
    .locals 3

    .prologue
    .line 389
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 390
    .local v0, "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->hasResultReceiver()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendUserCanceled()V

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->finish()V

    .line 397
    return-void
.end method

.method protected sendFailureResult(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 354
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 358
    const-string v1, "Failed to add account."

    invoke-static {v1, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 361
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 362
    .local v0, "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiRequest;->hasResultReceiver()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendFailure(Ljava/lang/Exception;)V

    .line 371
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->finish()V

    .line 372
    return-void

    .line 354
    .end local v0    # "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 368
    .restart local v0    # "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    :cond_1
    iget-object v1, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    goto :goto_1
.end method

.method protected sendFailureResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 381
    new-instance v0, Lcom/microsoft/onlineid/exception/InternalException;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/Exception;)V

    .line 382
    return-void
.end method

.method protected sendSuccessResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "accountPuid"    # Ljava/lang/String;

    .prologue
    .line 323
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 325
    new-instance v1, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 326
    .local v1, "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->hasResultReceiver()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    new-instance v2, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v2}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v2, p1}, Lcom/microsoft/onlineid/internal/ApiResult;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V

    .line 344
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->finish()V

    .line 345
    :goto_2
    return-void

    .line 323
    .end local v1    # "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 333
    .restart local v1    # "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    :cond_1
    new-instance v2, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAccount(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    .line 334
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    if-nez v0, :cond_2

    .line 337
    new-instance v2, Lcom/microsoft/onlineid/exception/InternalException;

    const-string v3, "AddAccountActivity could not acquire newly added account."

    invoke-direct {v2, v3}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/ui/AddAccountActivity;->sendFailureResult(Ljava/lang/Exception;)V

    goto :goto_2

    .line 341
    :cond_2
    iget-object v2, p0, Lcom/microsoft/onlineid/ui/AddAccountActivity;->_resultSender:Lcom/microsoft/onlineid/internal/ActivityResultSender;

    invoke-virtual {v2, v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putLimitedUserAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    goto :goto_1
.end method
