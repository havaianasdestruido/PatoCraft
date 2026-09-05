.class public Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;
.super Ljava/lang/Object;
.source "CrashErrorReportHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler$InstanceHolder;
    }
.end annotation


# static fields
.field private static defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static reportManager:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 15
    new-instance v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;-><init>()V

    sput-object v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;->reportManager:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler$1;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler$InstanceHolder;->access$100()Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 48
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 50
    :cond_0
    sget-object v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;->reportManager:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendPriorCrashReport(Landroid/content/Context;)V
    .locals 1
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 84
    sget-object v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;->reportManager:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->checkAndSendCrashReportWithUserPermission(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public setSendScreenshot(Z)V
    .locals 1
    .param p1, "sendScreenshotNewValue"    # Z

    .prologue
    .line 95
    sget-object v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;->reportManager:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->setSendScreenshot(Z)V

    .line 96
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    :try_start_0
    const-string v1, "Handling of the uncaughtException"

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 66
    sget-object v1, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;->reportManager:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-virtual {v1, p2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->generateAndSaveCrashReport(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    sget-object v1, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 75
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Error CollectPackageInformation"

    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
