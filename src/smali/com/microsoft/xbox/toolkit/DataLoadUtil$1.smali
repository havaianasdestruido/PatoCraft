.class final Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "DataLoadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/DataLoadUtil;->StartLoadFromUI(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$lastRefreshedTime:Ljava/util/Date;

.field final synthetic val$lifetime:J

.field final synthetic val$loadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field final synthetic val$runner:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;


# direct methods
.method constructor <init>(JLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)V
    .locals 1

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$lifetime:J

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$lastRefreshedTime:Ljava/util/Date;

    iput-object p4, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$loadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    iput-object p5, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$runner:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkShouldExecute()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->forceLoad:Z

    return v0
.end method

.method protected loadDataInBackground()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 41
    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->forceLoad:Z

    iget-wide v2, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$lifetime:J

    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$lastRefreshedTime:Ljava/util/Date;

    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$loadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    iget-object v6, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$runner:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onError()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onNoAction()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "result":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
