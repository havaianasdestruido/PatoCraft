.class public interface abstract Lcom/microsoft/cll/android/ICll;
.super Ljava/lang/Object;
.source "ICll.java"


# virtual methods
.method public abstract SubscribeCllEvents(Lcom/microsoft/cll/android/ICllEvents;)V
.end method

.method public abstract getAppUserId()Ljava/lang/String;
.end method

.method public abstract log(LMicrosoft/Telemetry/Base;)V
.end method

.method public abstract log(LMicrosoft/Telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMicrosoft/Telemetry/Base;",
            "Lcom/microsoft/cll/android/EventEnums$Latency;",
            "Lcom/microsoft/cll/android/EventEnums$Persistence;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;D",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract log(LMicrosoft/Telemetry/Base;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMicrosoft/Telemetry/Base;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract log(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/microsoft/cll/android/EventEnums$Latency;",
            "Lcom/microsoft/cll/android/EventEnums$Persistence;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;D",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract send()V
.end method

.method public abstract setAppUserId(Ljava/lang/String;)V
.end method

.method public abstract setDebugVerbosity(Lcom/microsoft/cll/android/Verbosity;)V
.end method

.method public abstract setEndpointUrl(Ljava/lang/String;)V
.end method

.method public abstract setExperimentId(Ljava/lang/String;)V
.end method

.method public abstract setXuidCallback(Lcom/microsoft/cll/android/ITicketCallback;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract synchronize()V
.end method

.method public abstract useLegacyCS(Z)V
.end method
