.class Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$3;
.super Ljava/lang/Object;
.source "FacebookManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$3;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$3;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "public_profile"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "user_friends"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$402(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Ljava/util/List;)Ljava/util/List;

    .line 102
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 103
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$3;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$502(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Lcom/facebook/CallbackManager;)Lcom/facebook/CallbackManager;

    .line 104
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$3;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-static {v2}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$500(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Lcom/facebook/CallbackManager;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$3;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-static {v3}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$600(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Lcom/facebook/FacebookCallback;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "h"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
