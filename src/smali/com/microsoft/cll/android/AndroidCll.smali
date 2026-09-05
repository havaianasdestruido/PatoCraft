.class public Lcom/microsoft/cll/android/AndroidCll;
.super Ljava/lang/Object;
.source "AndroidCll.java"

# interfaces
.implements Lcom/microsoft/cll/android/ICll;
.implements Lcom/microsoft/cll/android/SettingsStore$UpdateListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected cll:Lcom/microsoft/cll/android/ISingletonCll;

.field private final cllPreferences:Landroid/content/SharedPreferences;

.field private final hostPreferences:Landroid/content/SharedPreferences;

.field private final logger:Lcom/microsoft/cll/android/ILogger;

.field private final sharedCllPreferencesName:Ljava/lang/String;

.field private final sharedHostPreferencesName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "AndroidCll-AndroidCll"

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->TAG:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/microsoft/cll/android/AndroidLogger;->getInstance()Lcom/microsoft/cll/android/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 27
    const-string v0, "AndroidCllSettingsSharedPreferences"

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->sharedCllPreferencesName:Ljava/lang/String;

    .line 28
    const-string v0, "AndroidHostSettingsSharedPreferences"

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->sharedHostPreferencesName:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/microsoft/cll/android/AndroidCll;->cllPreferences:Landroid/content/SharedPreferences;

    .line 59
    iput-object v1, p0, Lcom/microsoft/cll/android/AndroidCll;->hostPreferences:Landroid/content/SharedPreferences;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p1, "iKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v3, "AndroidCll-AndroidCll"

    iput-object v3, p0, Lcom/microsoft/cll/android/AndroidCll;->TAG:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/microsoft/cll/android/AndroidLogger;->getInstance()Lcom/microsoft/cll/android/ILogger;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/cll/android/AndroidCll;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 27
    const-string v3, "AndroidCllSettingsSharedPreferences"

    iput-object v3, p0, Lcom/microsoft/cll/android/AndroidCll;->sharedCllPreferencesName:Ljava/lang/String;

    .line 28
    const-string v3, "AndroidHostSettingsSharedPreferences"

    iput-object v3, p0, Lcom/microsoft/cll/android/AndroidCll;->sharedHostPreferencesName:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/microsoft/cll/android/CorrelationVector;

    invoke-direct {v0}, Lcom/microsoft/cll/android/CorrelationVector;-><init>()V

    .line 42
    .local v0, "correlationVector":Lcom/microsoft/cll/android/CorrelationVector;
    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "dataPath":Ljava/lang/String;
    new-instance v2, Lcom/microsoft/cll/android/AndroidPartA;

    invoke-static {}, Lcom/microsoft/cll/android/AndroidLogger;->getInstance()Lcom/microsoft/cll/android/ILogger;

    move-result-object v3

    invoke-direct {v2, v3, p1, p2, v0}, Lcom/microsoft/cll/android/AndroidPartA;-><init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Landroid/content/Context;Lcom/microsoft/cll/android/CorrelationVector;)V

    .line 45
    .local v2, "partA":Lcom/microsoft/cll/android/AndroidPartA;
    invoke-static {}, Lcom/microsoft/cll/android/AndroidLogger;->getInstance()Lcom/microsoft/cll/android/ILogger;

    move-result-object v3

    invoke-static {p1, v3, v1, v2, v0}, Lcom/microsoft/cll/android/SingletonCll;->getInstance(Ljava/lang/String;Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/PartA;Lcom/microsoft/cll/android/CorrelationVector;)Lcom/microsoft/cll/android/ISingletonCll;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    .line 46
    const-string v3, "AndroidCllSettingsSharedPreferences"

    invoke-virtual {p2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/cll/android/AndroidCll;->cllPreferences:Landroid/content/SharedPreferences;

    .line 47
    const-string v3, "AndroidHostSettingsSharedPreferences"

    invoke-virtual {p2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/cll/android/AndroidCll;->hostPreferences:Landroid/content/SharedPreferences;

    .line 49
    invoke-static {p0}, Lcom/microsoft/cll/android/SettingsStore;->setUpdateListener(Lcom/microsoft/cll/android/SettingsStore$UpdateListener;)V

    .line 50
    invoke-direct {p0}, Lcom/microsoft/cll/android/AndroidCll;->setSettingsStoreValues()V

    .line 51
    return-void
.end method

.method private setSettingsStoreValues()V
    .locals 8

    .prologue
    .line 253
    iget-object v5, p0, Lcom/microsoft/cll/android/AndroidCll;->cllPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 254
    .local v4, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 261
    .local v2, "setting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/microsoft/cll/android/SettingsStore$Settings;->valueOf(Ljava/lang/String;)Lcom/microsoft/cll/android/SettingsStore$Settings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 272
    .local v3, "settingKey":Lcom/microsoft/cll/android/SettingsStore$Settings;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/microsoft/cll/android/SettingsStore;->updateCllSetting(Lcom/microsoft/cll/android/SettingsStore$Settings;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    .end local v3    # "settingKey":Lcom/microsoft/cll/android/SettingsStore$Settings;
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/microsoft/cll/android/AndroidCll;->cllPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 267
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 275
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "setting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v5, p0, Lcom/microsoft/cll/android/AndroidCll;->hostPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 276
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 278
    .restart local v2    # "setting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/microsoft/cll/android/SettingsStore;->updateHostSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 280
    .end local v2    # "setting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public OnCllSettingUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "settingValue"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v1, p0, Lcom/microsoft/cll/android/AndroidCll;->cllPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 247
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    return-void
.end method

.method public OnHostSettingUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "settingValue"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/microsoft/cll/android/AndroidCll;->hostPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 239
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 241
    return-void
.end method

.method public SubscribeCllEvents(Lcom/microsoft/cll/android/ICllEvents;)V
    .locals 1
    .param p1, "cllEvents"    # Lcom/microsoft/cll/android/ICllEvents;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0, p1}, Lcom/microsoft/cll/android/ISingletonCll;->SubscribeCllEvents(Lcom/microsoft/cll/android/ICllEvents;)V

    .line 207
    return-void
.end method

.method public getAppUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0}, Lcom/microsoft/cll/android/ISingletonCll;->getAppUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCorrelationVector()Lcom/microsoft/cll/android/CorrelationVector;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    check-cast v0, Lcom/microsoft/cll/android/SingletonCll;

    iget-object v0, v0, Lcom/microsoft/cll/android/SingletonCll;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    return-object v0
.end method

.method public log(LMicrosoft/Telemetry/Base;)V
    .locals 1
    .param p1, "event"    # LMicrosoft/Telemetry/Base;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/cll/android/AndroidCll;->log(LMicrosoft/Telemetry/Base;Ljava/util/List;)V

    .line 98
    return-void
.end method

.method public log(LMicrosoft/Telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V
    .locals 9
    .param p1, "event"    # LMicrosoft/Telemetry/Base;
    .param p2, "latency"    # Lcom/microsoft/cll/android/EventEnums$Latency;
    .param p3, "persistence"    # Lcom/microsoft/cll/android/EventEnums$Persistence;
    .param p5, "sampleRate"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMicrosoft/Telemetry/Base;",
            "Lcom/microsoft/cll/android/EventEnums$Latency;",
            "Lcom/microsoft/cll/android/EventEnums$Persistence;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;D",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p4, "sensitivity":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/cll/android/EventEnums$Sensitivity;>;"
    .local p7, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-static {v0, p1}, Lcom/microsoft/cll/android/PreSerializedEvent;->createFromStaticEvent(Lcom/microsoft/cll/android/ILogger;LMicrosoft/Telemetry/Base;)Lcom/microsoft/cll/android/PreSerializedEvent;

    move-result-object v2

    .line 125
    .local v2, "preSerializedEvent":Lcom/microsoft/cll/android/PreSerializedEvent;
    iget-object v1, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/microsoft/cll/android/ISingletonCll;->log(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V

    .line 126
    return-void
.end method

.method public log(LMicrosoft/Telemetry/Base;Ljava/util/List;)V
    .locals 9
    .param p1, "event"    # LMicrosoft/Telemetry/Base;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMicrosoft/Telemetry/Base;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyUnspecified:Lcom/microsoft/cll/android/EventEnums$Latency;

    sget-object v4, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceUnspecified:Lcom/microsoft/cll/android/EventEnums$Persistence;

    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityUnspecified:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/microsoft/cll/android/AndroidCll;->log(LMicrosoft/Telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V

    .line 109
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V
    .locals 10
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventData"    # Ljava/lang/String;
    .param p3, "latency"    # Lcom/microsoft/cll/android/EventEnums$Latency;
    .param p4, "persistence"    # Lcom/microsoft/cll/android/EventEnums$Persistence;
    .param p6, "sampleRate"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/microsoft/cll/android/EventEnums$Latency;",
            "Lcom/microsoft/cll/android/EventEnums$Persistence;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;D",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p5, "sensitivity":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/cll/android/EventEnums$Sensitivity;>;"
    .local p8, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-AndroidCll"

    const-string v3, "Event Name does not follow a valid format. Your event must have at least one . between two words. E.g. Microsoft.MyEvent"

    invoke-interface {v0, v1, v3}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {p1, p2}, Lcom/microsoft/cll/android/PreSerializedEvent;->createFromDynamicEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/cll/android/PreSerializedEvent;

    move-result-object v2

    .line 148
    .local v2, "preSerializedEvent":Lcom/microsoft/cll/android/PreSerializedEvent;
    iget-object v1, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-interface/range {v1 .. v8}, Lcom/microsoft/cll/android/ISingletonCll;->log(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V

    goto :goto_0
.end method

.method public logInternal(Lcom/microsoft/telemetry/Base;)V
    .locals 9
    .param p1, "testEvent"    # Lcom/microsoft/telemetry/Base;

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v1, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v8, v3

    invoke-interface/range {v1 .. v8}, Lcom/microsoft/cll/android/ISingletonCll;->log(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V

    .line 161
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0}, Lcom/microsoft/cll/android/ISingletonCll;->pause()V

    .line 78
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0}, Lcom/microsoft/cll/android/ISingletonCll;->resume()V

    .line 84
    return-void
.end method

.method public send()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0}, Lcom/microsoft/cll/android/ISingletonCll;->send()V

    .line 177
    return-void
.end method

.method public setAppUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0, p1}, Lcom/microsoft/cll/android/ISingletonCll;->setAppUserId(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public setDebugVerbosity(Lcom/microsoft/cll/android/Verbosity;)V
    .locals 1
    .param p1, "verbosity"    # Lcom/microsoft/cll/android/Verbosity;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0, p1}, Lcom/microsoft/cll/android/ISingletonCll;->setDebugVerbosity(Lcom/microsoft/cll/android/Verbosity;)V

    .line 171
    return-void
.end method

.method public setEndpointUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0, p1}, Lcom/microsoft/cll/android/ISingletonCll;->setEndpointUrl(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setExperimentId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0, p1}, Lcom/microsoft/cll/android/ISingletonCll;->setExperimentId(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public setXuidCallback(Lcom/microsoft/cll/android/ITicketCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/microsoft/cll/android/ITicketCallback;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0, p1}, Lcom/microsoft/cll/android/ISingletonCll;->setXuidCallback(Lcom/microsoft/cll/android/ITicketCallback;)V

    .line 229
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0}, Lcom/microsoft/cll/android/ISingletonCll;->start()V

    .line 66
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0}, Lcom/microsoft/cll/android/ISingletonCll;->stop()V

    .line 72
    return-void
.end method

.method public synchronize()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0}, Lcom/microsoft/cll/android/ISingletonCll;->synchronize()V

    .line 201
    return-void
.end method

.method public useLegacyCS(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 188
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidCll;->cll:Lcom/microsoft/cll/android/ISingletonCll;

    invoke-interface {v0, p1}, Lcom/microsoft/cll/android/ISingletonCll;->useLegacyCS(Z)V

    .line 189
    return-void
.end method
