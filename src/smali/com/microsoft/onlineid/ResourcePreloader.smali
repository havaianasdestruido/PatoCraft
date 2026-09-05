.class public Lcom/microsoft/onlineid/ResourcePreloader;
.super Ljava/lang/Object;
.source "ResourcePreloader.java"


# static fields
.field private static final INT_PRELOAD_URI:Ljava/lang/String; = "https://signup.live-int.com/SignupPreload"

.field private static final PROD_PRELOAD_URI:Ljava/lang/String; = "https://signup.live.com/SignupPreload"

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "ResourcePreloader"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/ResourcePreloader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/microsoft/onlineid/ResourcePreloader;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static addWebViewClient(Landroid/webkit/WebView;)V
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 58
    new-instance v0, Lcom/microsoft/onlineid/ResourcePreloader$1;

    invoke-direct {v0}, Lcom/microsoft/onlineid/ResourcePreloader$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 81
    return-void
.end method

.method private static buildUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cobrandId"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v1, "https://signup.live.com/SignupPreload"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "cobrandid"

    .line 93
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 94
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/Uris;->appendMarketQueryString(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static preloadSignup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cobrandId"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 40
    .local v2, "webView":Landroid/webkit/WebView;
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 41
    .local v0, "settings":Landroid/webkit/WebSettings;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 42
    invoke-static {p0, p1}, Lcom/microsoft/onlineid/ResourcePreloader;->buildUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 47
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 48
    return-void
.end method
