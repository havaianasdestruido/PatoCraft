.class final Lcom/microsoft/xbox/toolkit/DataLoadUtil$2;
.super Ljava/lang/Object;
.source "DataLoadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runner:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$2;->val$runner:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$2;->val$runner:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;->onPreExecute()V

    .line 69
    return-void
.end method
