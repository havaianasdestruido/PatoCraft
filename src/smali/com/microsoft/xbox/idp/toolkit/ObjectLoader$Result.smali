.class public Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;
.super Lcom/microsoft/xbox/idp/toolkit/LoaderResult;
.source "ObjectLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/microsoft/xbox/idp/toolkit/LoaderResult",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/microsoft/xbox/idp/toolkit/HttpError;)V
    .locals 1
    .param p1, "error"    # Lcom/microsoft/xbox/idp/toolkit/HttpError;

    .prologue
    .line 51
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;-><init>(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    .line 52
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;-><init>(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    .line 48
    return-void
.end method


# virtual methods
.method public isReleased()Z
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 61
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<TT;>;"
    return-void
.end method
