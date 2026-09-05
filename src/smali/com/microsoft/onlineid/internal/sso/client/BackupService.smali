.class public Lcom/microsoft/onlineid/internal/sso/client/BackupService;
.super Landroid/app/IntentService;
.source "BackupService.java"


# static fields
.field public static final ActionPushBackup:Ljava/lang/String; = "com.microsoft.onlineid.internal.sso.client.PUSH_BACKUP"

.field public static final ActionPushBackupIfNeeded:Ljava/lang/String; = "com.microsoft.onlineid.internal.sso.client.PUSH_BACKUP_IF_NEEDED"


# instance fields
.field private _applicationContext:Landroid/content/Context;

.field private _config:Lcom/microsoft/onlineid/sts/ServerConfig;

.field private _msaSsoClient:Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

.field private _serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

.field private _storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static pushBackup(Landroid/content/Context;)V
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/microsoft/onlineid/internal/sso/client/BackupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.microsoft.onlineid.internal.sso.client.PUSH_BACKUP"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    return-void
.end method

.method public static pushBackupIfNeeded(Landroid/content/Context;)V
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/microsoft/onlineid/internal/sso/client/BackupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.microsoft.onlineid.internal.sso.client.PUSH_BACKUP_IF_NEEDED"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 99
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 101
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 51
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_applicationContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    .line 53
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 54
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_msaSsoClient:Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    .line 55
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    .line 56
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.microsoft.onlineid.internal.sso.client.PUSH_BACKUP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->retrieveAndPushBackup()V

    .line 78
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v2, "com.microsoft.onlineid.internal.sso.client.PUSH_BACKUP_IF_NEEDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->retrieveAndPushBackupIfNeeded()V

    goto :goto_0

    .line 73
    :cond_1
    new-instance v1, Lcom/microsoft/onlineid/exception/InternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "e":Lcom/microsoft/onlineid/exception/InternalException;
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 76
    const-string v2, "Backup failed."

    invoke-static {v2, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected retrieveAndPushBackup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 108
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getOrderedSsoServices()Ljava/util/List;

    move-result-object v3

    .line 111
    .local v3, "ssoServices":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/onlineid/internal/sso/SsoService;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_applicationContext:Landroid/content/Context;

    .line 112
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/onlineid/internal/sso/SsoService;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/onlineid/internal/sso/SsoService;

    invoke-virtual {p0, v4}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->retrieveBackup(Lcom/microsoft/onlineid/internal/sso/SsoService;)Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, "backup":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 119
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    sget-object v6, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->BackupSlaveCount:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    .line 120
    invoke-virtual {v5, v6}, Lcom/microsoft/onlineid/sts/ServerConfig;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result v5

    .line 118
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 122
    .local v2, "slavesToBackup":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_0

    .line 124
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/onlineid/internal/sso/SsoService;

    invoke-virtual {p0, v4, v0}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->storeBackup(Lcom/microsoft/onlineid/internal/sso/SsoService;Landroid/os/Bundle;)V

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeLastBackupPushedTime()V

    .line 131
    .end local v0    # "backup":Landroid/os/Bundle;
    .end local v1    # "i":I
    .end local v2    # "slavesToBackup":I
    :cond_1
    return-void
.end method

.method protected retrieveAndPushBackupIfNeeded()V
    .locals 6

    .prologue
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readLastBackupPushedTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 141
    .local v0, "millisSinceLastBackup":J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    sget-object v5, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MaxSecondsBetweenBackups:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    invoke-virtual {v4, v5}, Lcom/microsoft/onlineid/sts/ServerConfig;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->retrieveAndPushBackup()V

    .line 145
    :cond_0
    return-void
.end method

.method protected retrieveBackup(Lcom/microsoft/onlineid/internal/sso/SsoService;)Landroid/os/Bundle;
    .locals 4
    .param p1, "ssoService"    # Lcom/microsoft/onlineid/internal/sso/SsoService;

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_msaSsoClient:Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;

    new-instance v2, Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_applicationContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/sso/client/MsaSsoClient;->performRequestWithFallback(Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Retrieve backup failed."

    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 163
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected storeBackup(Lcom/microsoft/onlineid/internal/sso/SsoService;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "ssoService"    # Lcom/microsoft/onlineid/internal/sso/SsoService;
    .param p2, "backup"    # Landroid/os/Bundle;

    .prologue
    .line 177
    :try_start_0
    new-instance v1, Lcom/microsoft/onlineid/internal/sso/client/request/StoreBackupRequest;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/BackupService;->_applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/microsoft/onlineid/internal/sso/client/request/StoreBackupRequest;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/sso/client/request/StoreBackupRequest;->performRequest(Lcom/microsoft/onlineid/internal/sso/SsoService;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Store backup failed."

    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    goto :goto_0
.end method
