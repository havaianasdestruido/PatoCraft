.class Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1$1;
.super Ljava/lang/Object;
.source "XLEAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;

.field final synthetic val$r:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;

    .prologue
    .line 25
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1$1;, "Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1$1;"
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1$1;->this$1:Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1$1;->val$r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 27
    .local p0, "this":Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1$1;, "Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1$1;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1$1;->this$1:Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;->this$0:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->isBusy:Z

    .line 28
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1$1;->this$1:Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;->this$0:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    iget-boolean v0, v0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1$1;->this$1:Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;->this$0:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1$1;->val$r:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1$1;->this$1:Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;->this$0:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->access$000(Lcom/microsoft/xbox/toolkit/XLEAsyncTask;)Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1$1;->this$1:Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;->this$0:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->access$000(Lcom/microsoft/xbox/toolkit/XLEAsyncTask;)Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->execute()V

    .line 34
    :cond_0
    return-void
.end method
