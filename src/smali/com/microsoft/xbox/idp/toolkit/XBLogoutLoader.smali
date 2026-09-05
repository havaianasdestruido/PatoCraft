.class public Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader;
.super Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.source "XBLogoutLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker;,
        Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader",
        "<",
        "Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userPtr"    # J

    .prologue
    .line 12
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker;-><init>(JLcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$1;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected isDataReleased(Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;)Z
    .locals 1
    .param p1, "data"    # Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;->isReleased()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isDataReleased(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader;->isDataReleased(Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;)Z

    move-result v0

    return v0
.end method

.method protected releaseData(Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;)V
    .locals 0
    .param p1, "data"    # Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;->release()V

    .line 23
    return-void
.end method

.method protected bridge synthetic releaseData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader;->releaseData(Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;)V

    return-void
.end method
