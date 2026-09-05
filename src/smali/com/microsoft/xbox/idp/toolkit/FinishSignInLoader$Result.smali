.class public Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Result;
.super Lcom/microsoft/xbox/idp/toolkit/LoaderResult;
.source "FinishSignInLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/LoaderResult",
        "<",
        "Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Data;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Data;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V
    .locals 0
    .param p1, "data"    # Lcom/microsoft/xbox/idp/toolkit/FinishSignInLoader$Data;
    .param p2, "error"    # Lcom/microsoft/xbox/idp/toolkit/HttpError;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;-><init>(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    .line 33
    return-void
.end method


# virtual methods
.method public isReleased()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
