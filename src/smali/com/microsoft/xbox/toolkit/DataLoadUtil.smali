.class public Lcom/microsoft/xbox/toolkit/DataLoadUtil;
.super Ljava/lang/Object;
.source "DataLoadUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 17
    .param p0, "forceLoad"    # Z
    .param p1, "lifetime"    # J
    .param p3, "lastRefreshedTime"    # Ljava/util/Date;
    .param p4, "loadingStatus"    # Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZJ",
            "Ljava/util/Date;",
            "Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable",
            "<TT;>;)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p5, "runner":Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;, "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<TT;>;"
    invoke-static/range {p4 .. p4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 54
    invoke-static/range {p5 .. p5}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 55
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 60
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->waitForNotLoading()Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;

    move-result-object v10

    .line 61
    .local v10, "waitResult":Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;
    iget-boolean v12, v10, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;->waited:Z

    if-nez v12, :cond_4

    .line 63
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/XLEUtil;->shouldRefresh(Ljava/util/Date;J)Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz p0, :cond_3

    .line 64
    :cond_0
    new-instance v12, Lcom/microsoft/xbox/toolkit/DataLoadUtil$2;

    move-object/from16 v0, p5

    invoke-direct {v12, v0}, Lcom/microsoft/xbox/toolkit/DataLoadUtil$2;-><init>(Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)V

    invoke-static {v12}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadSend(Ljava/lang/Runnable;)V

    .line 72
    const/4 v4, 0x0

    .line 73
    .local v4, "error":Lcom/microsoft/xbox/toolkit/XLEException;
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;->getShouldRetryCountOnTokenError()I

    move-result v9

    .line 74
    .local v9, "retryCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-gt v7, v9, :cond_2

    .line 75
    const/4 v4, 0x0

    .line 77
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;->buildData()Ljava/lang/Object;

    move-result-object v8

    .line 79
    .local v8, "result":Ljava/lang/Object;, "TT;"
    const/4 v12, 0x0

    sget-object v13, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-object/from16 v0, p5

    invoke-static {v8, v0, v12, v13}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->postExecute(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    .line 81
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->setSuccess()V

    .line 82
    new-instance v12, Lcom/microsoft/xbox/toolkit/AsyncResult;

    sget-object v13, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-object/from16 v0, p5

    invoke-direct {v12, v8, v0, v4, v13}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .end local v4    # "error":Lcom/microsoft/xbox/toolkit/XLEException;
    .end local v7    # "i":I
    .end local v8    # "result":Ljava/lang/Object;, "TT;"
    .end local v9    # "retryCount":I
    :goto_1
    return-object v12

    .line 84
    .restart local v4    # "error":Lcom/microsoft/xbox/toolkit/XLEException;
    .restart local v7    # "i":I
    .restart local v9    # "retryCount":I
    :catch_0
    move-exception v11

    .line 85
    .local v11, "xex":Lcom/microsoft/xbox/toolkit/XLEException;
    move-object v4, v11

    .line 86
    invoke-virtual {v11}, Lcom/microsoft/xbox/toolkit/XLEException;->getErrorCode()J

    move-result-wide v12

    const-wide/16 v14, 0x3fc

    cmp-long v12, v12, v14

    if-nez v12, :cond_1

    .line 74
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v11}, Lcom/microsoft/xbox/toolkit/XLEException;->getErrorCode()J

    move-result-wide v12

    const-wide/16 v14, 0x3ed

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    .line 99
    .end local v11    # "xex":Lcom/microsoft/xbox/toolkit/XLEException;
    :cond_2
    :goto_2
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->setFailed(Lcom/microsoft/xbox/toolkit/XLEException;)V

    .line 100
    const/4 v12, 0x0

    sget-object v13, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-object/from16 v0, p5

    invoke-static {v12, v0, v4, v13}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->safeReturnResult(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v12

    goto :goto_1

    .line 93
    :catch_1
    move-exception v5

    .line 94
    .local v5, "ex":Ljava/lang/Exception;
    new-instance v4, Lcom/microsoft/xbox/toolkit/XLEException;

    .end local v4    # "error":Lcom/microsoft/xbox/toolkit/XLEException;
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;->getDefaultErrorCode()J

    move-result-wide v12

    invoke-direct {v4, v12, v13, v5}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    .line 95
    .restart local v4    # "error":Lcom/microsoft/xbox/toolkit/XLEException;
    goto :goto_2

    .line 103
    .end local v4    # "error":Lcom/microsoft/xbox/toolkit/XLEException;
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v7    # "i":I
    .end local v9    # "retryCount":I
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->setSuccess()V

    .line 104
    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-object/from16 v0, p5

    invoke-static {v12, v0, v13, v14}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->safeReturnResult(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v12

    goto :goto_1

    .line 109
    :cond_4
    iget-object v6, v10, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;->error:Lcom/microsoft/xbox/toolkit/XLEException;

    .line 110
    .local v6, "exception":Lcom/microsoft/xbox/toolkit/XLEException;
    if-nez v6, :cond_5

    .line 111
    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-object/from16 v0, p5

    invoke-static {v12, v0, v13, v14}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->safeReturnResult(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v12

    goto :goto_1

    .line 113
    :cond_5
    const/4 v12, 0x0

    sget-object v13, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-object/from16 v0, p5

    invoke-static {v12, v0, v6, v13}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->safeReturnResult(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v12

    goto :goto_1
.end method

.method public static StartLoadFromUI(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
    .locals 7
    .param p0, "forceLoad"    # Z
    .param p1, "lifetime"    # J
    .param p3, "lastRefreshedTime"    # Ljava/util/Date;
    .param p4, "loadingStatus"    # Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZJ",
            "Ljava/util/Date;",
            "Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable",
            "<TT;>;)",
            "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;"
        }
    .end annotation

    .prologue
    .line 14
    .local p5, "runner":Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;, "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<TT;>;"
    new-instance v1, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;-><init>(JLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)V

    .line 45
    .local v1, "task":Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;, "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask<TT;>;"
    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->execute()V

    .line 47
    return-object v1
.end method

.method private static postExecute(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 1
    .param p2, "error"    # Lcom/microsoft/xbox/toolkit/XLEException;
    .param p3, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable",
            "<TT;>;",
            "Lcom/microsoft/xbox/toolkit/XLEException;",
            "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "result":Ljava/lang/Object;, "TT;"
    .local p1, "runner":Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;, "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<TT;>;"
    new-instance v0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$3;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/microsoft/xbox/toolkit/DataLoadUtil$3;-><init>(Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadSend(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method private static safeReturnResult(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 1
    .param p2, "error"    # Lcom/microsoft/xbox/toolkit/XLEException;
    .param p3, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable",
            "<TT;>;",
            "Lcom/microsoft/xbox/toolkit/XLEException;",
            "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "result":Ljava/lang/Object;, "TT;"
    .local p1, "runner":Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;, "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<TT;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->postExecute(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    .line 121
    new-instance v0, Lcom/microsoft/xbox/toolkit/AsyncResult;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-object v0
.end method
