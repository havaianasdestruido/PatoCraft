.class public Lcom/microsoft/cll/android/HostSettings;
.super Lcom/microsoft/cll/android/AbstractSettings;
.source "HostSettings.java"


# instance fields
.field private final baseUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/PartA;)V
    .locals 2
    .param p1, "clientTelemetry"    # Lcom/microsoft/cll/android/ClientTelemetry;
    .param p2, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p3, "iKey"    # Ljava/lang/String;
    .param p4, "partA"    # Lcom/microsoft/cll/android/PartA;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p4}, Lcom/microsoft/cll/android/AbstractSettings;-><init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Lcom/microsoft/cll/android/PartA;)V

    .line 12
    const-string v0, "https://settings.data.microsoft.com/settings/v2.0/telemetry/"

    iput-object v0, p0, Lcom/microsoft/cll/android/HostSettings;->baseUrl:Ljava/lang/String;

    .line 18
    const-string v0, "AndroidCll-HostSettings"

    iput-object v0, p0, Lcom/microsoft/cll/android/HostSettings;->TAG:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->HOSTSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

    iput-object v0, p0, Lcom/microsoft/cll/android/HostSettings;->ETagSettingName:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/cll/android/HostSettings;->disableUploadOn404:Z

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://settings.data.microsoft.com/settings/v2.0/telemetry/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/HostSettings;->endpoint:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?os="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p4, Lcom/microsoft/cll/android/PartA;->osName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&osVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p4, Lcom/microsoft/cll/android/PartA;->osVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&deviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p4, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    invoke-virtual {v1}, Lcom/microsoft/telemetry/extensions/device;->getDeviceClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p4, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    invoke-virtual {v1}, Lcom/microsoft/telemetry/extensions/device;->getLocalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/HostSettings;->queryParam:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public ParseSettings(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "resultJson"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    if-eqz p1, :cond_2

    :try_start_0
    const-string v5, "settings"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 37
    const-string v5, "settings"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 38
    .local v1, "jsonSettings":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 39
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 42
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "value":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 46
    iget-object v5, p0, Lcom/microsoft/cll/android/HostSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v6, p0, Lcom/microsoft/cll/android/HostSettings;->TAG:Ljava/lang/String;

    const-string v7, "Bad Settings Format"

    invoke-interface {v5, v6, v7}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    const-string v5, "_"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v2, v4}, Lcom/microsoft/cll/android/SettingsStore;->updateHostSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v1    # "jsonSettings":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/microsoft/cll/android/HostSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v6, p0, Lcom/microsoft/cll/android/HostSettings;->TAG:Ljava/lang/String;

    const-string v7, "An exception occurred while parsing settings"

    invoke-interface {v5, v6, v7}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 60
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/microsoft/cll/android/HostSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v6, p0, Lcom/microsoft/cll/android/HostSettings;->TAG:Ljava/lang/String;

    const-string v7, "Json result did not contain a \"settings\" field!"

    invoke-interface {v5, v6, v7}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
