.class public Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;
.super Ljava/lang/Object;
.source "NopTimedAnalyticsEvent.java"

# interfaces
.implements Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public bridge synthetic setLabel(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;->setLabel(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 15
    return-object p0
.end method

.method public bridge synthetic start()Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;->start()Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public start()Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;
    .locals 0

    .prologue
    .line 22
    return-object p0
.end method
