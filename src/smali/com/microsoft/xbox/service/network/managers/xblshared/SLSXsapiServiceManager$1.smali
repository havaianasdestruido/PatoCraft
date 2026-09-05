.class Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;
.super Ljava/lang/Object;
.source "SLSXsapiServiceManager.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->addUserToFollowingList(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;

.field final synthetic val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$result:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;Ljava/util/concurrent/atomic/AtomicReference;Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;

    iput-object p2, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$result:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processResponse(ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V
    .locals 6
    .param p1, "httpStatus"    # I
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "headers"    # Lcom/microsoft/xbox/idp/util/HttpHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v2, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 124
    const/16 v1, 0xc8

    if-ge p1, v1, :cond_0

    const/16 v1, 0x12b

    if-gt p1, v1, :cond_1

    .line 125
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$result:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->setAddFollowingRequestStatus(Z)V

    .line 126
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$result:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 133
    monitor-exit v2

    .line 134
    return-void

    .line 128
    :cond_1
    const-class v1, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    invoke-static {p2, v1}, Lcom/microsoft/xbox/toolkit/GsonUtil;->deserializeJson(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    .line 129
    .local v0, "response":Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    .end local v0    # "response":Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
