.class public interface abstract Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;
.super Ljava/lang/Object;
.source "ObjectLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Cache"
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(Ljava/lang/Object;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<TT;>;)",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<TT;>;"
        }
    .end annotation
.end method
