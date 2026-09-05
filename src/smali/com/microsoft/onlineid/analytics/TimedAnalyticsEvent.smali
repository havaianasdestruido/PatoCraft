.class public Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;
.super Ljava/lang/Object;
.source "TimedAnalyticsEvent.java"

# interfaces
.implements Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;


# static fields
.field private static final StartTimeNotSet:J = -0x1L


# instance fields
.field private final _builder:Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

.field private _startTime:J

.field private final _tracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tracker"    # Lcom/google/android/gms/analytics/Tracker;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_startTime:J

    .line 37
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 39
    iput-object p1, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 40
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_builder:Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    .line 41
    iget-object v0, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_builder:Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    .line 42
    iget-object v0, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_builder:Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setVariable(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    .line 44
    if-eqz p4, :cond_0

    .line 46
    iget-object v0, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_builder:Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-virtual {v0, p4}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    .line 48
    :cond_0
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public end()V
    .locals 8

    .prologue
    .line 67
    iget-wide v4, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_startTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 69
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_startTime:J

    sub-long v0, v4, v6

    .line 70
    .local v0, "durationNanoseconds":J
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 72
    .local v2, "milliseconds":J
    iget-object v4, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_builder:Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    .line 73
    iget-object v4, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_builder:Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->build()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->send(Ljava/util/Map;)V

    .line 79
    .end local v0    # "durationNanoseconds":J
    .end local v2    # "milliseconds":J
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v4, "TimedAnalyticsEvent.end() called before start()."

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected send(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 89
    return-void
.end method

.method public bridge synthetic setLabel(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->setLabel(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_builder:Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    .line 54
    return-object p0
.end method

.method public bridge synthetic start()Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->start()Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public start()Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_startTime:J

    .line 61
    return-object p0
.end method
