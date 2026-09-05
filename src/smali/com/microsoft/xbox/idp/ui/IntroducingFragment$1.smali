.class Lcom/microsoft/xbox/idp/ui/IntroducingFragment$1;
.super Ljava/lang/Object;
.source "IntroducingFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$100(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$000(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/UiUtil;->canScroll(Landroid/widget/ScrollView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
