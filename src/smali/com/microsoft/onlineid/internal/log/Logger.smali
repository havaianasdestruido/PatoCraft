.class public Lcom/microsoft/onlineid/internal/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/microsoft/onlineid/internal/log/LogInstance;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/log/LogInstance;-><init>()V

    sput-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static error(Lcom/microsoft/onlineid/internal/log/IRedactable;)V
    .locals 2
    .param p0, "message"    # Lcom/microsoft/onlineid/internal/log/IRedactable;

    .prologue
    .line 129
    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logRedactedMessage(Lcom/microsoft/onlineid/internal/log/IRedactable;I)V

    .line 130
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 119
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 140
    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, p1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 141
    return-void
.end method

.method public static getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "MSA"

    return-object v0
.end method

.method public static info(Lcom/microsoft/onlineid/internal/log/IRedactable;)V
    .locals 2
    .param p0, "message"    # Lcom/microsoft/onlineid/internal/log/IRedactable;

    .prologue
    .line 65
    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logRedactedMessage(Lcom/microsoft/onlineid/internal/log/IRedactable;I)V

    .line 66
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, p1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 77
    return-void
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 6
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 150
    const-class v2, Lcom/microsoft/onlineid/internal/log/Logger;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getInstance(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/configuration/Settings;

    move-result-object v0

    .line 152
    .local v0, "settings":Lcom/microsoft/onlineid/internal/configuration/Settings;
    sget-object v1, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    if-nez v1, :cond_0

    .line 154
    new-instance v1, Lcom/microsoft/onlineid/internal/log/LogInstance;

    const-string v3, "isRedactionEnabled"

    .line 155
    invoke-virtual {v0, v3}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "isLoggingEnabled"

    .line 156
    invoke-virtual {v0, v4}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v1, v3, v4, v5}, Lcom/microsoft/onlineid/internal/log/LogInstance;-><init>(ZZZ)V

    sput-object v1, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    monitor-exit v2

    return-void

    .line 161
    :cond_0
    :try_start_1
    sget-object v1, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const-string v3, "isLoggingEnabled"

    .line 162
    invoke-virtual {v0, v3}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/microsoft/onlineid/internal/log/LogInstance;->setIsLoggingEnabled(Z)V

    .line 163
    sget-object v1, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const-string v3, "isRedactionEnabled"

    invoke-virtual {v0, v3}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/microsoft/onlineid/internal/log/LogInstance;->setIsRedactionEnable(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    .end local v0    # "settings":Lcom/microsoft/onlineid/internal/configuration/Settings;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static setLogInstance(Lcom/microsoft/onlineid/internal/log/LogInstance;)V
    .locals 0
    .param p0, "loggerInstance"    # Lcom/microsoft/onlineid/internal/log/LogInstance;

    .prologue
    .line 185
    sput-object p0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    .line 186
    return-void
.end method

.method public static setStackTraceLoggingOption(Z)V
    .locals 1
    .param p0, "enableStackTraceLogging"    # Z

    .prologue
    .line 175
    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    invoke-virtual {v0, p0}, Lcom/microsoft/onlineid/internal/log/LogInstance;->setIsStackTraceLoggingEnabled(Z)V

    .line 176
    return-void
.end method

.method public static shouldRedact()Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/log/LogInstance;->shouldRedact()Z

    move-result v0

    return v0
.end method

.method public static warning(Lcom/microsoft/onlineid/internal/log/IRedactable;)V
    .locals 2
    .param p0, "message"    # Lcom/microsoft/onlineid/internal/log/IRedactable;

    .prologue
    .line 97
    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logRedactedMessage(Lcom/microsoft/onlineid/internal/log/IRedactable;I)V

    .line 98
    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    sget-object v0, Lcom/microsoft/onlineid/internal/log/Logger;->logInstance:Lcom/microsoft/onlineid/internal/log/LogInstance;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, p1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 109
    return-void
.end method
