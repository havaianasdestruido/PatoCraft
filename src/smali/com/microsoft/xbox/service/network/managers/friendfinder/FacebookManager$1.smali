.class Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;
.super Ljava/lang/Object;
.source "FacebookManager.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookLoginCancel(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->loadPeopleHubFriendFinderState()V

    .line 71
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->resetFacebookToken(Z)V

    .line 72
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2
    .param p1, "e"    # Lcom/facebook/FacebookException;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->loadPeopleHubFriendFinderState()V

    .line 77
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->resetFacebookToken(Z)V

    .line 78
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 3
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$002(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Lcom/facebook/AccessToken;)Lcom/facebook/AccessToken;

    .line 50
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-static {v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$000(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-static {v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$100(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$102(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Z)Z

    .line 53
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    iget-object v2, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-static {v2}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$000(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)Lcom/facebook/AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$202(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    .line 55
    .local v0, "parameters":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->FACEBOOK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putFriendFinderType(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    .line 57
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    const-class v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderLinkScreen;

    invoke-virtual {v1, v2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "parameters":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-static {v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->access$300(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)V

    goto :goto_0

    .line 58
    .restart local v0    # "parameters":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
