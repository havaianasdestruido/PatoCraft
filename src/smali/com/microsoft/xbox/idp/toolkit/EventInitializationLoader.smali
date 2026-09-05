.class public Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader;
.super Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.source "EventInitializationLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;,
        Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader",
        "<",
        "Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userPtr"    # J
    .param p4, "rpsTicket"    # Ljava/lang/String;
    .param p6, "resultKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Lcom/microsoft/xbox/idp/util/ResultCache",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    .local p5, "cache":Lcom/microsoft/xbox/idp/util/ResultCache;, "Lcom/microsoft/xbox/idp/util/ResultCache<Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;>;"
    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;

    const/4 v7, 0x0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$MyWorker;-><init>(JLjava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$1;)V

    invoke-direct {p0, p1, v1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected isDataReleased(Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;)Z
    .locals 1
    .param p1, "data"    # Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic isDataReleased(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader;->isDataReleased(Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;)Z

    move-result v0

    return v0
.end method

.method protected releaseData(Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;)V
    .locals 0
    .param p1, "data"    # Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;

    .prologue
    .line 24
    return-void
.end method

.method protected bridge synthetic releaseData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader;->releaseData(Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;)V

    return-void
.end method
