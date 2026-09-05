.class public Lcom/microsoft/cll/android/SettingsSync;
.super Lcom/microsoft/cll/android/ScheduledWorker;
.source "SettingsSync.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

.field private final logger:Lcom/microsoft/cll/android/ILogger;

.field private final settingsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/cll/android/AbstractSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/PartA;)V
    .locals 2
    .param p1, "clientTelemetry"    # Lcom/microsoft/cll/android/ClientTelemetry;
    .param p2, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p3, "iKey"    # Ljava/lang/String;
    .param p4, "partA"    # Lcom/microsoft/cll/android/PartA;

    .prologue
    .line 22
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->SYNCREFRESHINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsLong(Lcom/microsoft/cll/android/SettingsStore$Settings;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/microsoft/cll/android/ScheduledWorker;-><init>(J)V

    .line 17
    const-string v0, "AndroidCll-SettingsSync"

    iput-object v0, p0, Lcom/microsoft/cll/android/SettingsSync;->TAG:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/microsoft/cll/android/SettingsSync;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    .line 25
    iput-object p2, p0, Lcom/microsoft/cll/android/SettingsSync;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/SettingsSync;->settingsList:Ljava/util/List;

    .line 27
    iget-object v0, p0, Lcom/microsoft/cll/android/SettingsSync;->settingsList:Ljava/util/List;

    new-instance v1, Lcom/microsoft/cll/android/CllSettings;

    invoke-direct {v1, p1, p2, p0, p4}, Lcom/microsoft/cll/android/CllSettings;-><init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Lcom/microsoft/cll/android/SettingsSync;Lcom/microsoft/cll/android/PartA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/microsoft/cll/android/SettingsSync;->settingsList:Ljava/util/List;

    new-instance v1, Lcom/microsoft/cll/android/HostSettings;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/microsoft/cll/android/HostSettings;-><init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/PartA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    return-void
.end method

.method private GetCloudSettings()V
    .locals 6

    .prologue
    .line 53
    iget-object v2, p0, Lcom/microsoft/cll/android/SettingsSync;->settingsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/cll/android/AbstractSettings;

    .line 55
    .local v0, "abstractSettings":Lcom/microsoft/cll/android/AbstractSettings;
    invoke-virtual {v0}, Lcom/microsoft/cll/android/AbstractSettings;->getSettings()Lorg/json/JSONObject;

    move-result-object v1

    .line 56
    .local v1, "json":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 58
    iget-object v3, p0, Lcom/microsoft/cll/android/SettingsSync;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v4, "AndroidCll-SettingsSync"

    const-string v5, "Could not get or parse settings"

    invoke-interface {v3, v4, v5}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0, v1}, Lcom/microsoft/cll/android/AbstractSettings;->ParseSettings(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 64
    .end local v0    # "abstractSettings":Lcom/microsoft/cll/android/AbstractSettings;
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/microsoft/cll/android/SettingsSync;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-SettingsSync"

    const-string v2, "Cloud sync!"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/microsoft/cll/android/SettingsSync;->GetCloudSettings()V

    .line 45
    return-void
.end method
