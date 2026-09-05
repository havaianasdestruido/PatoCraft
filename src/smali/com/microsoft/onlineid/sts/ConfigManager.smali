.class public Lcom/microsoft/onlineid/sts/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private _config:Lcom/microsoft/onlineid/sts/ServerConfig;

.field private _serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

.field private _storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_applicationContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static compareVersions(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p0, "left"    # Ljava/lang/String;
    .param p1, "right"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 476
    const/4 v0, 0x0

    .line 479
    .local v0, "diff":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-array v2, v7, [Ljava/lang/String;

    .line 480
    .local v2, "leftTokens":[Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-array v4, v7, [Ljava/lang/String;

    .line 483
    .local v4, "rightTokens":[Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    array-length v6, v2

    if-lt v1, v6, :cond_0

    array-length v6, v4

    if-ge v1, v6, :cond_3

    .line 485
    :cond_0
    const/4 v3, 0x0

    .line 486
    .local v3, "leftValue":I
    const/4 v5, 0x0

    .line 489
    .local v5, "rightValue":I
    array-length v6, v2

    if-ge v1, v6, :cond_1

    .line 491
    aget-object v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 493
    :cond_1
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 495
    aget-object v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 498
    :cond_2
    sub-int v0, v3, v5

    .line 499
    if-eqz v0, :cond_6

    .line 505
    .end local v3    # "leftValue":I
    .end local v5    # "rightValue":I
    :cond_3
    int-to-long v6, v0

    return-wide v6

    .line 479
    .end local v1    # "index":I
    .end local v2    # "leftTokens":[Ljava/lang/String;
    .end local v4    # "rightTokens":[Ljava/lang/String;
    :cond_4
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 480
    .restart local v2    # "leftTokens":[Ljava/lang/String;
    :cond_5
    const-string v6, "\\."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 483
    .restart local v1    # "index":I
    .restart local v3    # "leftValue":I
    .restart local v4    # "rightTokens":[Ljava/lang/String;
    .restart local v5    # "rightValue":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected downloadConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Z
    .locals 6
    .param p1, "environment"    # Lcom/microsoft/onlineid/internal/configuration/Environment;

    .prologue
    .line 263
    const/4 v2, 0x0

    .line 265
    .local v2, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downloading new PPCRL config file ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getEnvironmentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getTransportFactory()Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->createTransport()Lcom/microsoft/onlineid/internal/transport/Transport;

    move-result-object v3

    .line 270
    .local v3, "transport":Lcom/microsoft/onlineid/internal/transport/Transport;
    :try_start_0
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getConfigUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/onlineid/internal/transport/Transport;->openGetRequest(Ljava/net/URL;)V

    .line 271
    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/transport/Transport;->getResponseCode()I

    move-result v1

    .line 272
    .local v1, "responseCode":I
    const/16 v4, 0xc8

    if-ne v1, v4, :cond_0

    .line 274
    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/transport/Transport;->getResponseStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/microsoft/onlineid/sts/ConfigManager;->parseConfig(Ljava/io/InputStream;Lcom/microsoft/onlineid/internal/configuration/Environment;)Z
    :try_end_0
    .catch Lcom/microsoft/onlineid/exception/NetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/microsoft/onlineid/sts/exception/StsParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 288
    :goto_0
    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    .line 291
    .end local v1    # "responseCode":I
    :goto_1
    if-eqz v2, :cond_1

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully downloaded ppcrlconfig version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getCurrentConfigVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getStorage()Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeConfigLastDownloadedTime()V

    .line 301
    :goto_2
    return v2

    .line 278
    .restart local v1    # "responseCode":I
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to download ppcrlconfig due to HTTP response code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/microsoft/onlineid/exception/NetworkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/microsoft/onlineid/sts/exception/StsParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 281
    .end local v1    # "responseCode":I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 283
    .local v0, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    const-string v4, "Failed to download ppcrlconfig."

    invoke-static {v4, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    goto :goto_1

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    throw v4

    .line 298
    :cond_1
    const-string v4, "Failed to update ppcrlconfig (parseConfig() returned false)."

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 281
    :catch_1
    move-exception v4

    move-object v0, v4

    goto :goto_3

    :catch_2
    move-exception v4

    move-object v0, v4

    goto :goto_3

    :catch_3
    move-exception v4

    move-object v0, v4

    goto :goto_3
.end method

.method protected findNewestPrebundledConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Lcom/microsoft/onlineid/sts/PrebundledConfiguration;
    .locals 3
    .param p1, "environment"    # Lcom/microsoft/onlineid/internal/configuration/Environment;

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/sts/ConfigManager;->getPossiblePrebundledConfigurationFiles(Lcom/microsoft/onlineid/internal/configuration/Environment;)Ljava/util/List;

    move-result-object v1

    .line 398
    .local v1, "possibleConfigurationFiles":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/onlineid/sts/PrebundledConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 399
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/microsoft/onlineid/sts/PrebundledConfiguration;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 403
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 407
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    const-string v2, "No prebundled configuration file was found."

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    .line 411
    const/4 v2, 0x0

    .line 426
    :goto_1
    return-object v2

    .line 415
    :cond_2
    new-instance v2, Lcom/microsoft/onlineid/sts/ConfigManager$1;

    invoke-direct {v2, p0}, Lcom/microsoft/onlineid/sts/ConfigManager$1;-><init>(Lcom/microsoft/onlineid/sts/ConfigManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 426
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;

    goto :goto_1
.end method

.method protected getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    return-object v0
.end method

.method public getCurrentConfigVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig;->Version:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/ServerConfig;->getString(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPossiblePrebundledConfigurationFiles(Lcom/microsoft/onlineid/internal/configuration/Environment;)Ljava/util/List;
    .locals 8
    .param p1, "environment"    # Lcom/microsoft/onlineid/internal/configuration/Environment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/Environment;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/onlineid/sts/PrebundledConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getEnvironmentName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "environmentName":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/microsoft/onlineid/sts/PrebundledConfiguration;

    const/4 v3, 0x0

    new-instance v4, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_applicationContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msa-sdk/config/ppcrlconfig600-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_applicationContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msa/config/ppcrlconfig600-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method protected getServiceFinder()Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_serviceFinder:Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    return-object v0
.end method

.method protected getStorage()Lcom/microsoft/onlineid/internal/storage/TypedStorage;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    return-object v0
.end method

.method protected getTransportFactory()Lcom/microsoft/onlineid/internal/transport/TransportFactory;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/ConfigManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public hasConfigBeenUpdatedRecently(J)Z
    .locals 5
    .param p1, "configLastDownloadedTime"    # J

    .prologue
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v2

    sget-object v3, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MinSecondsBetweenConfigDownloads:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    .line 152
    invoke-virtual {v2, v3}, Lcom/microsoft/onlineid/sts/ServerConfig;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClientConfigVersionOlder(Ljava/lang/String;)Z
    .locals 6
    .param p1, "clientConfigVersion"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 130
    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getCurrentConfigVersion()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {p1, v2}, Lcom/microsoft/onlineid/sts/ConfigManager;->compareVersions(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v1, 0x1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid client version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected loadPrebundledConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Lcom/microsoft/onlineid/sts/PrebundledConfiguration;
    .locals 6
    .param p1, "environment"    # Lcom/microsoft/onlineid/internal/configuration/Environment;

    .prologue
    const/4 v3, 0x0

    .line 321
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/sts/ConfigManager;->findNewestPrebundledConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Lcom/microsoft/onlineid/sts/PrebundledConfiguration;

    move-result-object v0

    .line 323
    .local v0, "configFile":Lcom/microsoft/onlineid/sts/PrebundledConfiguration;
    if-nez v0, :cond_1

    move-object v0, v3

    .line 368
    .end local v0    # "configFile":Lcom/microsoft/onlineid/sts/PrebundledConfiguration;
    :cond_0
    :goto_0
    return-object v0

    .line 328
    .restart local v0    # "configFile":Lcom/microsoft/onlineid/sts/PrebundledConfiguration;
    :cond_1
    const/4 v2, 0x0

    .line 332
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->getConfigFileStream()Ljava/io/InputStream;

    move-result-object v2

    .line 333
    invoke-virtual {p0, v2, p1}, Lcom/microsoft/onlineid/sts/ConfigManager;->parseConfig(Ljava/io/InputStream;Lcom/microsoft/onlineid/internal/configuration/Environment;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Succesfully loaded prebundled config file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 336
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getCurrentConfigVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getEnvironmentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 337
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->getConfigDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 335
    invoke-static {v4}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prebundled config file potentially expired ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->getConfigDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), attempting download."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :cond_2
    if-eqz v2, :cond_0

    .line 360
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 362
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 356
    :cond_3
    if-eqz v2, :cond_4

    .line 360
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_4
    :goto_1
    move-object v0, v3

    .line 368
    goto/16 :goto_0

    .line 347
    :catch_1
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "Failed to load prebundled configuration."

    invoke-static {v4, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 356
    if-eqz v2, :cond_4

    .line 360
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 362
    :catch_2
    move-exception v4

    goto :goto_1

    .line 356
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_5

    .line 360
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 364
    :cond_5
    :goto_2
    throw v3

    .line 362
    :catch_3
    move-exception v4

    goto :goto_1

    :catch_4
    move-exception v4

    goto :goto_2
.end method

.method protected parseConfig(Ljava/io/InputStream;Lcom/microsoft/onlineid/internal/configuration/Environment;)Z
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "environment"    # Lcom/microsoft/onlineid/internal/configuration/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 520
    const/4 v4, 0x0

    .line 524
    .local v4, "result":Z
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 525
    .local v3, "rawParser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v3, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/ServerConfig;->getNgcCloudPinLength()Ljava/lang/Integer;

    move-result-object v0

    .line 529
    .local v0, "cloudPinLength":Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/ServerConfig;->edit()Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    move-result-object v1

    .line 530
    .local v1, "editor":Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->clear()Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    .line 531
    sget-object v5, Lcom/microsoft/onlineid/sts/ServerConfig;->EnvironmentName:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getEnvironmentName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setString(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/lang/String;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    .line 532
    sget-object v5, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Configuration:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getConfigUrl()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;Ljava/net/URL;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    .line 535
    sget-object v5, Lcom/microsoft/onlineid/sts/ServerConfig;->NgcCloudPinLength:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;I)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    .line 538
    new-instance v2, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;

    invoke-direct {v2, v3, v1}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/ServerConfig$Editor;)V

    .line 539
    .local v2, "parser":Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->parse()V

    .line 543
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 547
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 550
    return v4

    .line 547
    .end local v0    # "cloudPinLength":Ljava/lang/Integer;
    .end local v1    # "editor":Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    .end local v2    # "parser":Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;
    .end local v3    # "rawParser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v5

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v5
.end method

.method public switchEnvironment(Lcom/microsoft/onlineid/internal/configuration/Environment;)Z
    .locals 1
    .param p1, "newEnvironment"    # Lcom/microsoft/onlineid/internal/configuration/Environment;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/ServerConfig;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/configuration/Environment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/sts/ConfigManager;->downloadConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Z

    move-result v0

    goto :goto_0
.end method

.method public update()Z
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/ServerConfig;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/ConfigManager;->downloadConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Z

    move-result v0

    return v0
.end method

.method public updateIfFirstDownloadNeeded()Z
    .locals 8

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getCurrentConfigVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/microsoft/onlineid/sts/ConfigManager;->compareVersions(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/ServerConfig;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v2

    .line 193
    .local v2, "environment":Lcom/microsoft/onlineid/internal/configuration/Environment;
    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/sts/ConfigManager;->loadPrebundledConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Lcom/microsoft/onlineid/sts/PrebundledConfiguration;

    move-result-object v0

    .line 196
    .local v0, "bundledConfig":Lcom/microsoft/onlineid/sts/PrebundledConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->isExpired()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getServiceFinder()Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;->doesUntrustedPotentialMasterExist()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    :cond_0
    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/sts/ConfigManager;->downloadConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Z

    move-result v1

    .line 200
    .local v1, "downloadResult":Z
    if-nez v1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/ServerConfig;->markDownloadNeeded()Z

    .line 207
    const/4 v3, 0x0

    .line 212
    .end local v0    # "bundledConfig":Lcom/microsoft/onlineid/sts/PrebundledConfiguration;
    .end local v1    # "downloadResult":Z
    .end local v2    # "environment":Lcom/microsoft/onlineid/internal/configuration/Environment;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public updateIfNeeded(Ljava/lang/String;)Z
    .locals 8
    .param p1, "desiredVersion"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 226
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getStorage()Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readConfigLastDownloadedTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/microsoft/onlineid/sts/ConfigManager;->hasConfigBeenUpdatedRecently(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v2

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getCurrentConfigVersion()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "currentVersion":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Checking for config update from version \"%s\" to version \"%s\""

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object p1, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 240
    :try_start_0
    invoke-static {p1, v0}, Lcom/microsoft/onlineid/sts/ConfigManager;->compareVersions(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ConfigManager;->getConfig()Lcom/microsoft/onlineid/sts/ServerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/ServerConfig;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/sts/ConfigManager;->downloadConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Z

    move-result v2

    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 247
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid server configuration requested: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 248
    goto :goto_0
.end method
