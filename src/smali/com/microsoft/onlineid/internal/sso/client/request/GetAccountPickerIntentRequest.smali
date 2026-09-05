.class public Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountPickerIntentRequest;
.super Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;
.source "GetAccountPickerIntentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest",
        "<",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# instance fields
.field private final _cidExclusionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p4, "onlineIdConfiguration"    # Lcom/microsoft/onlineid/OnlineIdConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/onlineid/OnlineIdConfiguration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "cidExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 41
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountPickerIntentRequest;->_cidExclusionList:Ljava/util/ArrayList;

    .line 42
    iput-object p4, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountPickerIntentRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .line 43
    return-void
.end method


# virtual methods
.method public performRequestTask()Landroid/app/PendingIntent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountPickerIntentRequest;->getDefaultCallingParams()Landroid/os/Bundle;

    move-result-object v1

    .line 51
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "com.microsoft.onlineid.cid_exclusion_list"

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountPickerIntentRequest;->_cidExclusionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 53
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountPickerIntentRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountPickerIntentRequest;->_onlineIdConfiguration:Lcom/microsoft/onlineid/OnlineIdConfiguration;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/OnlineIdConfiguration;->asBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->appPropertiesToBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountPickerIntentRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    invoke-interface {v2, v1}, Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;->getAccountPickerIntent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->checkForErrors(Landroid/os/Bundle;)V

    .line 61
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->pendingIntentFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic performRequestTask()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/GetAccountPickerIntentRequest;->performRequestTask()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
