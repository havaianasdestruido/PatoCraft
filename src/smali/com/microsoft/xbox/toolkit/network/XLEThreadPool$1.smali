.class Lcom/microsoft/xbox/toolkit/network/XLEThreadPool$1;
.super Ljava/lang/Object;
.source "XLEThreadPool.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;-><init>(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

.field final synthetic val$priority:I


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool$1;->this$0:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    iput p2, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool$1;->val$priority:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Runnable;

    .prologue
    .line 22
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEThread;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool$1;->this$0:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->access$000(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/microsoft/xbox/toolkit/XLEThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 23
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 24
    iget v1, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool$1;->val$priority:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 26
    return-object v0
.end method
