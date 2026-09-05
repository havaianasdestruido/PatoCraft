.class Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge$1;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->handleSignInResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge$1;->this$0:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge$1;->this$0:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->access$000(Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;)Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->setIntent(Landroid/content/Intent;)V

    .line 276
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge$1;->this$0:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->access$000(Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;)Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowActivity;->recreate()V

    .line 277
    return-void
.end method
