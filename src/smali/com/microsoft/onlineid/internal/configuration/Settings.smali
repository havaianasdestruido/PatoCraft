.class public Lcom/microsoft/onlineid/internal/configuration/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static final AreTestHooksEnabled:Ljava/lang/String; = "areTestHooksEnabled"

.field public static final HasUnlockProcedureCheckRun:Ljava/lang/String; = "hasUnlockProcedureCheckRun"

.field private static Instance:Lcom/microsoft/onlineid/internal/configuration/Settings; = null

.field public static final IsCertificateTelemetryNeeded:Ljava/lang/String; = "isCertificateTelemetryNeeded"

.field public static final IsLoggingEnabled:Ljava/lang/String; = "isLoggingEnabled"

.field public static final IsPseudoLocBuild:Ljava/lang/String; = "isPseudoLocBuild"

.field public static final IsRedactionEnabled:Ljava/lang/String; = "isRedactionEnabled"

.field public static final ShouldCheckSsoCertificatesInDebug:Ljava/lang/String; = "shouldCheckSsoCertificatesInDebug"

.field public static final ShowMockNotifications:Ljava/lang/String; = "showMockNotifications"

.field public static final ShowMockNotificationsCompactStyle:Ljava/lang/String; = "showMockNotificationsCompactStyle"

.field private static final StorageFile:Ljava/lang/String; = "settings"


# instance fields
.field private _defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _storage:Lcom/microsoft/onlineid/internal/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/onlineid/internal/configuration/Settings;->Instance:Lcom/microsoft/onlineid/internal/configuration/Settings;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 44
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v1, "settings"

    invoke-direct {v0, p1, v1}, Lcom/microsoft/onlineid/internal/storage/Storage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    .line 45
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "areTestHooksEnabled"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "isPseudoLocBuild"

    .line 48
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "isLoggingEnabled"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "isRedactionEnabled"

    .line 52
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "hasUnlockProcedureCheckRun"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "isCertificateTelemetryNeeded"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/configuration/Settings;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    sget-object v0, Lcom/microsoft/onlineid/internal/configuration/Settings;->Instance:Lcom/microsoft/onlineid/internal/configuration/Settings;

    if-nez v0, :cond_1

    .line 66
    const-class v1, Lcom/microsoft/onlineid/internal/configuration/Settings;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lcom/microsoft/onlineid/internal/configuration/Settings;->Instance:Lcom/microsoft/onlineid/internal/configuration/Settings;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/microsoft/onlineid/internal/configuration/Settings;

    invoke-direct {v0, p0}, Lcom/microsoft/onlineid/internal/configuration/Settings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/configuration/Settings;->Instance:Lcom/microsoft/onlineid/internal/configuration/Settings;

    .line 70
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    sget-object v0, Lcom/microsoft/onlineid/internal/configuration/Settings;->Instance:Lcom/microsoft/onlineid/internal/configuration/Settings;

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isDebugBuild()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public static resetSettings()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/onlineid/internal/configuration/Settings;->Instance:Lcom/microsoft/onlineid/internal/configuration/Settings;

    .line 149
    return-void
.end method


# virtual methods
.method public getSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 87
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lcom/microsoft/onlineid/internal/storage/Storage;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    :goto_0
    if-nez v1, :cond_0

    .line 96
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_defaultSettingsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "value":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 99
    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/ClassCastException;
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    goto :goto_0
.end method

.method public isSettingEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Strings;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeSetting(Ljava/lang/String;)V
    .locals 1
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->remove(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 129
    return-void
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "settingValue"    # Ljava/lang/String;

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SettingName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 144
    return-void
.end method

.method setStorage(Lcom/microsoft/onlineid/internal/storage/Storage;)V
    .locals 0
    .param p1, "storage"    # Lcom/microsoft/onlineid/internal/storage/Storage;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/configuration/Settings;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    .line 159
    return-void
.end method
