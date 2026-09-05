.class public interface abstract Lcom/microsoft/cll/android/IStorage;
.super Ljava/lang/Object;
.source "IStorage.java"


# virtual methods
.method public abstract add(Lcom/microsoft/cll/android/Tuple;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/Tuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract add(Lcom/microsoft/telemetry/IJsonSerializable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract canAdd(Lcom/microsoft/cll/android/Tuple;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/Tuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation
.end method

.method public abstract canAdd(Lcom/microsoft/telemetry/IJsonSerializable;)Z
.end method

.method public abstract close()V
.end method

.method public abstract discard()V
.end method

.method public abstract drain()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/cll/android/Tuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract size()J
.end method
