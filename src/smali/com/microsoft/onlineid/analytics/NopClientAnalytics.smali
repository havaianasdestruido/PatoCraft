.class public Lcom/microsoft/onlineid/analytics/NopClientAnalytics;
.super Ljava/lang/Object;
.source "NopClientAnalytics.java"

# interfaces
.implements Lcom/microsoft/onlineid/analytics/IClientAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTimedEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;

    invoke-direct {v0}, Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;-><init>()V

    return-object v0
.end method

.method public createTimedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;

    invoke-direct {v0}, Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;-><init>()V

    return-object v0
.end method

.method public logCertificates(Ljava/util/Map;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)",
            "Lcom/microsoft/onlineid/analytics/IClientAnalytics;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "signatures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    return-object p0
.end method

.method public logClockSkew(J)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 0
    .param p1, "skew"    # J

    .prologue
    .line 86
    return-object p0
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 37
    return-object p0
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 44
    return-object p0
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Long;

    .prologue
    .line 51
    return-object p0
.end method

.method public logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    return-object p0
.end method

.method public logScreenView(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 0
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 30
    return-object p0
.end method

.method public logTotalAccountsEvent(Ljava/lang/String;II)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "oldAccountCount"    # I
    .param p3, "newAccountCount"    # I

    .prologue
    .line 58
    return-object p0
.end method

.method public send(Ljava/util/Map;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/onlineid/analytics/IClientAnalytics;"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-object p0
.end method

.method public setTestMode()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method
