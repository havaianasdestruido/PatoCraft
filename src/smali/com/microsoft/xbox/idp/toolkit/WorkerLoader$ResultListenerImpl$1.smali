.class Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$1;
.super Ljava/lang/Object;
.source "WorkerLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;->onResult(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;

.field final synthetic val$canceled:Z

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;ZLjava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;

    .prologue
    .line 122
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$1;, "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$1;"
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$1;->this$1:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;

    iput-boolean p2, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$1;->val$canceled:Z

    iput-object p3, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$1;, "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$1;"
    iget-boolean v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$1;->val$canceled:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$1;->this$1:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;->this$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->onCanceled(Ljava/lang/Object;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$1;->this$1:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;->this$0:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
