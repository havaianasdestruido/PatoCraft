.class Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$5;
.super Ljava/lang/Object;
.source "AuthFlowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;)V
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
    .line 335
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$5;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 338
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stateSaved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$5;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$100(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$5;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$100(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 340
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 341
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "ARG_USER_PTR"

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$5;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$200(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    move-result-object v3

    iget-object v3, v3, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    invoke-virtual {v3}, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->getUserImplPtr()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 344
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$5;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-virtual {v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 345
    .local v1, "intentArgs":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 347
    const-string v2, "ARG_ALT_BUTTON_TEXT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    const-string v2, "ARG_ALT_BUTTON_TEXT"

    const-string v3, "ARG_ALT_BUTTON_TEXT"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_0
    const-string v2, "ARG_LOG_IN_BUTTON_TEXT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    const-string v2, "ARG_LOG_IN_BUTTON_TEXT"

    const-string v3, "ARG_LOG_IN_BUTTON_TEXT"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$5;->this$0:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    sget-object v3, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->INTRODUCING:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v4, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-direct {v4}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;-><init>()V

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v0, v5}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->access$300(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 358
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intentArgs":Landroid/os/Bundle;
    :cond_2
    return-void
.end method
