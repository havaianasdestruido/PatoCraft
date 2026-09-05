.class public Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader$Result;
.super Lcom/microsoft/xbox/idp/toolkit/LoaderResult;
.source "EventInitializationLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/EventInitializationLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/LoaderResult",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/microsoft/xbox/idp/toolkit/HttpError;)V
    .locals 1
    .param p1, "error"    # Lcom/microsoft/xbox/idp/toolkit/HttpError;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;-><init>(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    .line 29
    return-void
.end method


# virtual methods
.method public isReleased()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
