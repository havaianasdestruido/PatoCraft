.class public abstract Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;
.super Ljava/lang/Object;
.source "SingleSsoRequest.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field static final MaxTriesErrorMessage:Ljava/lang/String; = "Max SSO tries exceeded."

.field static final MaxWaitTimeForServiceBindingInMillis:I = 0xbb8


# instance fields
.field protected final _applicationContext:Landroid/content/Context;

.field protected final _clientState:Landroid/os/Bundle;

.field protected final _config:Lcom/microsoft/onlineid/sts/ServerConfig;

.field private final _lock:Ljava/lang/Object;

.field protected _msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

.field protected _serviceConnected:Z

.field protected final _storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "clientState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    .local p0, "this":Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;, "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_lock:Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_applicationContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_clientState:Landroid/os/Bundle;

    .line 80
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    .line 81
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    .line 83
    return-void
.end method

.method protected static checkForErrors(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 317
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->checkForErrors(Landroid/os/Bundle;Z)V

    .line 318
    return-void
.end method

.method static checkForErrors(Landroid/os/Bundle;Z)V
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "logError"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->hasError(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    if-eqz p1, :cond_0

    .line 337
    const-string v2, "com.microsoft.onlineid.error_code"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->get(I)Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    move-result-object v0

    .line 338
    .local v0, "error":Lcom/microsoft/onlineid/internal/sso/SsoServiceError;
    const-string v2, "com.microsoft.onlineid.error_message"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "message":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s: %s, %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "SSO error"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 341
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 340
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v2

    const-string v3, "SDK"

    const-string v4, "SSO error"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 343
    invoke-interface {v2, v3, v4, v5}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 349
    .end local v0    # "error":Lcom/microsoft/onlineid/internal/sso/SsoServiceError;
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->exceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/exception/AuthenticationException;

    move-result-object v2

    throw v2

    .line 351
    :cond_1
    return-void
.end method


# virtual methods
.method protected bind(Lcom/microsoft/onlineid/internal/sso/SsoService;)Z
    .locals 3
    .param p1, "ssoService"    # Lcom/microsoft/onlineid/internal/sso/SsoService;

    .prologue
    .line 278
    .local p0, "this":Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;, "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest<TT;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.microsoft.msa.action.SSO_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 281
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attempting to bind to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_applicationContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public getDefaultCallingParams()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 94
    .local p0, "this":Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;, "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest<TT;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v2, "params":Landroid/os/Bundle;
    :try_start_0
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_applicationContext:Landroid/content/Context;

    const-class v6, Lcom/microsoft/onlineid/internal/sso/service/MsaSsoService;

    .line 99
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v5, 0x80

    .line 98
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 102
    .local v1, "metadata":Landroid/os/Bundle;
    const-string v3, "com.microsoft.onlineid.client_package_name"

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v3, "com.microsoft.onlineid.client_sso_version"

    const-string v4, "com.microsoft.msa.service.sso_version"

    .line 105
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 103
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string v3, "com.microsoft.onlineid.client_sdk_version"

    const-string v4, "com.microsoft.msa.service.sdk_version"

    .line 108
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v3, "com.microsoft.onlineid.client_config_version"

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    sget-object v5, Lcom/microsoft/onlineid/sts/ServerConfig;->Version:Lcom/microsoft/onlineid/internal/configuration/Setting;

    .line 111
    invoke-virtual {v4, v5}, Lcom/microsoft/onlineid/sts/ServerConfig;->getString(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v3, "com.microsoft.onlineid.client_config_last_downloaded_time"

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 114
    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readConfigLastDownloadedTime()J

    move-result-wide v4

    .line 112
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 115
    const-string v3, "com.microsoft.onlineid.client_state"

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_clientState:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "metadata":Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Could not find calling SSO service meta-data."

    invoke-static {v3, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method getIsServiceConnected()Z
    .locals 1

    .prologue
    .line 253
    .local p0, "this":Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;, "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest<TT;>;"
    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_serviceConnected:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 55
    .local p0, "this":Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;, "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest<TT;>;"
    invoke-static {p2}, Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    .line 56
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_serviceConnected:Z

    .line 59
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 66
    .local p0, "this":Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;, "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_serviceConnected:Z

    .line 68
    return-void
.end method

.method public performRequest(Lcom/microsoft/onlineid/internal/sso/SsoService;)Ljava/lang/Object;
    .locals 8
    .param p1, "ssoService"    # Lcom/microsoft/onlineid/internal/sso/SsoService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/sso/SsoService;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;, "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest<TT;>;"
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    sget-object v6, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->MaxTriesForSsoRequestToSingleService:Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    invoke-virtual {v5, v6}, Lcom/microsoft/onlineid/sts/ServerConfig;->getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I

    move-result v3

    .line 138
    .local v3, "maxTries":I
    const/4 v5, 0x1

    if-ge v3, v5, :cond_0

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid MaxTriesForSsoRequestToSingleService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "error":Ljava/lang/String;
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v5

    const-string v6, "SDK"

    const-string v7, "SSO fallback"

    invoke-interface {v5, v6, v7, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 147
    const/4 v3, 0x1

    .line 150
    .end local v1    # "error":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    .line 151
    .local v4, "tries":I
    const/4 v2, 0x0

    .line 152
    .local v2, "lastException":Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;
    :goto_0
    if-gt v4, v3, :cond_1

    .line 156
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->tryPerformRequest(Lcom/microsoft/onlineid/internal/sso/SsoService;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;
    move-object v2, v0

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "e":Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;
    :cond_1
    new-instance v5, Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;

    const-string v6, "Max SSO tries exceeded."

    invoke-direct {v5, v6, v2}, Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected abstract performRequestTask()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;,
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public tryPerformRequest(Lcom/microsoft/onlineid/internal/sso/SsoService;)Ljava/lang/Object;
    .locals 10
    .param p1, "ssoService"    # Lcom/microsoft/onlineid/internal/sso/SsoService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/sso/SsoService;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;, "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "requestType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 184
    .local v0, "bound":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->bind(Lcom/microsoft/onlineid/internal/sso/SsoService;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 186
    const/4 v0, 0x1

    .line 188
    iget-object v6, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_lock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Lcom/microsoft/onlineid/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 190
    :try_start_1
    iget-boolean v5, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_serviceConnected:Z

    if-nez v5, :cond_0

    .line 192
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_lock:Ljava/lang/Object;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 194
    :cond_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :try_start_2
    iget-boolean v5, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_serviceConnected:Z

    if-eqz v5, :cond_3

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bound to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->performRequestTask()Ljava/lang/Object;
    :try_end_2
    .catch Lcom/microsoft/onlineid/exception/AuthenticationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    .line 239
    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->unbind()V

    .line 200
    :cond_1
    return-object v5

    .line 194
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Lcom/microsoft/onlineid/exception/AuthenticationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 220
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Lcom/microsoft/onlineid/exception/AuthenticationException;
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 239
    .end local v1    # "e":Lcom/microsoft/onlineid/exception/AuthenticationException;
    :catchall_1
    move-exception v5

    if-eqz v0, :cond_2

    .line 241
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->unbind()V

    :cond_2
    throw v5

    .line 204
    :cond_3
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timed out after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xbb8

    .line 205
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " milliseconds when trying to bind to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 206
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "error":Ljava/lang/String;
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    .line 209
    new-instance v5, Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;

    invoke-direct {v5, v2}, Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catch Lcom/microsoft/onlineid/exception/AuthenticationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 224
    .end local v2    # "error":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught a SecurityException while trying to bind to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", service may not be exported correctly. ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    new-instance v5, Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;

    invoke-direct {v5, v1}, Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 214
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_4
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to bind to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "errorMessage":Ljava/lang/String;
    invoke-static {v3}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    .line 217
    new-instance v5, Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;

    invoke-direct {v5, v3}, Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_8
    .catch Lcom/microsoft/onlineid/exception/AuthenticationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 232
    .end local v3    # "errorMessage":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v5, "SSO service request threw an unhandled exception."

    invoke-static {v5, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    new-instance v5, Lcom/microsoft/onlineid/exception/InternalException;

    invoke-direct {v5, v1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method

.method protected unbind()V
    .locals 1

    .prologue
    .line 298
    .local p0, "this":Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;, "Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_serviceConnected:Z

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_msaSsoService:Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;

    .line 300
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/request/SingleSsoRequest;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 301
    return-void
.end method
