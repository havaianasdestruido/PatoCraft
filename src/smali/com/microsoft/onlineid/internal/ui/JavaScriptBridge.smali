.class public Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"


# static fields
.field private static final PPCRL_REQUEST_E_USER_CANCELED:Ljava/lang/String; = "80048842"


# instance fields
.field private _assetBundlePropertyProvider:Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;

.field private _isOutOfBandInterrupt:Z

.field private final _propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

.field private final _serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

.field private final _telemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

.field private final _ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

.field private final _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

.field private final _webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    .line 77
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_telemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    .line 78
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    .line 79
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    .line 80
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 81
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)V
    .locals 2
    .param p1, "webFlowActivity"    # Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;
    .param p2, "telemetryRecorder"    # Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;
    .param p3, "telemetryData"    # Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    .line 94
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_telemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    .line 95
    new-instance v1, Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;-><init>()V

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    .line 96
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    .local v0, "applicationContext":Landroid/content/Context;
    new-instance v1, Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    .line 98
    new-instance v1, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 99
    new-instance v1, Lcom/microsoft/onlineid/internal/sts/TicketManager;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/internal/sts/TicketManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    .line 101
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->populatePropertyBag()V

    .line 102
    invoke-direct {p0, p3}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->populateTelemetryData(Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;)Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    return-object v0
.end method

.method private static getKeyForName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;
    .locals 3
    .param p0, "propertyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 470
    if-nez p0, :cond_0

    .line 473
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 484
    :goto_0
    return-object v1

    .line 479
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private populateTelemetryData(Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)V
    .locals 6
    .param p1, "telemetryData"    # Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    .prologue
    .line 140
    :try_start_0
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->getCallingAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/microsoft/onlineid/internal/PackageInfoHelper;->isCurrentApp(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    .line 143
    .local v2, "isRequestorMaster":Z
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v4, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryAppVersion:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->getCallingAppVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v4, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryIsRequestorMaster:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    .line 145
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v4, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryNetworkType:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->getNetworkTypeForServerTelemetry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v4, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryPrecaching:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->getWasPrecachingEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "applicationContext":Landroid/content/Context;
    .end local v2    # "isRequestorMaster":Z
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Encountered error setting telemetry items in property bag."

    invoke-static {v3, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public FinalBack()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->cancel()V

    .line 167
    return-void
.end method

.method public FinalNext()V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 180
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v5, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ErrorCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v4, v5}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "errorCode":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 186
    const-string v4, "com.microsoft.onlineid.internal.SIGN_IN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.microsoft.onlineid.internal.SIGN_UP"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->handleSignInResult()V

    .line 234
    :goto_0
    return-void

    .line 190
    :cond_1
    const-string v4, "com.microsoft.onlineid.internal.RESOLVE_INTERRUPT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->handleInterruptResult()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v2

    .line 227
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Web flow with action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    const/4 v5, 0x1

    new-instance v6, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v6}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    .line 232
    invoke-virtual {v6, v2}, Lcom/microsoft/onlineid/internal/ApiResult;->setException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/onlineid/internal/ApiResult;->asBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 230
    invoke-virtual {v4, v5, v6}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->sendResult(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 196
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v4, Lcom/microsoft/onlineid/exception/InternalException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown Action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 199
    :cond_3
    iget-boolean v4, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_isOutOfBandInterrupt:Z

    if-eqz v4, :cond_4

    .line 201
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->cancel()V

    goto :goto_0

    .line 207
    :cond_4
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v5, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ExtendedErrorString:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v4, v5}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "extendedErrorString":Ljava/lang/String;
    if-eqz v3, :cond_5

    const-string v4, "80048842"

    .line 210
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 212
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->FinalBack()V

    goto :goto_0

    .line 217
    :cond_5
    new-instance v4, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;

    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v6, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ErrorString:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 218
    invoke-virtual {v5, v6}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v7, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ErrorURL:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 219
    invoke-virtual {v6, v7}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1, v3}, Lcom/microsoft/onlineid/sts/exception/InlineFlowException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public Property(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 392
    invoke-static {p1}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->getKeyForName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    move-result-object v0

    .line 394
    .local v0, "key":Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;
    if-nez v0, :cond_0

    .line 397
    const/4 v1, 0x0

    .line 405
    :goto_0
    return-object v1

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_assetBundlePropertyProvider:Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_assetBundlePropertyProvider:Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;

    invoke-interface {v1, v0}, Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;->handlesProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_assetBundlePropertyProvider:Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;

    invoke-interface {v1, v0}, Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;->getProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public Property(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "newPropertyValue"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 356
    invoke-static {p1}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->getKeyForName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    move-result-object v0

    .line 358
    .local v0, "key":Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;
    if-eqz v0, :cond_0

    .line 360
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_assetBundlePropertyProvider:Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_assetBundlePropertyProvider:Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;

    invoke-interface {v1, v0}, Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;->handlesProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_assetBundlePropertyProvider:Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;

    invoke-interface {v1, v0, p2}, Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;->setProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    invoke-virtual {v1, v0, p2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    .line 370
    sget-object v1, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->IsSignUp:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->IsSignUp:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    const-string v2, "Authenticator accounts"

    const-string v3, "Sign up success"

    invoke-interface {v1, v2, v3}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    goto :goto_0
.end method

.method public ReportTelemetry(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonEvent"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_telemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_telemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->recordEvent(Ljava/lang/String;)V

    .line 502
    :cond_0
    return-void
.end method

.method protected createAccountFromProperties(Lcom/microsoft/onlineid/internal/ui/PropertyBag;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .locals 8
    .param p1, "properties"    # Lcom/microsoft/onlineid/internal/ui/PropertyBag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/InternalException;
        }
    .end annotation

    .prologue
    .line 444
    sget-object v7, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->DAToken:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p1, v7}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v5

    .line 445
    .local v5, "tokenValue":Ljava/lang/String;
    sget-object v7, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->DASessionKey:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p1, v7}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "encodedSessionKey":Ljava/lang/String;
    sget-object v7, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->SigninName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p1, v7}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v6

    .line 447
    .local v6, "username":Ljava/lang/String;
    sget-object v7, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->CID:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p1, v7}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "cid":Ljava/lang/String;
    sget-object v7, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PUID:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p1, v7}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "puid":Ljava/lang/String;
    sget-object v7, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->DAToken:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p0, v7, v5}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->validateProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    .line 451
    sget-object v7, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->DASessionKey:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p0, v7, v1}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->validateProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    .line 452
    sget-object v7, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->SigninName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {p0, v7, v6}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->validateProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    .line 454
    const/4 v7, 0x2

    invoke-static {v1, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 455
    .local v3, "sessionKey":[B
    new-instance v4, Lcom/microsoft/onlineid/sts/DAToken;

    invoke-direct {v4, v5, v3}, Lcom/microsoft/onlineid/sts/DAToken;-><init>(Ljava/lang/String;[B)V

    .line 457
    .local v4, "token":Lcom/microsoft/onlineid/sts/DAToken;
    new-instance v7, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    invoke-direct {v7, v2, v0, v6, v4}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/sts/DAToken;)V

    return-object v7
.end method

.method protected handleInterruptResult()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;,
            Lcom/microsoft/onlineid/exception/InternalException;
        }
    .end annotation

    .prologue
    .line 297
    new-instance v8, Lcom/microsoft/onlineid/internal/ApiRequest;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-virtual {v10}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 298
    invoke-virtual {v8}, Lcom/microsoft/onlineid/internal/ApiRequest;->getAccountPuid()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "accountPuid":Ljava/lang/String;
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v8, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAccount(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    .line 300
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    if-nez v0, :cond_0

    .line 302
    new-instance v8, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    const-string v9, "Account was deleted before interrupt could be resolved."

    invoke-direct {v8, v9}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 306
    :cond_0
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v9, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->DAToken:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v8, v9}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v7

    .line 307
    .local v7, "tokenValue":Ljava/lang/String;
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v9, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->DASessionKey:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v8, v9}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "encodedSessionKey":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 314
    const/4 v8, 0x2

    :try_start_0
    invoke-static {v3, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 315
    .local v6, "sessionKey":[B
    new-instance v8, Lcom/microsoft/onlineid/sts/DAToken;

    invoke-direct {v8, v7, v6}, Lcom/microsoft/onlineid/sts/DAToken;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v8}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->setDAToken(Lcom/microsoft/onlineid/sts/DAToken;)V

    .line 316
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v8, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v6    # "sessionKey":[B
    :goto_0
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v9, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->STSInlineFlowToken:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v8, v9}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, "flowToken":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 334
    const-string v5, "Interrupt resolution did not return a flow token."

    .line 335
    .local v5, "message":Ljava/lang/String;
    const-string v8, "Interrupt resolution did not return a flow token."

    invoke-static {v8}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    .line 336
    const/4 v8, 0x0

    const-string v9, "Interrupt resolution did not return a flow token."

    invoke-static {v8, v9}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 339
    .end local v5    # "message":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    const/4 v9, -0x1

    new-instance v10, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v10}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v10, v4}, Lcom/microsoft/onlineid/internal/ApiResult;->setFlowToken(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v10

    invoke-virtual {v10}, Lcom/microsoft/onlineid/internal/ApiResult;->asBundle()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->sendResult(ILandroid/os/Bundle;)V

    .line 340
    return-void

    .line 318
    .end local v4    # "flowToken":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 320
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not decode Base64: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 321
    .restart local v5    # "message":Ljava/lang/String;
    invoke-static {v5}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    .line 322
    new-instance v8, Lcom/microsoft/onlineid/exception/InternalException;

    const-string v9, "Session Key from interrupt resolution was invalid."

    invoke-direct {v8, v9}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 327
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "message":Ljava/lang/String;
    :cond_2
    const-string v8, "WebWizard property bag did not have DAToken/SessionKey"

    invoke-static {v8}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleSignInResult()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/InternalException;,
            Lcom/microsoft/onlineid/exception/NetworkException;,
            Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;,
            Lcom/microsoft/onlineid/sts/exception/StsException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    invoke-virtual {p0, v5}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->createAccountFromProperties(Lcom/microsoft/onlineid/internal/ui/PropertyBag;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    .line 245
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->isNewAndInOutOfBandInterrupt()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    sget-object v5, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->Production:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    .line 249
    invoke-virtual {v6}, Lcom/microsoft/onlineid/sts/ServerConfig;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v6

    .line 248
    invoke-virtual {v5, v6}, Lcom/microsoft/onlineid/internal/configuration/Environment;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 250
    .local v3, "isProduction":Z
    new-instance v4, Lcom/microsoft/onlineid/SecurityScope;

    if-eqz v3, :cond_0

    const-string v5, "ssl.live.com"

    :goto_0
    const-string v6, "mbi_ssl"

    invoke-direct {v4, v5, v6}, Lcom/microsoft/onlineid/SecurityScope;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v4, "scope":Lcom/microsoft/onlineid/ISecurityScope;
    :try_start_0
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v4, v6}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->getTicketNoCache(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;)Lcom/microsoft/onlineid/Ticket;
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/exception/PromptNeededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v3    # "isProduction":Z
    .end local v4    # "scope":Lcom/microsoft/onlineid/ISecurityScope;
    :goto_1
    return-void

    .line 250
    .restart local v3    # "isProduction":Z
    :cond_0
    const-string v5, "ssl.live-int.com"

    goto :goto_0

    .line 259
    .restart local v4    # "scope":Lcom/microsoft/onlineid/ISecurityScope;
    :catch_0
    move-exception v1

    .line 261
    .local v1, "ex":Lcom/microsoft/onlineid/internal/exception/PromptNeededException;
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/exception/PromptNeededException;->getRequest()Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object v2

    .line 262
    .local v2, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Continuation:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 263
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 264
    const-string v5, "com.microsoft.onlineid.internal.RESOLVE_INTERRUPT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v5, "com.microsoft.onlineid.web_telemetry_requested"

    iget-object v6, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_telemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    invoke-virtual {v6}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->isRequested()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    new-instance v6, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge$1;

    invoke-direct {v6, p0, v2}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge$1;-><init>(Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;Landroid/content/Intent;)V

    invoke-virtual {v5, v6}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 283
    .end local v1    # "ex":Lcom/microsoft/onlineid/internal/exception/PromptNeededException;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isProduction":Z
    .end local v4    # "scope":Lcom/microsoft/onlineid/ISecurityScope;
    :cond_1
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v5, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    .line 284
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    const/4 v6, -0x1

    new-instance v7, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v7}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    .line 286
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/microsoft/onlineid/internal/ApiResult;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/microsoft/onlineid/internal/ApiResult;->asBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 284
    invoke-virtual {v5, v6, v7}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->sendResult(ILandroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected populatePropertyBag()V
    .locals 5

    .prologue
    .line 119
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_webFlowActivity:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    .local v0, "applicationContext":Landroid/content/Context;
    new-instance v1, Lcom/microsoft/onlineid/userdata/SignUpData;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/userdata/SignUpData;-><init>(Landroid/content/Context;)V

    .line 125
    .local v1, "signUpData":Lcom/microsoft/onlineid/userdata/SignUpData;
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v3, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfFirstName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/userdata/SignUpData;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v3, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfLastName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/userdata/SignUpData;->getLastName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v3, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfPhone:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/userdata/SignUpData;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_propertyBag:Lcom/microsoft/onlineid/internal/ui/PropertyBag;

    sget-object v3, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfCountryCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/userdata/SignUpData;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public setAssetBundlePropertyProvider(Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_assetBundlePropertyProvider:Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;

    .line 111
    return-void
.end method

.method setIsOutOfBandInterrupt()V
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->_isOutOfBandInterrupt:Z

    .line 414
    return-void
.end method

.method protected validateProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/InternalException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PropertyBag was missing required property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "message":Ljava/lang/String;
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    .line 429
    new-instance v1, Lcom/microsoft/onlineid/exception/InternalException;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method
