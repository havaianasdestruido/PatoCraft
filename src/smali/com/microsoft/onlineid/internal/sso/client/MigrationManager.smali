.class public Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;
.super Ljava/lang/Object;
.source "MigrationManager.java"


# static fields
.field public static final InitialSdkVersion:Ljava/lang/String; = "0"


# instance fields
.field private final _appSdkVersion:Ljava/lang/String;

.field private final _applicationContext:Landroid/content/Context;

.field private final _configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

.field private final _serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

.field private _ssoServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/onlineid/internal/sso/SsoService;",
            ">;"
        }
    .end annotation
.end field

.field private final _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_applicationContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ConfigManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    .line 45
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 46
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    .line 47
    invoke-static {p1}, Lcom/microsoft/onlineid/internal/Resources;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_appSdkVersion:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method protected createRetrieveBackupRequest(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 187
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public migrateAndUpgradeStorageIfNeeded()V
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readSdkVersion()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "storageSdkVersion":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeSdkVersion(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getOrderedSsoServices()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_ssoServices:Ljava/util/List;

    .line 72
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_ssoServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->migrateStorage()V

    .line 79
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_appSdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_appSdkVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->upgradeStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_appSdkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeSdkVersion(Ljava/lang/String;)V

    .line 86
    :cond_2
    return-void
.end method

.method protected migrateStorage()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 93
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "thisAppPackageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 95
    .local v4, "migrationAttempts":I
    const/4 v2, 0x0

    .line 97
    .local v2, "isConfigUpToDate":Z
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_ssoServices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 98
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/microsoft/onlineid/internal/sso/SsoService;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/microsoft/onlineid/internal/sso/SsoService;

    move-object v5, v8

    .line 100
    .local v5, "ssoService":Lcom/microsoft/onlineid/internal/sso/SsoService;
    :goto_0
    if-eqz v5, :cond_0

    .line 102
    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "ssoServicePackageName":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 107
    add-int/lit8 v4, v4, 0x1

    .line 108
    :try_start_0
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v8}, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->createRetrieveBackupRequest(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/microsoft/onlineid/internal/sso/client/request/RetrieveBackupRequest;->performRequest(Lcom/microsoft/onlineid/internal/sso/SsoService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 110
    .local v0, "backup":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 112
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v8, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->storeBackup(Landroid/os/Bundle;)V

    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " migrated backup data from "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    .end local v0    # "backup":Landroid/os/Bundle;
    .end local v6    # "ssoServicePackageName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v8

    const-string v9, "Migration and Upgrade"

    const-string v10, "Migration attempts"

    .line 164
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 161
    invoke-interface {v8, v9, v10, v11}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 165
    return-void

    .end local v5    # "ssoService":Lcom/microsoft/onlineid/internal/sso/SsoService;
    :cond_1
    move-object v5, v9

    .line 98
    goto :goto_0

    .line 117
    .restart local v5    # "ssoService":Lcom/microsoft/onlineid/internal/sso/SsoService;
    .restart local v6    # "ssoServicePackageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Migration attempt requires config update: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 123
    if-nez v2, :cond_4

    .line 125
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_configManager:Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-virtual {v8}, Lcom/microsoft/onlineid/sts/ConfigManager;->update()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 129
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    invoke-virtual {v8}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->getOrderedSsoServices()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_ssoServices:Ljava/util/List;

    .line 130
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/sso/client/MigrationManager;->_ssoServices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 140
    :goto_1
    const/4 v2, 0x1

    .line 157
    .end local v1    # "e":Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/microsoft/onlineid/internal/sso/SsoService;

    move-object v5, v8

    .line 158
    :goto_3
    goto/16 :goto_0

    .line 134
    .restart local v1    # "e":Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException;
    :cond_3
    const-string v8, "Attempt to update config failed."

    invoke-static {v8}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Config update already ran during this migration attempt, ignoring service: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 147
    .end local v1    # "e":Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException;
    :catch_1
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " encountered an error attempting to migrate storage from "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v8

    invoke-interface {v8, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    move-object v5, v9

    .line 157
    goto :goto_3
.end method

.method protected upgradeStorage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "oldVersion"    # Ljava/lang/String;
    .param p2, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 176
    return-void
.end method
