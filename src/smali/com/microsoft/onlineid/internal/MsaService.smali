.class public Lcom/microsoft/onlineid/internal/MsaService;
.super Landroid/app/IntentService;
.source "MsaService.java"


# static fields
.field public static final ActionGetTicket:Ljava/lang/String; = "com.microsoft.onlineid.internal.GET_TICKET"

.field public static final ActionSignOut:Ljava/lang/String; = "com.microsoft.onlineid.internal.SIGN_OUT"

.field public static final ActionSignOutAllApps:Ljava/lang/String; = "com.microsoft.onlineid.internal.SIGN_OUT_ALL_APPS"

.field public static final ActionUpdateProfile:Ljava/lang/String; = "com.microsoft.onlineid.internal.UPDATE_PROFILE"


# instance fields
.field private _profileManager:Lcom/microsoft/onlineid/internal/profile/ProfileManager;

.field private _ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

.field private _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/microsoft/onlineid/internal/MsaService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 51
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/MsaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/microsoft/onlineid/internal/profile/ProfileManager;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/internal/profile/ProfileManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/MsaService;->_profileManager:Lcom/microsoft/onlineid/internal/profile/ProfileManager;

    .line 54
    new-instance v1, Lcom/microsoft/onlineid/internal/sts/TicketManager;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/internal/sts/TicketManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/MsaService;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    .line 55
    new-instance v1, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/MsaService;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 56
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    new-instance v13, Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/internal/MsaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-direct {v13, v1, v0}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 63
    .local v13, "request":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 66
    .local v10, "action":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v13}, Lcom/microsoft/onlineid/internal/ApiRequest;->getAccountPuid()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "puid":Ljava/lang/String;
    const-string v1, "com.microsoft.onlineid.internal.GET_TICKET"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/microsoft/onlineid/internal/MsaService;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    .line 71
    invoke-virtual {v13}, Lcom/microsoft/onlineid/internal/ApiRequest;->getScope()Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v3

    .line 72
    invoke-virtual {v13}, Lcom/microsoft/onlineid/internal/ApiRequest;->getClientPackageName()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-virtual {v13}, Lcom/microsoft/onlineid/internal/ApiRequest;->getFlowToken()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 75
    invoke-virtual {v13}, Lcom/microsoft/onlineid/internal/ApiRequest;->getCobrandingId()Ljava/lang/String;

    move-result-object v7

    .line 76
    invoke-virtual {v13}, Lcom/microsoft/onlineid/internal/ApiRequest;->getIsWebFlowTelemetryRequested()Z

    move-result v8

    .line 77
    invoke-virtual {v13}, Lcom/microsoft/onlineid/internal/ApiRequest;->getClientStateBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 69
    invoke-virtual/range {v1 .. v9}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Bundle;)Lcom/microsoft/onlineid/Ticket;

    move-result-object v14

    .line 79
    .local v14, "ticket":Lcom/microsoft/onlineid/Ticket;
    new-instance v1, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/ApiResult;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/microsoft/onlineid/internal/ApiResult;->addTicket(Lcom/microsoft/onlineid/Ticket;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V

    .line 129
    .end local v2    # "puid":Ljava/lang/String;
    .end local v14    # "ticket":Lcom/microsoft/onlineid/Ticket;
    :goto_0
    return-void

    .line 81
    .restart local v2    # "puid":Ljava/lang/String;
    :cond_0
    const-string v1, "com.microsoft.onlineid.internal.UPDATE_PROFILE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/microsoft/onlineid/internal/MsaService;->_profileManager:Lcom/microsoft/onlineid/internal/profile/ProfileManager;

    invoke-virtual {v13}, Lcom/microsoft/onlineid/internal/ApiRequest;->getAccountPuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/microsoft/onlineid/internal/ApiRequest;->getFlowToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->updateProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v1, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/ApiResult;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/exception/PromptNeededException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 108
    .end local v2    # "puid":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 110
    .local v11, "ex":Lcom/microsoft/onlineid/internal/exception/PromptNeededException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApiRequest with action "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " requires UI to complete."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v11}, Lcom/microsoft/onlineid/internal/exception/PromptNeededException;->getRequest()Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v1

    .line 112
    invoke-virtual {v13}, Lcom/microsoft/onlineid/internal/ApiRequest;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/onlineid/internal/ApiRequest;->setResultReceiver(Landroid/os/ResultReceiver;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v1

    .line 113
    invoke-virtual {v13}, Lcom/microsoft/onlineid/internal/ApiRequest;->isSdkRequest()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/microsoft/onlineid/internal/ApiRequest;->setIsSdkRequest(Z)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v1

    .line 114
    invoke-virtual {v1, v13}, Lcom/microsoft/onlineid/internal/ApiRequest;->setContinuation(Lcom/microsoft/onlineid/internal/ApiRequest;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v15

    .line 120
    .local v15, "uiRequest":Lcom/microsoft/onlineid/internal/ApiRequest;
    new-instance v1, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    invoke-direct {v1, v15}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;-><init>(Lcom/microsoft/onlineid/internal/ApiRequest;)V

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->buildActivity()Landroid/app/PendingIntent;

    move-result-object v12

    .line 121
    .local v12, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v13, v12}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendUINeeded(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 86
    .end local v11    # "ex":Lcom/microsoft/onlineid/internal/exception/PromptNeededException;
    .end local v12    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v15    # "uiRequest":Lcom/microsoft/onlineid/internal/ApiRequest;
    .restart local v2    # "puid":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v1, "com.microsoft.onlineid.internal.SIGN_OUT"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    new-instance v1, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v13, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V
    :try_end_1
    .catch Lcom/microsoft/onlineid/internal/exception/PromptNeededException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 123
    .end local v2    # "puid":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 125
    .local v11, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    invoke-interface {v1, v11}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApiRequest with action "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    invoke-virtual {v13, v11}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendFailure(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 93
    .end local v11    # "ex":Ljava/lang/Exception;
    .restart local v2    # "puid":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v1, "com.microsoft.onlineid.internal.SIGN_OUT_ALL_APPS"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/microsoft/onlineid/internal/MsaService;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeAccount(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/internal/MsaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->pushBackup(Landroid/content/Context;)V

    .line 101
    new-instance v1, Lcom/microsoft/onlineid/internal/ApiResult;

    invoke-direct {v1}, Lcom/microsoft/onlineid/internal/ApiResult;-><init>()V

    invoke-virtual {v13, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->sendSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V

    goto/16 :goto_0

    .line 105
    :cond_3
    new-instance v1, Lcom/microsoft/onlineid/exception/InternalException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/microsoft/onlineid/internal/exception/PromptNeededException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
.end method
