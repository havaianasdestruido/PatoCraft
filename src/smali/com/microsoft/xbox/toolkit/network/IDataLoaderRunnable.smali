.class public abstract Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
.super Ljava/lang/Object;
.source "IDataLoaderRunnable.java"


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
.field protected retryCountOnTokenError:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    .local p0, "this":Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;, "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;->retryCountOnTokenError:I

    return-void
.end method


# virtual methods
.method public abstract buildData()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation
.end method

.method public abstract getDefaultErrorCode()J
.end method

.method public getShouldRetryCountOnTokenError()I
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;, "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<TT;>;"
    iget v0, p0, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;->retryCountOnTokenError:I

    return v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;, "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onPostExcute(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onPreExecute()V
.end method
