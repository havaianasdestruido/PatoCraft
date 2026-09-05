.class Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;
.super Ljava/lang/Object;
.source "AuthFlowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->onComplete(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 451
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateSaved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$100(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$100(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->clearCaches()V

    .line 454
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$200(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    move-result-object v0

    iput-boolean v4, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->createAccount:Z

    .line 455
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->MSA:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v2, Lcom/microsoft/xbox/idp/ui/MSAFragment;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/ui/MSAFragment;-><init>()V

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-virtual {v3}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$300(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 457
    :cond_0
    return-void
.end method
