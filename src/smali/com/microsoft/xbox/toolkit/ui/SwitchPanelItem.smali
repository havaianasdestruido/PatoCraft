.class public Lcom/microsoft/xbox/toolkit/ui/SwitchPanelItem;
.super Landroid/widget/FrameLayout;
.source "SwitchPanelItem.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$SwitchPanelChild;


# instance fields
.field private final INVALID_STATE_ID:I

.field private state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v3, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanelItem;->INVALID_STATE_ID:I

    .line 51
    const-string v2, "SwitchPanelItem"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v2, "SwitchPanelItem_state"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanelItem;->state:I

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    iget v2, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanelItem;->state:I

    if-gez v2, :cond_0

    .line 56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You must specify the state attribute in the xml, and the value must be positive."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanelItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanelItem;->state:I

    return v0
.end method
