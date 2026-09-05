.class Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebFlowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HostedWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;


# direct methods
.method private constructor <init>(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebChromeClient;->this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;
    .param p2, "x1"    # Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$1;

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebChromeClient;-><init>(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 619
    :try_start_0
    iget-object v1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    new-instance v3, Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebChromeClient;->this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 620
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 621
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$HostedWebChromeClient;->this$0:Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->access$500(Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;)Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->setIsOutOfBandInterrupt()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    const/4 v1, 0x1

    .line 627
    :goto_0
    return v1

    .line 624
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v1, "resultMsg is not a WebViewTransport"

    invoke-static {v2, v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    move v1, v2

    .line 627
    goto :goto_0
.end method
