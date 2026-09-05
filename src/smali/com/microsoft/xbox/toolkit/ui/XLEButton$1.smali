.class Lcom/microsoft/xbox/toolkit/ui/XLEButton$1;
.super Ljava/lang/Object;
.source "XLEButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/ui/XLEButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/XLEButton;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/ui/XLEButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iget-object v1, v1, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-virtual {v1, p2}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 111
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->updateImage()V

    .line 112
    return v0
.end method
