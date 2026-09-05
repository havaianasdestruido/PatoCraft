.class public Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;
.super Landroid/app/Activity;
.source "WebFlowActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebChromeClient;,
        Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;
    }
.end annotation


# static fields
.field public static final ActionResolveInterrupt:Ljava/lang/String; = "com.microsoft.onlineid.internal.RESOLVE_INTERRUPT"

.field public static final ActionSignIn:Ljava/lang/String; = "com.microsoft.onlineid.internal.SIGN_IN"

.field public static final ActionSignUp:Ljava/lang/String; = "com.microsoft.onlineid.internal.SIGN_UP"

.field public static final AppPropertiesHeaderName:Ljava/lang/String; = "ms-identity-app-properties"

.field private static final JavaScriptOnBack:Ljava/lang/String; = "javascript:OnBack()"

.field private static final ScenarioAuthUrl:Ljava/lang/String; = "auth url"

.field private static final ScenarioSignIn:Ljava/lang/String; = "sign in"

.field private static final ScenarioSignUp:Ljava/lang/String; = "sign up"


# instance fields
.field private _javaScriptBridge:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

.field private _logHandler:Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

.field private _pageLoadTimingEvent:Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;

.field protected _progressView:Lcom/microsoft/onlineid/internal/ui/ProgressView;

.field private _scenario:Ljava/lang/String;

.field private _smsReceiver:Lcom/microsoft/onlineid/sms/SmsReceiver;

.field private _startUrl:Ljava/lang/String;

.field private _webTelemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

.field private _webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->overrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->showLoadingStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->showLoadingFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->onReceivedWebError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;)Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_javaScriptBridge:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    return-object v0
.end method

.method private configureWebView(Landroid/os/Bundle;Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "telemetryData"    # Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 312
    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->getIsWebTelemetryRequested()Z

    move-result v1

    .line 313
    .local v1, "telemetryRequested":Z
    new-instance v3, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    invoke-direct {v3, v1, p1}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;-><init>(ZLandroid/os/Bundle;)V

    iput-object v3, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webTelemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    .line 315
    new-instance v3, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webTelemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    invoke-direct {v3, p0, v4, p2}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;-><init>(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)V

    iput-object v3, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_javaScriptBridge:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    .line 316
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_javaScriptBridge:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    const-string v5, "external"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 320
    .local v2, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/transport/Transport;->buildUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/transport/Transport;->mergeUserAgentStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 323
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 324
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 326
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;

    invoke-direct {v0, p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;-><init>(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;)V

    .line 327
    .local v0, "hostedWebViewClient":Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_javaScriptBridge:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebViewClient;->getAssetVendor()Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->setAssetBundlePropertyProvider(Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;)V

    .line 328
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 330
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebChromeClient;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebChromeClient;-><init>(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 331
    return-void
.end method

.method private createInitialUI()Landroid/widget/RelativeLayout;
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/4 v10, -0x2

    const/4 v9, -0x1

    .line 211
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 212
    .local v1, "mainView":Landroid/widget/RelativeLayout;
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 218
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    .line 222
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "action":Ljava/lang/String;
    const-string v6, "com.microsoft.onlineid.internal.SIGN_IN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    const-string v4, "msa_sdk_webflow_webview_sign_in"

    .line 239
    .local v4, "webViewIdName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "id"

    .line 242
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 239
    invoke-virtual {v6, v4, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 244
    .local v3, "webViewId":I
    iget-object v6, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->setId(I)V

    .line 246
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 249
    .local v5, "webViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 250
    iget-object v6, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    new-instance v6, Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-direct {v6, p0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_progressView:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    .line 255
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 258
    .local v2, "progressWebViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 259
    iget-object v6, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_progressView:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    return-object v1

    .line 229
    .end local v2    # "progressWebViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "webViewId":I
    .end local v4    # "webViewIdName":Ljava/lang/String;
    .end local v5    # "webViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const-string v6, "com.microsoft.onlineid.internal.SIGN_UP"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    const-string v4, "msa_sdk_webflow_webview_sign_up"

    .restart local v4    # "webViewIdName":Ljava/lang/String;
    goto :goto_0

    .line 235
    .end local v4    # "webViewIdName":Ljava/lang/String;
    :cond_1
    const-string v4, "msa_sdk_webflow_webview_resolve_interrupt"

    .restart local v4    # "webViewIdName":Ljava/lang/String;
    goto :goto_0
.end method

.method private disableSavePasswordInWebView()V
    .locals 2

    .prologue
    .line 341
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 345
    :cond_0
    return-void
.end method

.method public static getFlowRequest(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/microsoft/onlineid/internal/AppProperties;Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 4
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "startUri"    # Landroid/net/Uri;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "appProperties"    # Lcom/microsoft/onlineid/internal/AppProperties;
    .param p4, "telemetryData"    # Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    .prologue
    .line 287
    new-instance v1, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$1;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    .line 290
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 291
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 292
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.microsoft.onlineid.app_properties"

    if-eqz p3, :cond_0

    .line 293
    invoke-virtual {p3}, Lcom/microsoft/onlineid/internal/AppProperties;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 294
    invoke-virtual {p4}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->asBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 287
    return-object v1

    .line 293
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeSendLogsHandler()V
    .locals 2

    .prologue
    .line 511
    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    new-instance v0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

    invoke-direct {v0, p0}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_logHandler:Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

    .line 517
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_logHandler:Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->setSendScreenshot(Z)V

    .line 519
    :cond_0
    return-void
.end method

.method private onReceivedWebError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 375
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 376
    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    const-string v1, "Performance"

    const-string v2, "No network connectivity"

    const-string v3, "During web flow"

    invoke-interface {v0, v1, v2, v3}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 383
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    new-instance v1, Lcom/microsoft/onlineid/exception/NetworkException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Error code: %d, Error description: %s, Failing url: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 390
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object p3, v4, v7

    const/4 v5, 0x2

    aput-object p4, v4, v5

    .line 387
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ApiResult;->setException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ApiResult;->asBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 383
    invoke-virtual {p0, v7, v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->sendResult(ILandroid/os/Bundle;)V

    .line 395
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->finish()V

    .line 396
    return-void
.end method

.method private overrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method private showLoadingFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_progressView:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->stopAnimation()Z

    .line 425
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_pageLoadTimingEvent:Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_pageLoadTimingEvent:Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;

    invoke-interface {v0}, Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;->end()V

    .line 429
    :cond_0
    return-void
.end method

.method private showLoadingStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_progressView:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->startAnimation()Z

    .line 410
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    const-string v1, "Rendering"

    const-string v2, "WebWizard page load"

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_scenario:Ljava/lang/String;

    .line 411
    invoke-interface {v0, v1, v2, v3}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->createTimedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;

    move-result-object v0

    .line 412
    invoke-interface {v0}, Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;->start()Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_pageLoadTimingEvent:Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;

    .line 413
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 489
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->sendResult(ILandroid/os/Bundle;)V

    .line 490
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_startUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    const-string v1, "javascript:OnBack()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 503
    :goto_0
    return-void

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->cancel()V

    goto :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->createInitialUI()Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->setContentView(Landroid/view/View;)V

    .line 95
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 96
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 97
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 99
    new-instance v4, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;-><init>(Landroid/os/Bundle;)V

    .line 101
    .local v4, "telemetryData":Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    invoke-direct {p0, p1, v4}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->configureWebView(Landroid/os/Bundle;Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)V

    .line 103
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->disableSavePasswordInWebView()V

    .line 105
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->initializeSendLogsHandler()V

    .line 108
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 109
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/microsoft/onlineid/internal/Uris;->appendMarketQueryString(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 111
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 113
    new-instance v6, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v5}, Lcom/microsoft/onlineid/internal/Uris;->appendPhoneDigits(Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 116
    :cond_0
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_startUrl:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Web flow starting URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_startUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 123
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v3, "customHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "action":Ljava/lang/String;
    const-string v6, "com.microsoft.onlineid.internal.SIGN_IN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.microsoft.onlineid.internal.SIGN_UP"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->appPropertiesFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/AppProperties;

    move-result-object v1

    .line 130
    .local v1, "appProperties":Lcom/microsoft/onlineid/internal/AppProperties;
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/AppProperties;->getServerValues()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/onlineid/internal/Uris;->mapToSortedQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "appPropertiesHeader":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 133
    const-string v6, "ms-identity-app-properties"

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v1    # "appProperties":Lcom/microsoft/onlineid/internal/AppProperties;
    .end local v2    # "appPropertiesHeader":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_startUrl:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 140
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_logHandler:Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_logHandler:Lcom/microsoft/onlineid/internal/log/SendLogsHandler;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->trySendLogsOnKeyEvent(I)V

    .line 533
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 190
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_smsReceiver:Lcom/microsoft/onlineid/sms/SmsReceiver;

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 148
    new-instance v1, Lcom/microsoft/onlineid/sms/SmsReceiver;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_javaScriptBridge:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    invoke-direct {v1, v2}, Lcom/microsoft/onlineid/sms/SmsReceiver;-><init>(Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;)V

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_smsReceiver:Lcom/microsoft/onlineid/sms/SmsReceiver;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 151
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_smsReceiver:Lcom/microsoft/onlineid/sms/SmsReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 199
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webTelemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 200
    return-void
.end method

.method public final onStart()V
    .locals 4

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 160
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.microsoft.onlineid.internal.SIGN_IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string v1, "sign in"

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_scenario:Ljava/lang/String;

    .line 181
    :goto_0
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Web wizard ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_scenario:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logScreenView(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 182
    return-void

    .line 165
    :cond_0
    const-string v1, "com.microsoft.onlineid.internal.SIGN_UP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const-string v1, "sign up"

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_scenario:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_1
    const-string v1, "com.microsoft.onlineid.internal.RESOLVE_INTERRUPT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    const-string v1, "auth url"

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_scenario:Ljava/lang/String;

    goto :goto_0

    .line 173
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    const-string v1, "not specified"

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_scenario:Ljava/lang/String;

    goto :goto_0

    .line 179
    :cond_3
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_scenario:Ljava/lang/String;

    goto :goto_0
.end method

.method public sendResult(ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/high16 v8, 0x10000

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 439
    new-instance v2, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 440
    .local v2, "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/ApiRequest;->getContinuation()Landroid/content/Intent;

    move-result-object v0

    .line 441
    .local v0, "continuation":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/ApiRequest;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v1

    .line 444
    .local v1, "receiver":Landroid/os/ResultReceiver;
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webTelemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->hasEvents()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 446
    new-instance v4, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v4, p2}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->_webTelemetryRecorder:Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;

    invoke-virtual {v4, v5}, Lcom/microsoft/onlineid/internal/ApiResult;->setWebFlowTelemetryFields(Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/ApiResult;->asBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 449
    :cond_0
    if-eqz v0, :cond_2

    if-ne p1, v6, :cond_2

    .line 451
    new-instance v4, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v4, p2}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v4}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V

    .line 468
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->finish()V

    .line 470
    if-ne p1, v6, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_1

    .line 480
    invoke-virtual {p0, v7, v7}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->overridePendingTransition(II)V

    .line 482
    :cond_1
    return-void

    .line 453
    :cond_2
    if-eqz v1, :cond_3

    .line 458
    invoke-virtual {v1, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 464
    :cond_3
    if-eqz p2, :cond_4

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    .line 465
    .local v3, "result":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 464
    .end local v3    # "result":Landroid/content/Intent;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method
