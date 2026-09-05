.class public interface abstract Lcom/microsoft/onlineid/analytics/IClientAnalytics;
.super Ljava/lang/Object;
.source "IClientAnalytics.java"


# virtual methods
.method public abstract createTimedEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;
.end method

.method public abstract createTimedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;
.end method

.method public abstract logCertificates(Ljava/util/Map;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
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
.end method

.method public abstract logClockSkew(J)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
.end method

.method public abstract logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
.end method

.method public abstract logScreenView(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
.end method

.method public abstract logTotalAccountsEvent(Ljava/lang/String;II)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
.end method

.method public abstract send(Ljava/util/Map;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
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
.end method

.method public abstract setTestMode()V
.end method
