.class public Lcom/microsoft/cll/android/CllSettings;
.super Lcom/microsoft/cll/android/AbstractSettings;
.source "CllSettings.java"


# instance fields
.field private final settingsSync:Lcom/microsoft/cll/android/SettingsSync;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Lcom/microsoft/cll/android/SettingsSync;Lcom/microsoft/cll/android/PartA;)V
    .locals 2
    .param p1, "clientTelemetry"    # Lcom/microsoft/cll/android/ClientTelemetry;
    .param p2, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p3, "settingsSync"    # Lcom/microsoft/cll/android/SettingsSync;
    .param p4, "partA"    # Lcom/microsoft/cll/android/PartA;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p4}, Lcom/microsoft/cll/android/AbstractSettings;-><init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Lcom/microsoft/cll/android/PartA;)V

    .line 20
    iput-object p3, p0, Lcom/microsoft/cll/android/CllSettings;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    .line 21
    const-string v0, "AndroidCll-CllSettings"

    iput-object v0, p0, Lcom/microsoft/cll/android/CllSettings;->TAG:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->CLLSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

    iput-object v0, p0, Lcom/microsoft/cll/android/CllSettings;->ETagSettingName:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 23
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->CLLSETTINGSURL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsString(Lcom/microsoft/cll/android/SettingsStore$Settings;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/CllSettings;->endpoint:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?iKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p4, Lcom/microsoft/cll/android/PartA;->iKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&os="

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

    iput-object v0, p0, Lcom/microsoft/cll/android/CllSettings;->queryParam:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public ParseSettings(Lorg/json/JSONObject;)V
    .locals 14
    .param p1, "resultJson"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "settings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    const-string v0, "refreshInterval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v11, v0, 0x3c

    .line 38
    .local v11, "refreshInterval":I
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->SYNCREFRESHINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    if-eq v11, v0, :cond_0

    .line 40
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->SYNCREFRESHINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/microsoft/cll/android/CllSettings;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    iget-object v0, v0, Lcom/microsoft/cll/android/SettingsSync;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 42
    iget-object v13, p0, Lcom/microsoft/cll/android/CllSettings;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    iget-object v0, p0, Lcom/microsoft/cll/android/CllSettings;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    iget-object v0, v0, Lcom/microsoft/cll/android/SettingsSync;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/microsoft/cll/android/CllSettings;->settingsSync:Lcom/microsoft/cll/android/SettingsSync;

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->SYNCREFRESHINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 44
    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsLong(Lcom/microsoft/cll/android/SettingsStore$Settings;)J

    move-result-wide v2

    sget-object v4, Lcom/microsoft/cll/android/SettingsStore$Settings;->SYNCREFRESHINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 45
    invoke-static {v4}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsLong(Lcom/microsoft/cll/android/SettingsStore$Settings;)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v13, Lcom/microsoft/cll/android/SettingsSync;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    .line 49
    :cond_0
    const-string v0, "settings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 50
    .local v8, "jsonSettings":Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 51
    .local v10, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 54
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 58
    .local v12, "value":Ljava/lang/String;
    :try_start_1
    invoke-static {v9}, Lcom/microsoft/cll/android/SettingsStore$Settings;->valueOf(Ljava/lang/String;)Lcom/microsoft/cll/android/SettingsStore$Settings;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/microsoft/cll/android/SettingsStore;->updateCllSetting(Lcom/microsoft/cll/android/SettingsStore$Settings;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/microsoft/cll/android/CllSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v1, p0, Lcom/microsoft/cll/android/CllSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Json Settings, Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v7

    .line 63
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v0, p0, Lcom/microsoft/cll/android/CllSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v1, p0, Lcom/microsoft/cll/android/CllSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 68
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "jsonSettings":Lorg/json/JSONObject;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "refreshInterval":I
    .end local v12    # "value":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 70
    .restart local v7    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/microsoft/cll/android/CllSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v1, p0, Lcom/microsoft/cll/android/CllSettings;->TAG:Ljava/lang/String;

    const-string v2, "An exception occurred while parsing settings"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
