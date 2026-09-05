.class public Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;
.super Landroid/widget/LinearLayout;
.source "IconFontToggleButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private checked:Z

.field private checkedIcon:Ljava/lang/String;

.field private checkedText:Ljava/lang/String;

.field private iconTextView:Landroid/widget/TextView;

.field private labelTextView:Landroid/widget/TextView;

.field private uncheckedIcon:Ljava/lang/String;

.field private uncheckedText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->initViews(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->initViews(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method private applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typefaceSource"    # Ljava/lang/String;

    .prologue
    .line 76
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->labelTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 77
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/FontManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 78
    .local v0, "tf":Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->labelTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 80
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :cond_0
    return-void
.end method

.method private initViews(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    .line 47
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 48
    .local v3, "vi":Landroid/view/LayoutInflater;
    sget v4, Lcom/microsoft/xboxtcui/R$layout;->iconfont_toggle_btn_view:I

    invoke-virtual {v3, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    sget v4, Lcom/microsoft/xboxtcui/R$id;->iconfont_toggle_btn_icon:I

    invoke-virtual {p0, v4}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->iconTextView:Landroid/widget/TextView;

    .line 50
    sget v4, Lcom/microsoft/xboxtcui/R$id;->iconfont_toggle_btn_text:I

    invoke-virtual {p0, v4}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->labelTextView:Landroid/widget/TextView;

    .line 52
    const-string v4, "CustomTypeface"

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v4, "CustomTypeface_typefaceSource"

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "typeface":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    const-string v4, "IconFontToggleButton"

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    const-string v4, "IconFontToggleButton_text_checked"

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checkedText:Ljava/lang/String;

    .line 58
    const-string v4, "IconFontToggleButton_text_unchecked"

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->uncheckedText:Ljava/lang/String;

    .line 59
    const-string v4, "IconFontToggleButton_icon_checked"

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checkedIcon:Ljava/lang/String;

    .line 60
    const-string v4, "IconFontToggleButton_icon_unchecked"

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->uncheckedIcon:Ljava/lang/String;

    .line 62
    const-string v4, "IconFontToggleButton_icon_size"

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v1, v4

    .line 64
    .local v1, "iconSize":F
    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    .line 65
    iget-object v4, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->iconTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    invoke-direct {p0, p1, v2}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v6}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setFocusable(Z)V

    .line 73
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checked:Z

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 113
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 89
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checked:Z

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->sendAccessibilityEvent(I)V

    .line 93
    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->labelTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->labelTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checked:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checkedText:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->labelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->iconTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 98
    iget-object v1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->iconTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checked:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checkedIcon:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->iconTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->invalidate()V

    .line 102
    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->uncheckedText:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->uncheckedIcon:Ljava/lang/String;

    goto :goto_1
.end method

.method public setCheckedText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checkedText:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setUncheckedText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->uncheckedText:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    .line 107
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
