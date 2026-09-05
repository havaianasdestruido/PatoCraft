.class public Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader;
.super Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.source "StartSignInLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$MyWorker;,
        Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;,
        Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader",
        "<",
        "Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resultKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/microsoft/xbox/idp/util/ResultCache",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "cache":Lcom/microsoft/xbox/idp/util/ResultCache;, "Lcom/microsoft/xbox/idp/util/ResultCache<Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;>;"
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$MyWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$MyWorker;-><init>(Lcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$1;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected isDataReleased(Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;)Z
    .locals 1
    .param p1, "data"    # Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;->isReleased()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isDataReleased(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader;->isDataReleased(Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;)Z

    move-result v0

    return v0
.end method

.method protected releaseData(Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;)V
    .locals 0
    .param p1, "data"    # Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;->release()V

    .line 26
    return-void
.end method

.method protected bridge synthetic releaseData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader;->releaseData(Lcom/microsoft/xbox/idp/toolkit/StartSignInLoader$Result;)V

    return-void
.end method
