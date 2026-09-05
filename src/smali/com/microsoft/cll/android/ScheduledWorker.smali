.class public abstract Lcom/microsoft/cll/android/ScheduledWorker;
.super Ljava/lang/Object;
.source "ScheduledWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected executor:Ljava/util/concurrent/ScheduledExecutorService;

.field protected interval:J

.field protected isPaused:Z

.field protected nextExecution:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/microsoft/cll/android/ScheduledWorker;->interval:J

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/cll/android/ScheduledWorker;->isPaused:Z

    .line 21
    return-void
.end method

.method private setupExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 7
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/microsoft/cll/android/ScheduledWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/microsoft/cll/android/ScheduledWorker;->interval:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/ScheduledWorker;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    .line 48
    return-void
.end method


# virtual methods
.method protected pause()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/microsoft/cll/android/ScheduledWorker;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/cll/android/ScheduledWorker;->isPaused:Z

    .line 38
    return-void
.end method

.method protected resume(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/ScheduledWorker;->setupExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/cll/android/ScheduledWorker;->isPaused:Z

    .line 43
    return-void
.end method

.method public abstract run()V
.end method

.method protected start(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/ScheduledWorker;->setupExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 27
    return-void
.end method

.method protected stop()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/microsoft/cll/android/ScheduledWorker;->nextExecution:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 32
    return-void
.end method
