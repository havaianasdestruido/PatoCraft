.class public Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
.super Ljava/lang/Object;
.source "WebFlowTelemetryData.java"


# instance fields
.field protected final _values:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;-><init>(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-eqz p1, :cond_0

    .end local p1    # "bundle":Landroid/os/Bundle;
    :goto_0
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    .line 34
    return-void

    .line 33
    .restart local p1    # "bundle":Landroid/os/Bundle;
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "bundle":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCallingAppPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallingAppVersionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_app_version_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsWebTelemetryRequested()Z
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.web_telemetry_requested"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getWasPrecachingEnabled()Z
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.web_telemetry_precaching_enabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCallingAppPackageName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_package_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-object p0
.end method

.method public setCallingAppVersionName(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    .locals 2
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.client_app_version_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-object p0
.end method

.method public setIsWebTelemetryRequested(Z)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    .locals 2
    .param p1, "requested"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.web_telemetry_requested"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    return-object p0
.end method

.method public setWasPrecachingEnabled(Z)Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebFlowTelemetryData;->_values:Landroid/os/Bundle;

    const-string v1, "com.microsoft.onlineid.web_telemetry_precaching_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    return-object p0
.end method
