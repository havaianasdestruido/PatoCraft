.class public abstract Lcom/microsoft/xbox/idp/toolkit/LoaderResult;
.super Ljava/lang/Object;
.source "LoaderResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final error:Lcom/microsoft/xbox/idp/toolkit/HttpError;

.field private final exception:Ljava/lang/Exception;


# direct methods
.method protected constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/LoaderResult;, "Lcom/microsoft/xbox/idp/toolkit/LoaderResult<TT;>;"
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->data:Ljava/lang/Object;

    .line 19
    iput-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->error:Lcom/microsoft/xbox/idp/toolkit/HttpError;

    .line 20
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->exception:Ljava/lang/Exception;

    .line 21
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V
    .locals 1
    .param p2, "error"    # Lcom/microsoft/xbox/idp/toolkit/HttpError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/microsoft/xbox/idp/toolkit/HttpError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/LoaderResult;, "Lcom/microsoft/xbox/idp/toolkit/LoaderResult<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->data:Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->error:Lcom/microsoft/xbox/idp/toolkit/HttpError;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->exception:Ljava/lang/Exception;

    .line 15
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/LoaderResult;, "Lcom/microsoft/xbox/idp/toolkit/LoaderResult<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/LoaderResult;, "Lcom/microsoft/xbox/idp/toolkit/LoaderResult<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->error:Lcom/microsoft/xbox/idp/toolkit/HttpError;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/LoaderResult;, "Lcom/microsoft/xbox/idp/toolkit/LoaderResult<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/LoaderResult;, "Lcom/microsoft/xbox/idp/toolkit/LoaderResult<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/LoaderResult;, "Lcom/microsoft/xbox/idp/toolkit/LoaderResult<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->error:Lcom/microsoft/xbox/idp/toolkit/HttpError;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasException()Z
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/LoaderResult;, "Lcom/microsoft/xbox/idp/toolkit/LoaderResult<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/LoaderResult;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isReleased()Z
.end method

.method public abstract release()V
.end method
