.class final Lcom/microsoft/xbox/toolkit/ThreadManager$1;
.super Ljava/lang/Object;
.source "ThreadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadSend(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actionComplete:Lcom/microsoft/xbox/toolkit/Ready;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lcom/microsoft/xbox/toolkit/Ready;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ThreadManager$1;->val$runnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ThreadManager$1;->val$actionComplete:Lcom/microsoft/xbox/toolkit/Ready;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadManager$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 29
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadManager$1;->val$actionComplete:Lcom/microsoft/xbox/toolkit/Ready;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->setReady()V

    .line 30
    return-void
.end method
