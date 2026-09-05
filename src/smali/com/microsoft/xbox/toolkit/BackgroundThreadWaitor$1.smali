.class Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$1;
.super Ljava/lang/Object;
.source "BackgroundThreadWaitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitForReady(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$1;->this$0:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$1;->this$0:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->access$000(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;)V

    .line 43
    return-void
.end method
