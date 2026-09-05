.class public Lcom/microsoft/onlineid/internal/ActivityResultSender;
.super Ljava/lang/Object;
.source "ActivityResultSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;
    }
.end annotation


# instance fields
.field protected final _activity:Landroid/app/Activity;

.field protected final _bundle:Landroid/os/Bundle;

.field protected _resultCode:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_activity:Landroid/app/Activity;

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    .line 92
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.result_type"

    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_state"

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_activity:Landroid/app/Activity;

    .line 97
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.microsoft.onlineid.client_state"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_resultCode:I

    .line 106
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    .line 107
    return-void
.end method

.method private putWebFlowTelemetryFields(Ljava/util/ArrayList;Z)Lcom/microsoft/onlineid/internal/ActivityResultSender;
    .locals 2
    .param p2, "wereAllEventsCaptured"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/microsoft/onlineid/internal/ActivityResultSender;"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.web_telemetry_events"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 161
    invoke-virtual {p0, p2}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putWereAllWebFlowTelemetryEventsCaptured(Z)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public putException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ActivityResultSender;
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->exceptionToBundle(Ljava/lang/Exception;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_resultCode:I

    .line 197
    return-object p0
.end method

.method public putLimitedUserAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Lcom/microsoft/onlineid/internal/ActivityResultSender;
    .locals 2
    .param p1, "account"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->limitedUserAccountToBundle(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_resultCode:I

    .line 119
    return-object p0
.end method

.method public putSignedOutCid(Ljava/lang/String;Z)Lcom/microsoft/onlineid/internal/ActivityResultSender;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "thisAppOnly"    # Z

    .prologue
    .line 146
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.user_cid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.signed_out_this_app_only"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    new-instance v0, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    const-string v1, "The account was signed out."

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v0

    return-object v0
.end method

.method public putTicket(Lcom/microsoft/onlineid/Ticket;)Lcom/microsoft/onlineid/internal/ActivityResultSender;
    .locals 2
    .param p1, "ticket"    # Lcom/microsoft/onlineid/Ticket;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->ticketToBundle(Lcom/microsoft/onlineid/Ticket;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_resultCode:I

    .line 132
    return-object p0
.end method

.method public putWebFlowTelemetryFields(Lcom/microsoft/onlineid/internal/ApiResult;)Lcom/microsoft/onlineid/internal/ActivityResultSender;
    .locals 2
    .param p1, "apiResult"    # Lcom/microsoft/onlineid/internal/ApiResult;

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiResult;->getWebFlowTelemetryEvents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiResult;->getWereAllWebFlowTelemetryEventsCaptured()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putWebFlowTelemetryFields(Ljava/util/ArrayList;Z)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v0

    return-object v0
.end method

.method public putWereAllWebFlowTelemetryEventsCaptured(Z)Lcom/microsoft/onlineid/internal/ActivityResultSender;
    .locals 2
    .param p1, "wereAllEventsCaptured"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.web_telemetry_all_events_captured"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    return-object p0
.end method

.method public set()V
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_activity:Landroid/app/Activity;

    iget v1, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_resultCode:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender;->_bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 208
    return-void
.end method
