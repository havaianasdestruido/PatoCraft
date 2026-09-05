.class public Lcom/microsoft/cll/android/AndroidLogger;
.super Ljava/lang/Object;
.source "AndroidLogger.java"

# interfaces
.implements Lcom/microsoft/cll/android/ILogger;


# static fields
.field private static INSTANCE:Lcom/microsoft/cll/android/AndroidLogger;

.field private static InstanceLock:Ljava/lang/Object;


# instance fields
.field private verbosity:Lcom/microsoft/cll/android/Verbosity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/microsoft/cll/android/AndroidLogger;->InstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/microsoft/cll/android/Verbosity;->NONE:Lcom/microsoft/cll/android/Verbosity;

    invoke-virtual {p0, v0}, Lcom/microsoft/cll/android/AndroidLogger;->setVerbosity(Lcom/microsoft/cll/android/Verbosity;)V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/microsoft/cll/android/ILogger;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/microsoft/cll/android/AndroidLogger;->INSTANCE:Lcom/microsoft/cll/android/AndroidLogger;

    if-nez v0, :cond_1

    .line 17
    sget-object v1, Lcom/microsoft/cll/android/AndroidLogger;->InstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcom/microsoft/cll/android/AndroidLogger;->INSTANCE:Lcom/microsoft/cll/android/AndroidLogger;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/microsoft/cll/android/AndroidLogger;

    invoke-direct {v0}, Lcom/microsoft/cll/android/AndroidLogger;-><init>()V

    sput-object v0, Lcom/microsoft/cll/android/AndroidLogger;->INSTANCE:Lcom/microsoft/cll/android/AndroidLogger;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Lcom/microsoft/cll/android/AndroidLogger;->INSTANCE:Lcom/microsoft/cll/android/AndroidLogger;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidLogger;->verbosity:Lcom/microsoft/cll/android/Verbosity;

    sget-object v1, Lcom/microsoft/cll/android/Verbosity;->ERROR:Lcom/microsoft/cll/android/Verbosity;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidLogger;->verbosity:Lcom/microsoft/cll/android/Verbosity;

    sget-object v1, Lcom/microsoft/cll/android/Verbosity;->WARN:Lcom/microsoft/cll/android/Verbosity;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidLogger;->verbosity:Lcom/microsoft/cll/android/Verbosity;

    sget-object v1, Lcom/microsoft/cll/android/Verbosity;->INFO:Lcom/microsoft/cll/android/Verbosity;

    if-ne v0, v1, :cond_1

    .line 79
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    return-void
.end method

.method public getVerbosity()Lcom/microsoft/cll/android/Verbosity;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidLogger;->verbosity:Lcom/microsoft/cll/android/Verbosity;

    return-object v0
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidLogger;->verbosity:Lcom/microsoft/cll/android/Verbosity;

    sget-object v1, Lcom/microsoft/cll/android/Verbosity;->INFO:Lcom/microsoft/cll/android/Verbosity;

    if-ne v0, v1, :cond_0

    .line 55
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return-void
.end method

.method public setVerbosity(Lcom/microsoft/cll/android/Verbosity;)V
    .locals 0
    .param p1, "verbosity"    # Lcom/microsoft/cll/android/Verbosity;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/microsoft/cll/android/AndroidLogger;->verbosity:Lcom/microsoft/cll/android/Verbosity;

    .line 40
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidLogger;->verbosity:Lcom/microsoft/cll/android/Verbosity;

    sget-object v1, Lcom/microsoft/cll/android/Verbosity;->WARN:Lcom/microsoft/cll/android/Verbosity;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/AndroidLogger;->verbosity:Lcom/microsoft/cll/android/Verbosity;

    sget-object v1, Lcom/microsoft/cll/android/Verbosity;->INFO:Lcom/microsoft/cll/android/Verbosity;

    if-ne v0, v1, :cond_1

    .line 67
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_1
    return-void
.end method
