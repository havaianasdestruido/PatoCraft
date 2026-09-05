.class final Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$1;
.super Lcom/microsoft/onlineid/internal/ApiRequest;
.source "WebFlowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->getFlowRequest(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/microsoft/onlineid/internal/AppProperties;Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;)Lcom/microsoft/onlineid/internal/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 295
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public executeAsync()V
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity$1;->asIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 300
    return-void
.end method
