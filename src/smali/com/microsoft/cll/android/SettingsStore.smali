.class public Lcom/microsoft/cll/android/SettingsStore;
.super Ljava/lang/Object;
.source "SettingsStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/cll/android/SettingsStore$UpdateListener;,
        Lcom/microsoft/cll/android/SettingsStore$Settings;
    }
.end annotation


# static fields
.field protected static cllSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/microsoft/cll/android/SettingsStore$Settings;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static hostEventSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static updateListener:Lcom/microsoft/cll/android/SettingsStore$UpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    .line 49
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->SYNCREFRESHINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/16 v2, 0x708

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->QUEUEDRAININTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->SNAPSHOTSCHEDULEINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/16 v2, 0x384

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSPERPOST:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXFILESSPACE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/high16 v2, 0xa00000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->UPLOADENABLED:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->HTTPTIMEOUTINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const v2, 0xea60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->THREADSTOUSEWITHEXECUTOR:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCORRELATIONVECTORLENGTH:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCRITICALCANADDATTEMPTS:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/16 v2, 0xb4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->BASERETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->CONSTANTFORRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->NORMALEVENTMEMORYQUEUESIZE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->CLLSETTINGSURL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v2, "https://settings.data.microsoft.com/settings/v2.0/androidLL/app"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->HOSTSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->CLLSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->VORTEXPRODURL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v2, "https://vortex.data.microsoft.com/collect/v1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXREALTIMETHREADS:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    return-void
.end method

.method protected static getCllSettingsAsBoolean(Lcom/microsoft/cll/android/SettingsStore$Settings;)Z
    .locals 1
    .param p0, "setting"    # Lcom/microsoft/cll/android/SettingsStore$Settings;

    .prologue
    .line 83
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I
    .locals 1
    .param p0, "setting"    # Lcom/microsoft/cll/android/SettingsStore$Settings;

    .prologue
    .line 73
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected static getCllSettingsAsLong(Lcom/microsoft/cll/android/SettingsStore$Settings;)J
    .locals 2
    .param p0, "setting"    # Lcom/microsoft/cll/android/SettingsStore$Settings;

    .prologue
    .line 78
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static getCllSettingsAsString(Lcom/microsoft/cll/android/SettingsStore$Settings;)Ljava/lang/String;
    .locals 1
    .param p0, "setting"    # Lcom/microsoft/cll/android/SettingsStore$Settings;

    .prologue
    .line 88
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLatencyForEvent(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;)Lcom/microsoft/cll/android/EventEnums$Latency;
    .locals 3
    .param p0, "base"    # Lcom/microsoft/telemetry/Base;
    .param p1, "passedInValue"    # Lcom/microsoft/cll/android/EventEnums$Latency;

    .prologue
    .line 124
    const-string v0, "LATENCY"

    .line 127
    .local v0, "settingName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromCloud(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "valueString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 130
    invoke-static {v1}, Lcom/microsoft/cll/android/EventEnums$Latency;->FromString(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Latency;

    move-result-object p1

    .line 154
    .end local p1    # "passedInValue":Lcom/microsoft/cll/android/EventEnums$Latency;
    :cond_0
    :goto_0
    return-object p1

    .line 134
    .restart local p1    # "passedInValue":Lcom/microsoft/cll/android/EventEnums$Latency;
    :cond_1
    if-eqz p1, :cond_2

    sget-object v2, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyUnspecified:Lcom/microsoft/cll/android/EventEnums$Latency;

    if-ne p1, v2, :cond_0

    .line 140
    :cond_2
    invoke-static {p0, v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromSchema(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_3

    .line 143
    invoke-static {v1}, Lcom/microsoft/cll/android/EventEnums$Latency;->FromString(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Latency;

    move-result-object p1

    goto :goto_0

    .line 147
    :cond_3
    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromCloudDefaults(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_4

    .line 150
    invoke-static {v1}, Lcom/microsoft/cll/android/EventEnums$Latency;->FromString(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Latency;

    move-result-object p1

    goto :goto_0

    .line 154
    :cond_4
    sget-object p1, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyNormal:Lcom/microsoft/cll/android/EventEnums$Latency;

    goto :goto_0
.end method

.method public static getPersistenceForEvent(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Persistence;)Lcom/microsoft/cll/android/EventEnums$Persistence;
    .locals 3
    .param p0, "base"    # Lcom/microsoft/telemetry/Base;
    .param p1, "passedInValue"    # Lcom/microsoft/cll/android/EventEnums$Persistence;

    .prologue
    .line 159
    const-string v0, "PERSISTENCE"

    .line 162
    .local v0, "settingName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromCloud(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "valueString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 165
    invoke-static {v1}, Lcom/microsoft/cll/android/EventEnums$Persistence;->FromString(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Persistence;

    move-result-object p1

    .line 189
    .end local p1    # "passedInValue":Lcom/microsoft/cll/android/EventEnums$Persistence;
    :cond_0
    :goto_0
    return-object p1

    .line 169
    .restart local p1    # "passedInValue":Lcom/microsoft/cll/android/EventEnums$Persistence;
    :cond_1
    if-eqz p1, :cond_2

    sget-object v2, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceUnspecified:Lcom/microsoft/cll/android/EventEnums$Persistence;

    if-ne p1, v2, :cond_0

    .line 175
    :cond_2
    invoke-static {p0, v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromSchema(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_3

    .line 178
    invoke-static {v1}, Lcom/microsoft/cll/android/EventEnums$Persistence;->FromString(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Persistence;

    move-result-object p1

    goto :goto_0

    .line 182
    :cond_3
    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromCloudDefaults(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_4

    .line 185
    invoke-static {v1}, Lcom/microsoft/cll/android/EventEnums$Persistence;->FromString(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Persistence;

    move-result-object p1

    goto :goto_0

    .line 189
    :cond_4
    sget-object p1, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceNormal:Lcom/microsoft/cll/android/EventEnums$Persistence;

    goto :goto_0
.end method

.method public static getSampleRateForEvent(Lcom/microsoft/telemetry/Base;D)D
    .locals 5
    .param p0, "base"    # Lcom/microsoft/telemetry/Base;
    .param p1, "passedInValue"    # D

    .prologue
    .line 229
    const-string v0, "SAMPLERATE"

    .line 232
    .local v0, "settingName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromCloud(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "valueString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 235
    invoke-static {v1}, Lcom/microsoft/cll/android/EventEnums;->SampleRateFromString(Ljava/lang/String;)D

    move-result-wide p1

    .line 259
    .end local p1    # "passedInValue":D
    :cond_0
    :goto_0
    return-wide p1

    .line 239
    .restart local p1    # "passedInValue":D
    :cond_1
    const-wide v2, -0x411b074a771c970fL    # -1.0E-5

    cmpl-double v2, p1, v2

    if-gez v2, :cond_0

    .line 245
    invoke-static {p0, v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromSchema(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    if-eqz v1, :cond_2

    .line 248
    invoke-static {v1}, Lcom/microsoft/cll/android/EventEnums;->SampleRateFromString(Ljava/lang/String;)D

    move-result-wide p1

    goto :goto_0

    .line 252
    :cond_2
    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromCloudDefaults(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_3

    .line 255
    invoke-static {v1}, Lcom/microsoft/cll/android/EventEnums;->SampleRateFromString(Ljava/lang/String;)D

    move-result-wide p1

    goto :goto_0

    .line 259
    :cond_3
    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    goto :goto_0
.end method

.method public static getSensitivityForEvent(Lcom/microsoft/telemetry/Base;Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .locals 3
    .param p0, "base"    # Lcom/microsoft/telemetry/Base;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/telemetry/Base;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;)",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "passedInValue":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/cll/android/EventEnums$Sensitivity;>;"
    const-string v0, "SENSITIVITY"

    .line 197
    .local v0, "settingName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromCloud(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "valueString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 200
    invoke-static {v1}, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->FromString(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p1

    .line 224
    .end local p1    # "passedInValue":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/cll/android/EventEnums$Sensitivity;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 204
    .restart local p1    # "passedInValue":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/cll/android/EventEnums$Sensitivity;>;"
    :cond_1
    if-eqz p1, :cond_2

    sget-object v2, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityUnspecified:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    :cond_2
    invoke-static {p0, v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromSchema(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_3

    .line 213
    invoke-static {v1}, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->FromString(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    .line 217
    :cond_3
    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getSettingFromCloudDefaults(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_4

    .line 220
    invoke-static {v1}, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->FromString(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    .line 224
    :cond_4
    sget-object v2, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityNone:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0
.end method

.method private static getSettingFromCloud(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "base"    # Lcom/microsoft/telemetry/Base;
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v3, p0, Lcom/microsoft/telemetry/Base;->QualifiedName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "qualifiedEventName":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 279
    const-string v1, ""

    .line 280
    .local v1, "namespace":Ljava/lang/String;
    move-object v0, v2

    .line 288
    .local v0, "eventName":Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    sget-object v3, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 305
    :goto_1
    return-object v3

    .line 284
    .end local v0    # "eventName":Ljava/lang/String;
    .end local v1    # "namespace":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 285
    .restart local v1    # "namespace":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "eventName":Ljava/lang/String;
    goto :goto_0

    .line 292
    :cond_1
    sget-object v3, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 294
    sget-object v3, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    .line 296
    :cond_2
    sget-object v3, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 298
    sget-object v3, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto/16 :goto_1

    .line 300
    :cond_3
    sget-object v3, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 302
    sget-object v3, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto/16 :goto_1

    .line 305
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private static getSettingFromCloudDefaults(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "settingName"    # Ljava/lang/String;

    .prologue
    .line 327
    sget-object v1, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 329
    .local v0, "settingObject":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getSettingFromSchema(Lcom/microsoft/telemetry/Base;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "base"    # Lcom/microsoft/telemetry/Base;
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/microsoft/telemetry/Base;->Attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static setUpdateListener(Lcom/microsoft/cll/android/SettingsStore$UpdateListener;)V
    .locals 0
    .param p0, "updateListener"    # Lcom/microsoft/cll/android/SettingsStore$UpdateListener;

    .prologue
    .line 93
    sput-object p0, Lcom/microsoft/cll/android/SettingsStore;->updateListener:Lcom/microsoft/cll/android/SettingsStore$UpdateListener;

    .line 94
    return-void
.end method

.method public static updateCllSetting(Lcom/microsoft/cll/android/SettingsStore$Settings;Ljava/lang/String;)V
    .locals 2
    .param p0, "settingName"    # Lcom/microsoft/cll/android/SettingsStore$Settings;
    .param p1, "settingValue"    # Ljava/lang/String;

    .prologue
    .line 112
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->cllSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->updateListener:Lcom/microsoft/cll/android/SettingsStore$UpdateListener;

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->updateListener:Lcom/microsoft/cll/android/SettingsStore$UpdateListener;

    invoke-virtual {p0}, Lcom/microsoft/cll/android/SettingsStore$Settings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/microsoft/cll/android/SettingsStore$UpdateListener;->OnCllSettingUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1
    return-void
.end method

.method public static updateHostSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "settingName"    # Ljava/lang/String;
    .param p1, "settingValue"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->hostEventSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->updateListener:Lcom/microsoft/cll/android/SettingsStore$UpdateListener;

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore;->updateListener:Lcom/microsoft/cll/android/SettingsStore$UpdateListener;

    invoke-interface {v0, p0, p1}, Lcom/microsoft/cll/android/SettingsStore$UpdateListener;->OnHostSettingUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    return-void
.end method
