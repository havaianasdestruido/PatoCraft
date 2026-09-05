.class Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;
.super Ljava/lang/Object;
.source "DelegatedAuthJob.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v7, 0x1

    .line 106
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Service connected"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v5, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-static {p2}, Lcom/microsoft/xbox/authenticate/IDelegateKeyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/microsoft/xbox/authenticate/IDelegateKeyService;

    move-result-object v6

    iput-object v6, v5, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->keyService:Lcom/microsoft/xbox/authenticate/IDelegateKeyService;

    .line 109
    :try_start_0
    iget-object v5, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    iget-object v5, v5, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->keyService:Lcom/microsoft/xbox/authenticate/IDelegateKeyService;

    invoke-interface {v5}, Lcom/microsoft/xbox/authenticate/IDelegateKeyService;->requestDelegateRPSTicketSilently()Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;

    move-result-object v3

    .line 111
    .local v3, "result":Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;
    iget-object v5, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-static {v5}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$100(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->xboxAppIsInstalled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    iget-object v5, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-static {v5}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$100(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->getXboxAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v5}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$202(Landroid/content/Intent;)Landroid/content/Intent;

    .line 113
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$200()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.microsoft.xbox.action.ACTION_SIGNIN"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    :cond_0
    invoke-virtual {v3}, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->getErrorCode()I

    move-result v1

    .line 117
    .local v1, "errorCode":I
    if-eqz v1, :cond_3

    .line 118
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Error getting RPS ticket"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eq v1, v7, :cond_1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 120
    :cond_1
    iget-object v5, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-static {v5}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$300(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-interface {v5, v6}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;->onUiNeeded(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)V

    .line 153
    .end local v1    # "errorCode":I
    .end local v3    # "result":Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;
    :goto_0
    return-void

    .line 124
    .restart local v1    # "errorCode":I
    .restart local v3    # "result":Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 138
    const-string v2, "UNKNOWN_ERROR"

    .line 141
    .local v2, "errorString":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$000()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    sget-object v7, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Ticket:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v7, v8}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackFailure(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;Ljava/lang/Exception;)V

    .line 142
    iget-object v5, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-static {v5}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$300(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6, v7}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;->onFailure(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;Ljava/lang/Exception;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v1    # "errorCode":I
    .end local v2    # "errorString":Ljava/lang/String;
    .end local v3    # "result":Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Callback failure"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 151
    iget-object v5, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-static {v5}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$300(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-interface {v5, v6, v0}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;->onFailure(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;Ljava/lang/Exception;)V

    goto :goto_0

    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "errorCode":I
    .restart local v3    # "result":Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;
    :pswitch_0
    :try_start_1
    const-string v2, "RESULT_UNKNOWN_PACKAGE"

    .line 127
    .restart local v2    # "errorString":Ljava/lang/String;
    goto :goto_1

    .line 129
    .end local v2    # "errorString":Ljava/lang/String;
    :pswitch_1
    const-string v2, "RESULT_INVALID_PACKAGE"

    .line 130
    .restart local v2    # "errorString":Ljava/lang/String;
    goto :goto_1

    .line 132
    .end local v2    # "errorString":Ljava/lang/String;
    :pswitch_2
    const-string v2, "RESULT_INVALID_SIGNATURE"

    .line 133
    .restart local v2    # "errorString":Ljava/lang/String;
    goto :goto_1

    .line 135
    .end local v2    # "errorString":Ljava/lang/String;
    :pswitch_3
    const-string v2, "RESULT_INVALID_APPURI"

    .line 136
    .restart local v2    # "errorString":Ljava/lang/String;
    goto :goto_1

    .line 145
    .end local v2    # "errorString":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->getTicket()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "ticket":Ljava/lang/String;
    iget-object v5, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-static {v5}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$300(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;->this$0:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-interface {v5, v6, v4}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;->onTicketAcquired(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 157
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method
