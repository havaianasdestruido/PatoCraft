.class public Lcom/microsoft/xbox/idp/toolkit/XTokenLoader;
.super Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.source "XTokenLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;,
        Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;,
        Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader",
        "<",
        "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userPtr"    # J

    .prologue
    const/4 v4, 0x0

    .line 15
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader;-><init>(Landroid/content/Context;JLcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userPtr"    # J
    .param p5, "resultKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcom/microsoft/xbox/idp/util/ResultCache",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p4, "cache":Lcom/microsoft/xbox/idp/util/ResultCache;, "Lcom/microsoft/xbox/idp/util/ResultCache<Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;>;"
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$MyWorker;-><init>(JLcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected isDataReleased(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;)Z
    .locals 1
    .param p1, "data"    # Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;->isReleased()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isDataReleased(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader;->isDataReleased(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;)Z

    move-result v0

    return v0
.end method

.method protected releaseData(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;)V
    .locals 0
    .param p1, "data"    # Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;->release()V

    .line 30
    return-void
.end method

.method protected bridge synthetic releaseData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader;->releaseData(Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;)V

    return-void
.end method
