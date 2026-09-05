.class Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$2;
.super Ljava/lang/Object;
.source "XLEAnimationPackage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->onAnimationEnded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

.field final synthetic val$finishIterationID:I


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$2;->this$1:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

    iput p2, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$2;->val$finishIterationID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$2;->val$finishIterationID:I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$2;->this$1:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

    iget v1, v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->iterationID:I

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$2;->this$1:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->access$200(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;)V

    .line 43
    :cond_0
    return-void
.end method
