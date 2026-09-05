.class Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView$2;
.super Ljava/lang/Object;
.source "XLEAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->onViewAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView$2;->this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView$2;->this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->access$200(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 87
    return-void
.end method
