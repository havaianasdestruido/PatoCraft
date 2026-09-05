.class Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;
.super Ljava/lang/Object;
.source "XLEAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/XLEAsyncTask;-><init>(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/XLEAsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    .prologue
    .line 16
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;, "Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;"
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;->this$0:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 19
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;, "Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;"
    const/4 v1, 0x0

    .line 20
    .local v1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;->this$0:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    iget-boolean v2, v2, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    if-nez v2, :cond_0

    .line 21
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;->this$0:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->doInBackground()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 25
    .end local v1    # "result":Ljava/lang/Object;, "TResult;"
    .local v0, "r":Ljava/lang/Object;, "TResult;"
    .local v0, "result":Ljava/lang/Object;, "TResult;"
    :goto_0
    new-instance v2, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1$1;

    invoke-direct {v2, p0, v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1$1;-><init>(Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    .line 36
    return-void

    .end local v0    # "result":Ljava/lang/Object;, "TResult;"
    .restart local v1    # "result":Ljava/lang/Object;, "TResult;"
    :cond_0
    move-object v0, v1

    .end local v1    # "result":Ljava/lang/Object;, "TResult;"
    .local v0, "result":Ljava/lang/Object;, "TResult;"
    goto :goto_0
.end method
