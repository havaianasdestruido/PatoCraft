.class final Lcom/microsoft/xbox/toolkit/DataLoadUtil$3;
.super Ljava/lang/Object;
.source "DataLoadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/DataLoadUtil;->postExecute(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$error:Lcom/microsoft/xbox/toolkit/XLEException;

.field final synthetic val$result:Ljava/lang/Object;

.field final synthetic val$runner:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

.field final synthetic val$status:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$3;->val$runner:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$3;->val$result:Ljava/lang/Object;

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$3;->val$error:Lcom/microsoft/xbox/toolkit/XLEException;

    iput-object p4, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$3;->val$status:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 129
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$3;->val$runner:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

    new-instance v1, Lcom/microsoft/xbox/toolkit/AsyncResult;

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$3;->val$result:Ljava/lang/Object;

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$3;->val$runner:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$3;->val$error:Lcom/microsoft/xbox/toolkit/XLEException;

    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$3;->val$status:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;->onPostExcute(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 131
    return-void
.end method
