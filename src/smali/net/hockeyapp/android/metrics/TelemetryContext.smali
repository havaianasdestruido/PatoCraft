.class Lnet/hockeyapp/android/metrics/TelemetryContext;
.super Ljava/lang/Object;
.source "TelemetryContext.java"


# static fields
.field private static final SESSION_IS_FIRST_KEY:Ljava/lang/String; = "SESSION_IS_FIRST"

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "HOCKEY_APP_TELEMETRY_CONTEXT"

.field private static final TAG:Ljava/lang/String; = "HockeyApp-Metrics"


# instance fields
.field private final IKEY_LOCK:Ljava/lang/Object;

.field protected final mApplication:Lnet/hockeyapp/android/metrics/model/Application;

.field protected mContext:Landroid/content/Context;

.field protected final mDevice:Lnet/hockeyapp/android/metrics/model/Device;

.field private mInstrumentationKey:Ljava/lang/String;

.field protected final mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

.field private mPackageName:Ljava/lang/String;

.field protected final mSession:Lnet/hockeyapp/android/metrics/model/Session;

.field private mSettings:Landroid/content/SharedPreferences;

.field protected final mUser:Lnet/hockeyapp/android/metrics/model/User;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->IKEY_LOCK:Ljava/lang/Object;

    .line 97
    new-instance v0, Lnet/hockeyapp/android/metrics/model/Device;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Device;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    .line 98
    new-instance v0, Lnet/hockeyapp/android/metrics/model/Session;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Session;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    .line 99
    new-instance v0, Lnet/hockeyapp/android/metrics/model/User;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/User;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    .line 100
    new-instance v0, Lnet/hockeyapp/android/metrics/model/Application;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Application;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    .line 101
    new-instance v0, Lnet/hockeyapp/android/metrics/model/Internal;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Internal;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    .line 102
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appIdentifier"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;-><init>()V

    .line 112
    const-string v0, "HOCKEY_APP_TELEMETRY_CONTEXT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSettings:Landroid/content/SharedPreferences;

    .line 113
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {p2}, Lnet/hockeyapp/android/utils/Util;->convertAppIdentifierToGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInstrumentationKey:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configDeviceContext()V

    .line 117
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configUserId()V

    .line 118
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configInternalContext()V

    .line 119
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configApplicationContext()V

    .line 120
    return-void
.end method


# virtual methods
.method protected configApplicationContext()V
    .locals 6

    .prologue
    .line 159
    const-string v2, "HockeyApp-Metrics"

    const-string v3, "Configuring application context"

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "unknown"

    .line 163
    .local v1, "version":Ljava/lang/String;
    const-string v2, ""

    iput-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mPackageName:Ljava/lang/String;

    .line 164
    sget-object v2, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 165
    sget-object v2, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    iput-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mPackageName:Ljava/lang/String;

    .line 167
    :cond_0
    const-string v2, "%s (%S)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lnet/hockeyapp/android/Constants;->APP_VERSION_NAME:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setAppVersion(Ljava/lang/String;)V

    .line 171
    const-string v0, "4.1.4"

    .line 172
    .local v0, "sdkVersionString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setSdkVersion(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method protected configDeviceContext()V
    .locals 3

    .prologue
    .line 189
    const-string v1, "HockeyApp-Metrics"

    const-string v2, "Configuring device context"

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setOsVersion(Ljava/lang/String;)V

    .line 191
    const-string v1, "Android"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setOsName(Ljava/lang/String;)V

    .line 192
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceModel(Ljava/lang/String;)V

    .line 193
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceOemName(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setOsLocale(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setOsLanguage(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->updateScreenResolution()V

    .line 197
    sget-object v1, Lnet/hockeyapp/android/Constants;->DEVICE_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceId(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 201
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 202
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    const-string v1, "Phone"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceType(Ljava/lang/String;)V

    .line 209
    :goto_0
    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->isEmulator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Emulator]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v2}, Lnet/hockeyapp/android/metrics/model/Device;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceModel(Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void

    .line 205
    :cond_1
    const-string v1, "Tablet"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configInternalContext()V
    .locals 3

    .prologue
    .line 277
    const-string v0, "4.1.4"

    .line 278
    .local v0, "sdkVersionString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setSdkVersion(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method protected configSessionContext(Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string v1, "HockeyApp-Metrics"

    const-string v2, "Configuring session context"

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setSessionId(Ljava/lang/String;)V

    .line 140
    const-string v1, "HockeyApp-Metrics"

    const-string v2, "Setting the isNew-flag to true, as we only count new sessions"

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "true"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setIsNewSession(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSettings:Landroid/content/SharedPreferences;

    const-string v2, "SESSION_IS_FIRST"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    const-string v1, "SESSION_IS_FIRST"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    const-string v1, "true"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setIsFirstSession(Ljava/lang/String;)V

    .line 148
    const-string v1, "HockeyApp-Metrics"

    const-string v2, "It\'s our first session, writing true to SharedPreferences."

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v1, "false"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setIsFirstSession(Ljava/lang/String;)V

    .line 151
    const-string v1, "HockeyApp-Metrics"

    const-string v2, "It\'s not their first session, writing false to SharedPreferences."

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configUserId()V
    .locals 2

    .prologue
    .line 179
    const-string v0, "HockeyApp-Metrics"

    const-string v1, "Configuring user context"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "Using pre-supplied anonymous device identifier."

    invoke-static {v0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 182
    sget-object v0, Lnet/hockeyapp/android/Constants;->CRASH_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setAnonymousUserId(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public getAnonymousUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 347
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    monitor-enter v1

    .line 336
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Application;->getVer()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getContextTags()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 291
    .local v0, "contextTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    monitor-enter v2

    .line 292
    :try_start_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/Application;->addToHashMap(Ljava/util/Map;)V

    .line 293
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v2

    .line 295
    :try_start_1
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/Device;->addToHashMap(Ljava/util/Map;)V

    .line 296
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 297
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v2

    .line 298
    :try_start_2
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/Session;->addToHashMap(Ljava/util/Map;)V

    .line 299
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 300
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    monitor-enter v2

    .line 301
    :try_start_3
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/User;->addToHashMap(Ljava/util/Map;)V

    .line 302
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 303
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    monitor-enter v2

    .line 304
    :try_start_4
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/Internal;->addToHashMap(Ljava/util/Map;)V

    .line 305
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 307
    return-object v0

    .line 293
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 296
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 299
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    .line 302
    :catchall_3
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1

    .line 305
    :catchall_4
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 431
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 432
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getModel()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceOemName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 443
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 444
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getOemName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstrumentationKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->IKEY_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInstrumentationKey:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIsFirstSession()Ljava/lang/String;
    .locals 2

    .prologue
    .line 383
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Session;->getIsFirst()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIsNewSession()Ljava/lang/String;
    .locals 2

    .prologue
    .line 395
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    .line 396
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Session;->getIsNew()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOSLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 467
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 468
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getLanguage()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOsLocale()Ljava/lang/String;
    .locals 2

    .prologue
    .line 455
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 456
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getLocale()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 419
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 420
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getOs()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenResolution()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 324
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getScreenResolution()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    monitor-enter v1

    .line 360
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Internal;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    .line 372
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Session;->getId()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected renewSessionContext(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configSessionContext(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public setAnonymousUserId(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/User;->setId(Ljava/lang/String;)V

    .line 355
    monitor-exit v1

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    monitor-enter v1

    .line 342
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Application;->setVer(Ljava/lang/String;)V

    .line 343
    monitor-exit v1

    .line 344
    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 483
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 484
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setId(Ljava/lang/String;)V

    .line 485
    monitor-exit v1

    .line 486
    return-void

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceModel"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 438
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setModel(Ljava/lang/String;)V

    .line 439
    monitor-exit v1

    .line 440
    return-void

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceOemName(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceOemName"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 450
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setOemName(Ljava/lang/String;)V

    .line 451
    monitor-exit v1

    .line 452
    return-void

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 493
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 494
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setType(Ljava/lang/String;)V

    .line 495
    monitor-exit v1

    .line 496
    return-void

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized setInstrumentationKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "instrumentationKey"    # Ljava/lang/String;

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->IKEY_LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 318
    :try_start_1
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInstrumentationKey:Ljava/lang/String;

    .line 319
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    .line 319
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 317
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsFirstSession(Ljava/lang/String;)V
    .locals 2
    .param p1, "isFirst"    # Ljava/lang/String;

    .prologue
    .line 389
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Session;->setIsFirst(Ljava/lang/String;)V

    .line 391
    monitor-exit v1

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIsNewSession(Ljava/lang/String;)V
    .locals 2
    .param p1, "isNewSession"    # Ljava/lang/String;

    .prologue
    .line 401
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    .line 402
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Session;->setIsNew(Ljava/lang/String;)V

    .line 403
    monitor-exit v1

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOsLanguage(Ljava/lang/String;)V
    .locals 2
    .param p1, "osLanguage"    # Ljava/lang/String;

    .prologue
    .line 473
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 474
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setLanguage(Ljava/lang/String;)V

    .line 475
    monitor-exit v1

    .line 476
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOsLocale(Ljava/lang/String;)V
    .locals 2
    .param p1, "osLocale"    # Ljava/lang/String;

    .prologue
    .line 461
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 462
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setLocale(Ljava/lang/String;)V

    .line 463
    monitor-exit v1

    .line 464
    return-void

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 2
    .param p1, "osName"    # Ljava/lang/String;

    .prologue
    .line 425
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setOs(Ljava/lang/String;)V

    .line 427
    monitor-exit v1

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 413
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setOsVersion(Ljava/lang/String;)V

    .line 415
    monitor-exit v1

    .line 416
    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScreenResolution(Ljava/lang/String;)V
    .locals 2
    .param p1, "screenResolution"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 330
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setScreenResolution(Ljava/lang/String;)V

    .line 331
    monitor-exit v1

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 365
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    monitor-enter v1

    .line 366
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Internal;->setSdkVersion(Ljava/lang/String;)V

    .line 367
    monitor-exit v1

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 377
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    .line 378
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Session;->setId(Ljava/lang/String;)V

    .line 379
    monitor-exit v1

    .line 380
    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected updateScreenResolution()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "Deprecation"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v10, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_0

    .line 222
    iget-object v10, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 224
    .local v9, "wm":Landroid/view/WindowManager;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-lt v10, v11, :cond_2

    .line 225
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 226
    .local v7, "size":Landroid/graphics/Point;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 227
    .local v0, "d":Landroid/view/Display;
    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v0, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 229
    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 230
    .local v8, "width":I
    iget v3, v7, Landroid/graphics/Point;->y:I

    .line 267
    .end local v0    # "d":Landroid/view/Display;
    .end local v7    # "size":Landroid/graphics/Point;
    .local v3, "height":I
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, "resolutionString":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setScreenResolution(Ljava/lang/String;)V

    .line 271
    .end local v3    # "height":I
    .end local v6    # "resolutionString":Ljava/lang/String;
    .end local v8    # "width":I
    .end local v9    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void

    .line 232
    .restart local v0    # "d":Landroid/view/Display;
    .restart local v7    # "size":Landroid/graphics/Point;
    .restart local v9    # "wm":Landroid/view/WindowManager;
    :cond_1
    const/4 v8, 0x0

    .line 233
    .restart local v8    # "width":I
    const/4 v3, 0x0

    .restart local v3    # "height":I
    goto :goto_0

    .line 236
    .end local v0    # "d":Landroid/view/Display;
    .end local v3    # "height":I
    .end local v7    # "size":Landroid/graphics/Point;
    .end local v8    # "width":I
    :cond_2
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xd

    if-lt v10, v11, :cond_4

    .line 241
    :try_start_0
    const-class v10, Landroid/view/Display;

    const-string v11, "getRawWidth"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 242
    .local v5, "mGetRawW":Ljava/lang/reflect/Method;
    const-class v10, Landroid/view/Display;

    const-string v11, "getRawHeight"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 243
    .local v4, "mGetRawH":Ljava/lang/reflect/Method;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 244
    .local v1, "display":Landroid/view/Display;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 245
    .restart local v8    # "width":I
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .restart local v3    # "height":I
    goto :goto_0

    .line 246
    .end local v1    # "display":Landroid/view/Display;
    .end local v3    # "height":I
    .end local v4    # "mGetRawH":Ljava/lang/reflect/Method;
    .end local v5    # "mGetRawW":Ljava/lang/reflect/Method;
    .end local v8    # "width":I
    :catch_0
    move-exception v2

    .line 247
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 248
    .restart local v7    # "size":Landroid/graphics/Point;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 249
    .restart local v0    # "d":Landroid/view/Display;
    if-eqz v0, :cond_3

    .line 250
    invoke-virtual {v0, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 251
    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 252
    .restart local v8    # "width":I
    iget v3, v7, Landroid/graphics/Point;->y:I

    .line 257
    .restart local v3    # "height":I
    :goto_1
    const-string v10, "HockeyApp-Metrics"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t determine screen resolution: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    .end local v3    # "height":I
    .end local v8    # "width":I
    :cond_3
    const/4 v8, 0x0

    .line 255
    .restart local v8    # "width":I
    const/4 v3, 0x0

    .restart local v3    # "height":I
    goto :goto_1

    .line 262
    .end local v0    # "d":Landroid/view/Display;
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "height":I
    .end local v7    # "size":Landroid/graphics/Point;
    .end local v8    # "width":I
    :cond_4
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 263
    .restart local v0    # "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 264
    .restart local v8    # "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    .restart local v3    # "height":I
    goto/16 :goto_0
.end method
