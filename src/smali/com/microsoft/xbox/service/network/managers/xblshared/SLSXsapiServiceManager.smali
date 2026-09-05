.class public Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;
.super Ljava/lang/Object;
.source "SLSXsapiServiceManager.java"

# interfaces
.implements Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SearchGamertag(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    .locals 9
    .param p1, "gamertag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 512
    sget-object v6, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v7, "SearchGamertag"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    sget-object v7, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v6, v7, :cond_0

    :goto_0
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 516
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getGamertagSearchUrlFormat()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v5, "GET"

    const-string v6, ""

    invoke-direct {v4, v5, v3, v6}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "2"

    invoke-static {v4, v5}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v1

    .line 519
    .local v1, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-class v4, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    invoke-static {v1, v4}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    .line 520
    .local v2, "result":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    return-object v2

    .end local v1    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v2    # "result":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 513
    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v6, 0xf

    invoke-direct {v4, v6, v7, v0}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    throw v4
.end method

.method public addFriendToShareIdentitySetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "xuid"    # Ljava/lang/String;
    .param p2, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 66
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "addFriendToShareIdentitySetting"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 68
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getAddFriendsToShareIdentityUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v6, "POST"

    const-string v7, ""

    invoke-direct {v3, v6, v2, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "4"

    invoke-static {v3, v6}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 71
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 73
    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xcc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 74
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 75
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 67
    goto :goto_0
.end method

.method public addUserToFavoriteList(Ljava/lang/String;)Z
    .locals 8
    .param p1, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 80
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "addUserToFavoriteList"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 82
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileFavoriteListUrl()Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "add"

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v6, "POST"

    const-string v7, ""

    invoke-direct {v3, v6, v2, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "1"

    invoke-static {v3, v6}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 85
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 87
    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xcc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 88
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 89
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 81
    goto :goto_0
.end method

.method public addUserToFollowingList(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    .locals 8
    .param p1, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 108
    sget-object v4, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v7, "addUserToFollowingList"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    sget-object v7, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v4, v7, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 110
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->updateProfileFollowingListUrl()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "add"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v5, "POST"

    const-string v7, ""

    invoke-direct {v4, v5, v3, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "1"

    invoke-static {v4, v5}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 113
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 115
    new-instance v2, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    invoke-direct {v2}, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;-><init>()V

    .line 117
    .local v2, "result":Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 118
    .local v1, "notifier":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/util/Pair<Ljava/lang/Boolean;Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;>;>;"
    new-instance v4, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 120
    new-instance v4, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;-><init>(Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;Ljava/util/concurrent/atomic/AtomicReference;Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;)V

    invoke-virtual {v0, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->getResponseAsync(Lcom/microsoft/xbox/idp/util/HttpCall$Callback;)V

    .line 137
    monitor-enter v1

    .line 139
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 142
    :catch_0
    move-exception v4

    .line 144
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    return-object v4

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "notifier":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/util/Pair<Ljava/lang/Boolean;Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;>;>;"
    .end local v2    # "result":Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    move v4, v6

    .line 109
    goto :goto_0

    .line 144
    .restart local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .restart local v1    # "notifier":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/util/Pair<Ljava/lang/Boolean;Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;>;>;"
    .restart local v2    # "result":Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    .restart local v3    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public addUserToMutedList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "xuid"    # Ljava/lang/String;
    .param p2, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 280
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "addUserToMutedList"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 282
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getMutedServiceUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "PUT"

    const-string v6, ""

    invoke-direct {v3, v4, v2, v6}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 285
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 287
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 288
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 289
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 281
    goto :goto_0
.end method

.method public addUserToNeverList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "xuid"    # Ljava/lang/String;
    .param p2, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 238
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "addUserToNeverList"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 240
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileNeverListUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "PUT"

    const-string v6, ""

    invoke-direct {v3, v4, v2, v6}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 243
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 245
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 246
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 247
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 239
    goto :goto_0
.end method

.method public getFamilySettings(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/FamilySettings;
    .locals 1
    .param p1, "xuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFriendFinderSettings()Lcom/microsoft/xbox/xle/app/FriendFinderSettings;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 322
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "getFriendFinderSettings"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v5, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v5, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 324
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getFriendFinderSettingsUrl()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v5, "GET"

    const-string v6, ""

    invoke-direct {v3, v5, v2, v6, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 328
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-class v3, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;

    .line 329
    .local v1, "result":Lcom/microsoft/xbox/xle/app/FriendFinderSettings;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 330
    return-object v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/xle/app/FriendFinderSettings;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 323
    goto :goto_0
.end method

.method public getMutedListInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;
    .locals 7
    .param p1, "xuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 266
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "getMutedListInfo"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 268
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 269
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getMutedServiceUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "GET"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 273
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-class v3, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    .line 274
    .local v1, "result":Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 275
    return-object v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 267
    goto :goto_0

    :cond_1
    move v3, v5

    .line 268
    goto :goto_1
.end method

.method public getMyShortCircuitProfile()Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x2

    .line 423
    sget-object v4, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "getMyShortCircuitProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    sget-object v5, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 426
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getSCDRpsTicket()Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "rpsTicket":Ljava/lang/String;
    const-string v4, "Expected to have acquired a ticket already"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 429
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 430
    new-instance v4, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {v4, v6, v7}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v4

    .line 424
    .end local v2    # "rpsTicket":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 433
    .restart local v2    # "rpsTicket":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getShortCircuitProfileUrlFormat()Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "url":Ljava/lang/String;
    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "GET"

    const-string v5, ""

    invoke-direct {v0, v4, v3, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-string v4, "PS-MSAAuthTicket"

    invoke-virtual {v0, v4, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v4, "PS-ApplicationId"

    const-string v5, "44445A65-4A71-4083-8C90-041A22856E69"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v4, "PS-Scenario"

    const-string v5, "Minecraft TCUI Friend Finder"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseBodySync(Lcom/microsoft/xbox/idp/util/HttpCall;)Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 444
    new-instance v4, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {v4, v6, v7}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v4

    .line 447
    :cond_2
    invoke-static {v1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;->parseJson(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

    move-result-object v4

    return-object v4
.end method

.method public getNeverListInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;
    .locals 7
    .param p1, "xuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 224
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "getNeverListInfo"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 226
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 227
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileNeverListUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "GET"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 231
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-class v3, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    .line 232
    .local v1, "result":Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 233
    return-object v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 225
    goto :goto_0

    :cond_1
    move v3, v5

    .line 226
    goto :goto_1
.end method

.method public getPeopleHubFriendFinderState()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 335
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v4, "getPeopleHubFriendFinderState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v4, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 337
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getPeopleHubFriendFinderStateUrlFormat()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "GET"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 340
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-string v3, "Accept-Language"

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getLegalLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v3, "X-XBL-Contract-Version"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v3, "X-XBL-Market"

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-class v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    .line 345
    .local v1, "result":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 346
    return-object v1

    .line 336
    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPeopleHubRecommendations()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 407
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v4, "getPeopleHubRecommendations"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v4, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 409
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getPeopleHubRecommendationsUrlFormat()Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "GET"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 412
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-string v3, "Accept-Language"

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getLegalLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v3, "X-XBL-Contract-Version"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v3, "X-XBL-Market"

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-class v3, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    .line 417
    .local v1, "result":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 418
    return-object v1

    .line 408
    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPrivacySetting(Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;
    .locals 7
    .param p1, "settingId"    # Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 351
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "getPrivacySetting"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 353
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileSettingUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "GET"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "4"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 357
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-class v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;

    .line 358
    .local v1, "result":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 359
    return-object v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 352
    goto :goto_0
.end method

.method public getProfilePreferredColor(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 199
    sget-object v2, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "getProfilePreferredColor"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 202
    new-instance v2, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v3, "GET"

    const-string v4, ""

    invoke-direct {v2, v3, p1, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 204
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-class v2, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;

    invoke-static {v0, v2}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;

    .line 205
    .local v1, "result":Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 206
    return-object v1

    .line 200
    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProfileSummaryInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    .locals 7
    .param p1, "xuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 152
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "getProfileSummaryInfo"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 154
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 155
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileSummaryUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "GET"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "2"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 159
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-class v3, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    .line 160
    .local v1, "result":Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 161
    return-object v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 153
    goto :goto_0

    :cond_1
    move v3, v5

    .line 154
    goto :goto_1
.end method

.method public getUserProfileInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    .locals 6
    .param p1, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 180
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v4, "getUserProfileInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v4, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 182
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getUserProfileInfoUrl()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "POST"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "2"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 185
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 187
    const-class v3, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    .line 188
    .local v1, "result":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 189
    return-object v1

    .line 181
    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getUserProfilePrivacySettings()Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 211
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v4, "getUserProfilePrivacySettings"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v4, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 213
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getUserProfileSettingUrlFormat()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "GET"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "4"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 217
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-class v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;

    .line 218
    .local v1, "result":Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 219
    return-object v1

    .line 212
    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getXTokenPrivileges()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public removeFriendFromShareIdentitySetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "xuid"    # Ljava/lang/String;
    .param p2, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 52
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "removeFriendFromShareIdentitySetting"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 54
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getRemoveUsersFromShareIdentityUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v6, "POST"

    const-string v7, ""

    invoke-direct {v3, v6, v2, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "4"

    invoke-static {v3, v6}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 57
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 59
    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xcc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 60
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 61
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 53
    goto :goto_0
.end method

.method public removeUserFromFavoriteList(Ljava/lang/String;)Z
    .locals 8
    .param p1, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 94
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "removeUserFromFavoriteList"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 96
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileFavoriteListUrl()Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "remove"

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v6, "POST"

    const-string v7, ""

    invoke-direct {v3, v6, v2, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "1"

    invoke-static {v3, v6}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 99
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 101
    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xcc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 102
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 103
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 95
    goto :goto_0
.end method

.method public removeUserFromFollowingList(Ljava/lang/String;)Z
    .locals 8
    .param p1, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 166
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "removeUserFromFollowingList"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 168
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->updateProfileFollowingListUrl()Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "remove"

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v6, "POST"

    const-string v7, ""

    invoke-direct {v3, v6, v2, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "1"

    invoke-static {v3, v6}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 171
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 173
    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xcc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 174
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 175
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 167
    goto :goto_0
.end method

.method public removeUserFromMutedList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "xuid"    # Ljava/lang/String;
    .param p2, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 294
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "removeUserFromMutedList"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 296
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getMutedServiceUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "DELETE"

    const-string v6, ""

    invoke-direct {v3, v4, v2, v6}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 299
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 301
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 302
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 303
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 295
    goto :goto_0
.end method

.method public removeUserFromNeverList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "xuid"    # Ljava/lang/String;
    .param p2, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 252
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "removeUserFromNeverList"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 254
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProfileNeverListUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "DELETE"

    const-string v6, ""

    invoke-direct {v3, v4, v2, v6}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 257
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 259
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 260
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 261
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 253
    goto :goto_0
.end method

.method public sendShortCircuitProfile(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;
    .locals 8
    .param p1, "request"    # Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x2

    .line 452
    sget-object v4, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "sendShortCircuitProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    sget-object v5, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 455
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getSCDRpsTicket()Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, "rpsTicket":Ljava/lang/String;
    const-string v4, "Expected to have acquired a ticket already"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 458
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 459
    new-instance v4, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {v4, v6, v7}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v4

    .line 453
    .end local v2    # "rpsTicket":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 462
    .restart local v2    # "rpsTicket":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getShortCircuitProfileUrlFormat()Ljava/lang/String;

    move-result-object v3

    .line 464
    .local v3, "url":Ljava/lang/String;
    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "POST"

    const-string v5, ""

    invoke-direct {v0, v4, v3, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-string v4, "PS-MSAAuthTicket"

    invoke-virtual {v0, v4, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v4, "PS-ApplicationId"

    const-string v5, "44445A65-4A71-4083-8C90-041A22856E69"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v4, "PS-Scenario"

    const-string v5, "Minecraft TCUI Friend Finder"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 471
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseBodySync(Lcom/microsoft/xbox/idp/util/HttpCall;)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 474
    new-instance v4, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {v4, v6, v7}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v4

    .line 477
    :cond_2
    invoke-static {v1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;->parseJson(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

    move-result-object v4

    return-object v4
.end method

.method public setFriendFinderOptInStatus(Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;)Z
    .locals 9
    .param p1, "type"    # Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;
    .param p2, "optInStatus"    # Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 378
    sget-object v4, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v7, "setFriendFinderOptInStatus"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    sget-object v7, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v4, v7, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 380
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getSetFriendFinderOptInStatusUrlFormat()Ljava/lang/String;

    move-result-object v4

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "url":Ljava/lang/String;
    sget-object v4, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->OptedIn:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    if-ne p2, v4, :cond_1

    const-string v1, "?status=OptedIn&waitForUpdate=true"

    .line 383
    .local v1, "query":Ljava/lang/String;
    :goto_1
    new-instance v4, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v7, "PUT"

    invoke-direct {v4, v7, v3, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "1"

    invoke-static {v4, v7}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 384
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-string v4, "Content-Length"

    const-string v7, "0"

    invoke-virtual {v0, v4, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-array v4, v5, [Ljava/lang/Integer;

    const/16 v5, 0xcc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v2

    .line 387
    .local v2, "result":Z
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 388
    return v2

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "query":Ljava/lang/String;
    .end local v2    # "result":Z
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    move v4, v6

    .line 379
    goto :goto_0

    .line 381
    .restart local v3    # "url":Ljava/lang/String;
    :cond_1
    const-string v1, "?status=OptedOut"

    goto :goto_1
.end method

.method public setPrivacySettings(Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;)Z
    .locals 8
    .param p1, "settings"    # Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 364
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "setPrivacySettings"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 366
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getUserProfileSettingUrlFormat()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v6, "PUT"

    const-string v7, ""

    invoke-direct {v3, v6, v2, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "4"

    invoke-static {v3, v6}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 369
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-static {p1}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;->getPrivacySettingRequestBody(Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 371
    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xc9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 372
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 373
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 365
    goto :goto_0
.end method

.method public submitFeedback(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "xuid"    # Ljava/lang/String;
    .param p2, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 308
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "submitFeedback"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 310
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getSubmitFeedbackUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "POST"

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "101"

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 313
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 315
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xca

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 316
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 317
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 309
    goto :goto_0
.end method

.method public updatePhoneContacts(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;
    .locals 8
    .param p1, "request"    # Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x2

    .line 482
    sget-object v4, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "updatePhoneContacts"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    sget-object v5, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 485
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getSCDRpsTicket()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "rpsTicket":Ljava/lang/String;
    const-string v4, "Expected to have acquired a ticket already"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 488
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 489
    new-instance v4, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {v4, v6, v7}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v4

    .line 483
    .end local v2    # "rpsTicket":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 492
    .restart local v2    # "rpsTicket":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getUploadingPhoneContactsUrlFormat()Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, "url":Ljava/lang/String;
    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v4, "POST"

    const-string v5, ""

    invoke-direct {v0, v4, v3, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    const-string v4, "X-TicketToken"

    invoke-virtual {v0, v4, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v4, "X-AppId"

    const-string v5, "44445A65-4A71-4083-8C90-041A22856E69"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v4, "X-Scenario"

    const-string v5, "Minecraft TCUI Friend Finder"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 501
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseBodySync(Lcom/microsoft/xbox/idp/util/HttpCall;)Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 504
    new-instance v4, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {v4, v6, v7}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw v4

    .line 507
    :cond_2
    invoke-static {v1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;->parseJson(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;

    move-result-object v4

    return-object v4
.end method

.method public updateThirdPartyToken(Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;Ljava/lang/String;)Z
    .locals 8
    .param p1, "type"    # Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 393
    sget-object v3, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->TAG:Ljava/lang/String;

    const-string v6, "updateThirdPartyToken"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-object v6, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-eq v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 395
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getUpdateThirdPartyTokenUrlFormat()Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v6, "PUT"

    const-string v7, ""

    invoke-direct {v3, v6, v2, v7}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "1"

    invoke-static {v3, v6}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 398
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    new-instance v3, Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;

    invoke-direct {v3, p2}, Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;->getUpdateThirdPartyTokenRequestBody(Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 400
    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xcc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z

    move-result v1

    .line 401
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->throwIfNullOrFalse(Ljava/lang/Object;)V

    .line 402
    return v1

    .end local v0    # "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    .end local v1    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 394
    goto :goto_0
.end method
