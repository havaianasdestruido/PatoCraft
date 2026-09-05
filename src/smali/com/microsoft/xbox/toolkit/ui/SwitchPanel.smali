.class public Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;
.super Landroid/widget/LinearLayout;
.source "SwitchPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$SwitchPanelChild;
    }
.end annotation


# static fields
.field private static final LAYOUT_BLOCK_TIMEOUT_MS:I = 0x96


# instance fields
.field private AnimateInListener:Landroid/animation/AnimatorListenerAdapter;

.field private AnimateOutListener:Landroid/animation/AnimatorListenerAdapter;

.field private final INVALID_STATE_ID:I

.field private final VALID_CONTENT_STATE:I

.field private active:Z

.field private blocking:Z

.field private newView:Landroid/view/View;

.field private oldView:Landroid/view/View;

.field private selectedState:I

.field private shouldAnimate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->INVALID_STATE_ID:I

    .line 20
    iput v1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->VALID_CONTENT_STATE:I

    .line 21
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->blocking:Z

    .line 22
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->active:Z

    .line 23
    iput-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    .line 24
    iput-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->shouldAnimate:Z

    .line 31
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->AnimateInListener:Landroid/animation/AnimatorListenerAdapter;

    .line 52
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;-><init>(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->AnimateOutListener:Landroid/animation/AnimatorListenerAdapter;

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput v3, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->INVALID_STATE_ID:I

    .line 20
    iput v2, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->VALID_CONTENT_STATE:I

    .line 21
    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->blocking:Z

    .line 22
    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->active:Z

    .line 23
    iput-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    .line 24
    iput-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    .line 25
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->shouldAnimate:Z

    .line 31
    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$1;

    invoke-direct {v2, p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V

    iput-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->AnimateInListener:Landroid/animation/AnimatorListenerAdapter;

    .line 52
    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;

    invoke-direct {v2, p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;-><init>(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V

    iput-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->AnimateOutListener:Landroid/animation/AnimatorListenerAdapter;

    .line 97
    const-string v2, "SwitchPanel"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v2, "SwitchPanel_selectedState"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->selectedState:I

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    iget v2, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->selectedState:I

    if-gez v2, :cond_0

    .line 102
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You must specify the selectedState attribute in the xml, and the value must be positive."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->onAnimateInEnd()V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->onAnimateInStart()V

    return-void
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->onAnimateOutEnd()V

    return-void
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->onAnimateOutStart()V

    return-void
.end method

.method private onAnimateInEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->setBlocking(Z)V

    .line 221
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 224
    :cond_0
    return-void
.end method

.method private onAnimateInStart()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->setBlocking(Z)V

    .line 217
    :cond_0
    return-void
.end method

.method private onAnimateOutEnd()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 238
    :cond_0
    return-void
.end method

.method private onAnimateOutStart()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->setBlocking(Z)V

    .line 231
    :cond_0
    return-void
.end method

.method private updateVisibility(II)V
    .locals 12
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .prologue
    const-wide/16 v10, 0x96

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->getChildCount()I

    move-result v0

    .line 154
    .local v0, "childCount":I
    const/4 v2, 0x0

    .line 155
    .local v2, "switchPanelChild":Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$SwitchPanelChild;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 156
    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 157
    .local v4, "v":Landroid/view/View;
    instance-of v5, v4, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$SwitchPanelChild;

    if-nez v5, :cond_0

    .line 158
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "All children of SwitchPanel must implement the SwitchPanelChild interface. All other types are not supported and should be removed."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object v2, v4

    .line 161
    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$SwitchPanelChild;

    .line 162
    invoke-interface {v2}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$SwitchPanelChild;->getState()I

    move-result v3

    .line 163
    .local v3, "switchPanelState":I
    if-ne v3, p1, :cond_1

    .line 164
    iput-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    .line 155
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_1
    if-ne v3, p2, :cond_2

    .line 166
    iput-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    goto :goto_1

    .line 168
    :cond_2
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 174
    .end local v3    # "switchPanelState":I
    .end local v4    # "v":Landroid/view/View;
    :cond_3
    iget-boolean v5, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->shouldAnimate:Z

    if-eqz v5, :cond_5

    if-nez p2, :cond_5

    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 176
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 177
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 178
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->requestLayout()V

    .line 181
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 182
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->AnimateOutListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 185
    :cond_4
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->AnimateInListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 198
    :goto_2
    return-void

    .line 188
    :cond_5
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 189
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :cond_6
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    if-eqz v5, :cond_7

    .line 193
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 194
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :cond_7
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->requestLayout()V

    goto :goto_2
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->selectedState:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 114
    const/4 v0, -0x1

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->selectedState:I

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->updateVisibility(II)V

    .line 115
    return-void
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->active:Z

    .line 119
    return-void
.end method

.method public setBlocking(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->blocking:Z

    if-eq v0, p1, :cond_0

    .line 203
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->blocking:Z

    .line 204
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->blocking:Z

    if-eqz v0, :cond_1

    .line 205
    invoke-static {}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ListLayout:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->setBlocking(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;I)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ListLayout:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->clearBlocking(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;)V

    goto :goto_0
.end method

.method public setShouldAnimate(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->shouldAnimate:Z

    .line 123
    return-void
.end method

.method public setState(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 131
    if-gez p1, :cond_0

    .line 132
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "New state must be a positive value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_0
    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->selectedState:I

    if-eq v1, p1, :cond_1

    .line 136
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->selectedState:I

    .line 137
    .local v0, "oldState":I
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->selectedState:I

    .line 138
    invoke-direct {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->updateVisibility(II)V

    .line 140
    .end local v0    # "oldState":I
    :cond_1
    return-void
.end method
