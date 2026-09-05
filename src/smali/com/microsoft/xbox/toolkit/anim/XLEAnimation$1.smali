.class Lcom/microsoft/xbox/toolkit/anim/XLEAnimation$1;
.super Ljava/lang/Object;
.source "XLEAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;->setOnAnimationEnd(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation$1;->this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation$1;->val$runnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    .line 20
    return-void
.end method
