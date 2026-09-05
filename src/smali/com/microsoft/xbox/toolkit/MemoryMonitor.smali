.class public Lcom/microsoft/xbox/toolkit/MemoryMonitor;
.super Ljava/lang/Object;
.source "MemoryMonitor.java"


# static fields
.field public static final KB_TO_BYTES:I = 0x400

.field public static final MB_TO_BYTES:I = 0x100000

.field public static final MB_TO_KB:I = 0x400

.field private static instance:Lcom/microsoft/xbox/toolkit/MemoryMonitor;


# instance fields
.field private memoryInfo:Landroid/os/Debug$MemoryInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/microsoft/xbox/toolkit/MemoryMonitor;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/MemoryMonitor;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->instance:Lcom/microsoft/xbox/toolkit/MemoryMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->memoryInfo:Landroid/os/Debug$MemoryInfo;

    .line 64
    return-void
.end method

.method public static declared-synchronized getTotalPss()I
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/microsoft/xbox/toolkit/MemoryMonitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->instance:Lcom/microsoft/xbox/toolkit/MemoryMonitor;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->memoryInfo:Landroid/os/Debug$MemoryInfo;

    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 46
    sget-object v0, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->instance:Lcom/microsoft/xbox/toolkit/MemoryMonitor;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->memoryInfo:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static instance()Lcom/microsoft/xbox/toolkit/MemoryMonitor;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->instance:Lcom/microsoft/xbox/toolkit/MemoryMonitor;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getDalvikFreeKb()I
    .locals 3

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->memoryInfo:Landroid/os/Debug$MemoryInfo;

    invoke-static {v2}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 30
    const-string v2, "activity"

    invoke-static {v2}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    mul-int/lit16 v0, v2, 0x400

    .line 31
    .local v0, "availableKb":I
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->getDalvikUsedKb()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    sub-int v1, v0, v2

    .line 33
    .local v1, "remainingKb":I
    monitor-exit p0

    return v1

    .line 28
    .end local v0    # "availableKb":I
    .end local v1    # "remainingKb":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getDalvikFreeMb()I
    .locals 1

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->getDalvikFreeKb()I

    move-result v0

    div-int/lit16 v0, v0, 0x400
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDalvikUsedKb()I
    .locals 2

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->memoryInfo:Landroid/os/Debug$MemoryInfo;

    invoke-static {v1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 39
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->memoryInfo:Landroid/os/Debug$MemoryInfo;

    iget v0, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .local v0, "dalvikKb":I
    monitor-exit p0

    return v0

    .line 37
    .end local v0    # "dalvikKb":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getMemoryClass()I
    .locals 1

    .prologue
    .line 60
    const-string v0, "activity"

    invoke-static {v0}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getUsedKb()I
    .locals 3

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->memoryInfo:Landroid/os/Debug$MemoryInfo;

    invoke-static {v1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 53
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->memoryInfo:Landroid/os/Debug$MemoryInfo;

    iget v1, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->memoryInfo:Landroid/os/Debug$MemoryInfo;

    iget v2, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int v0, v1, v2

    .line 55
    .local v0, "usedKb":I
    monitor-exit p0

    return v0

    .line 50
    .end local v0    # "usedKb":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
