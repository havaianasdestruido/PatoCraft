.class public Lcom/microsoft/xbox/toolkit/TimeMonitor;
.super Ljava/lang/Object;
.source "TimeMonitor.java"


# instance fields
.field private final NSTOMSEC:J

.field private endTicks:J

.field private startTicks:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    .line 5
    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    .line 6
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->NSTOMSEC:J

    .line 10
    return-void
.end method


# virtual methods
.method public currentTime()J
    .locals 6

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long v0, v2, v4

    .line 38
    .local v0, "elapsed":J
    return-wide v0
.end method

.method public getElapsedMs()J
    .locals 8

    .prologue
    .line 48
    const-wide/16 v0, 0x0

    .line 49
    .local v0, "end":J
    const-wide/16 v2, 0x0

    .line 50
    .local v2, "result":J
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/TimeMonitor;->getIsStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    iget-wide v4, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 52
    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    .line 56
    :goto_0
    iget-wide v4, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xf4240

    div-long v2, v4, v6

    .line 58
    :cond_0
    return-wide v2

    .line 54
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getIsEnded()Z
    .locals 4

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsStarted()Z
    .locals 4

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    .line 22
    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    .line 23
    return-void
.end method

.method public saveCurrentTime()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/TimeMonitor;->getIsStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    .line 45
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    .line 28
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    .line 34
    :cond_0
    return-void
.end method
