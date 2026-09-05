.class public Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader;
.super Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.source "FinishSignInLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;,
        Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;,
        Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader",
        "<",
        "Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;Ljava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authStatus"    # Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;
    .param p3, "cid"    # Ljava/lang/String;
    .param p5, "resultKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;",
            "Ljava/lang/String;",
            "Lcom/microsoft/xbox/idp/util/ResultCache",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    .local p4, "cache":Lcom/microsoft/xbox/idp/util/ResultCache;, "Lcom/microsoft/xbox/idp/util/ResultCache<Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;>;"
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$MyWorker;-><init>(Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;Ljava/lang/String;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$1;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected isDataReleased(Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;)Z
    .locals 1
    .param p1, "data"    # Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;->isReleased()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isDataReleased(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader;->isDataReleased(Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;)Z

    move-result v0

    return v0
.end method

.method protected releaseData(Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;)V
    .locals 0
    .param p1, "data"    # Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;->release()V

    .line 25
    return-void
.end method

.method protected bridge synthetic releaseData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader;->releaseData(Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;)V

    return-void
.end method
