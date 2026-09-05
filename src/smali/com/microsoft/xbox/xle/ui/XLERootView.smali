.class public Lcom/microsoft/xbox/xle/ui/XLERootView;
.super Landroid/widget/RelativeLayout;
.source "XLERootView.java"


# static fields
.field private static final UNASSIGNED_ACTIVITY_BODY_ID:I = -0x1


# instance fields
.field private activityBody:Landroid/view/View;

.field private activityBodyIndex:I

.field private headerName:Ljava/lang/String;

.field private isTopLevel:Z

.field private lastFps:J

.field private lastMs:J

.field private origPaddingBottom:I

.field private showTitleBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->isTopLevel:Z

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->showTitleBar:Z

    .line 22
    iput-wide v2, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->lastMs:J

    .line 23
    iput-wide v2, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->lastFps:J

    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-boolean v2, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->isTopLevel:Z

    .line 20
    iput-boolean v3, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->showTitleBar:Z

    .line 22
    iput-wide v6, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->lastMs:J

    .line 23
    iput-wide v6, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->lastFps:J

    .line 49
    sget-object v2, Lcom/microsoft/xboxtcui/R$styleable;->XLERootView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 52
    :try_start_0
    sget v2, Lcom/microsoft/xboxtcui/R$styleable;->XLERootView_activityBody:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBodyIndex:I

    .line 53
    sget v2, Lcom/microsoft/xboxtcui/R$styleable;->XLERootView_isTopLevel:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->isTopLevel:Z

    .line 54
    sget v2, Lcom/microsoft/xboxtcui/R$styleable;->XLERootView_showTitleBar:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->showTitleBar:Z

    .line 55
    sget v2, Lcom/microsoft/xboxtcui/R$styleable;->XLERootView_minScreenPercent:I

    const/high16 v3, -0x80000000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 56
    .local v1, "minScreenPercent":I
    if-eq v1, v4, :cond_0

    .line 58
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->getScreenWidth()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/xle/ui/XLERootView;->setMinimumWidth(I)V

    .line 60
    :cond_0
    sget v2, Lcom/microsoft/xboxtcui/R$styleable;->XLERootView_headerName:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->headerName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    .end local v1    # "minScreenPercent":I
    :cond_1
    return-void

    .line 62
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private initialize()V
    .locals 9

    .prologue
    const/4 v4, -0x1

    const/4 v8, 0x0

    .line 91
    iget v3, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBodyIndex:I

    if-eq v3, v4, :cond_2

    .line 92
    iget v3, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBodyIndex:I

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/ui/XLERootView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBody:Landroid/view/View;

    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingBottom()I

    move-result v3

    iput v3, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->origPaddingBottom:I

    .line 99
    iget-object v3, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBody:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBody:Landroid/view/View;

    if-eq v3, p0, :cond_1

    .line 100
    iget-object v3, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBody:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 102
    .local v1, "lpActivityBody":Landroid/view/ViewGroup$LayoutParams;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .local v0, "activityParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 104
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 105
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 109
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 110
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingLeft()I

    move-result v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    .line 111
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingTop()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    .line 112
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingRight()I

    move-result v5

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->origPaddingBottom:I

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    .line 110
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/microsoft/xbox/xle/ui/XLERootView;->setPadding(IIII)V

    .line 115
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 118
    .end local v2    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBody:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/xle/ui/XLERootView;->removeView(Landroid/view/View;)V

    .line 119
    iget-object v3, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBody:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .end local v0    # "activityParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "lpActivityBody":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 94
    :cond_2
    iput-object p0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBody:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 126
    return-void
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsTopLevel()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->isTopLevel:Z

    return v0
.end method

.method public getShowTitleBar()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->showTitleBar:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 83
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->initialize()V

    .line 84
    return-void
.end method

.method public setBottomMargin(I)V
    .locals 4
    .param p1, "marginBottom"    # I

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->origPaddingBottom:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/microsoft/xbox/xle/ui/XLERootView;->setPadding(IIII)V

    .line 130
    return-void
.end method
