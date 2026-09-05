.class public Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;
.super Landroid/view/ViewGroup;
.source "XLECheckBox.java"


# instance fields
.field private final checkBox:Landroid/widget/CheckBox;

.field private final subText:Landroid/widget/TextView;

.field private final text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    .line 35
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    .line 36
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    .line 42
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    .line 43
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    .line 50
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    .line 51
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, -0x2

    .line 99
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    sget v8, Lcom/microsoft/xboxtcui/R$drawable;->apptheme_btn_check_holo_light:I

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 100
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v8}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    new-instance v8, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox$1;

    invoke-direct {v8, p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v8}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v8}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    sget-object v7, Lcom/microsoft/xboxtcui/R$styleable;->XLECheckBox:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 112
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->isInEditMode()Z

    move-result v7

    if-nez v7, :cond_0

    .line 113
    sget v7, Lcom/microsoft/xboxtcui/R$styleable;->XLECheckBox_textStyle:I

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 114
    .local v5, "textStyle":I
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-static {v7, v5}, Lcom/microsoft/xbox/toolkit/ui/util/LibCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 115
    sget v7, Lcom/microsoft/xboxtcui/R$styleable;->XLECheckBox_textTypefaceSource:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "textFont":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/FontManager;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 117
    .local v6, "textTypeface":Landroid/graphics/Typeface;
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 119
    sget v7, Lcom/microsoft/xboxtcui/R$styleable;->XLECheckBox_subTextStyle:I

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 120
    .local v1, "subTextStyle":I
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-static {v7, v1}, Lcom/microsoft/xbox/toolkit/ui/util/LibCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 121
    sget v7, Lcom/microsoft/xboxtcui/R$styleable;->XLECheckBox_subTextTypefaceSource:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "subtextFont":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/FontManager;

    move-result-object v7

    invoke-virtual {v7, p1, v2}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 123
    .local v3, "subtextTypeface":Landroid/graphics/Typeface;
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    .end local v1    # "subTextStyle":I
    .end local v2    # "subtextFont":Ljava/lang/String;
    .end local v3    # "subtextTypeface":Landroid/graphics/Typeface;
    .end local v4    # "textFont":Ljava/lang/String;
    .end local v5    # "textStyle":I
    .end local v6    # "textTypeface":Landroid/graphics/Typeface;
    :cond_0
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    sget v8, Lcom/microsoft/xboxtcui/R$styleable;->XLECheckBox_text:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    sget v8, Lcom/microsoft/xboxtcui/R$styleable;->XLECheckBox_subText:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    return-void

    .line 128
    :catchall_0
    move-exception v7

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v7
.end method


# virtual methods
.method public getSubText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingLeft()I

    move-result v1

    .line 186
    .local v1, "lCheckbox":I
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingTop()I

    move-result v7

    iget-object v8, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int v0, v7, v8

    .line 187
    .local v0, "cCheckbox":I
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v4, v0, v7

    .line 188
    .local v4, "tCheckbox":I
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    iget-object v9, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v7, v1, v4, v8, v9}, Landroid/widget/CheckBox;->layout(IIII)V

    .line 191
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v7

    add-int v3, v1, v7

    .line 192
    .local v3, "lText":I
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v6, v0, v7

    .line 193
    .local v6, "tText":I
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v3

    iget-object v9, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v3, v6, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 196
    move v2, v3

    .line 197
    .local v2, "lSubText":I
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v5, v6, v7

    .line 198
    .local v5, "tSubText":I
    iget-object v7, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v7, v2, v5, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 199
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 134
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 135
    .local v8, "w":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 136
    .local v12, "wMyMode":I
    if-nez v12, :cond_0

    const/4 v10, 0x0

    .line 138
    .local v10, "wChildMode":I
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 139
    .local v1, "h":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 140
    .local v5, "hMyMode":I
    if-nez v5, :cond_1

    const/4 v3, 0x0

    .line 143
    .local v3, "hChildMode":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingLeft()I

    move-result v15

    .line 144
    .local v15, "xCur":I
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingTop()I

    move-result v16

    .line 147
    .local v16, "yCur":I
    sub-int v17, v8, v15

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingRight()I

    move-result v18

    sub-int v17, v17, v18

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 148
    .local v9, "wCheckBox":I
    sub-int v17, v1, v16

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingBottom()I

    move-result v18

    sub-int v17, v17, v18

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 149
    .local v2, "hCheckBox":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/CheckBox;->measure(II)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v17

    add-int v15, v15, v17

    .line 155
    sub-int v17, v8, v15

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingRight()I

    move-result v18

    sub-int v17, v17, v18

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 156
    .local v14, "wText":I
    sub-int v17, v1, v16

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingBottom()I

    move-result v18

    sub-int v17, v17, v18

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 157
    .local v7, "hText":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static {v14, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/TextView;->measure(II)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int v16, v16, v17

    .line 163
    sub-int v17, v8, v15

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingRight()I

    move-result v18

    sub-int v17, v17, v18

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 164
    .local v13, "wSubText":I
    sub-int v17, v1, v16

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingBottom()I

    move-result v18

    sub-int v17, v17, v18

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 165
    .local v6, "hSubText":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static {v13, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/TextView;->measure(II)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int v15, v15, v17

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v17

    add-int v16, v16, v17

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingRight()I

    move-result v17

    add-int v15, v15, v17

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->getPaddingBottom()I

    move-result v17

    add-int v16, v16, v17

    .line 176
    if-nez v12, :cond_2

    move v11, v15

    .line 177
    .local v11, "wMy":I
    :goto_2
    if-nez v5, :cond_3

    move/from16 v4, v16

    .line 179
    .local v4, "hMy":I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setMeasuredDimension(II)V

    .line 180
    return-void

    .line 136
    .end local v1    # "h":I
    .end local v2    # "hCheckBox":I
    .end local v3    # "hChildMode":I
    .end local v4    # "hMy":I
    .end local v5    # "hMyMode":I
    .end local v6    # "hSubText":I
    .end local v7    # "hText":I
    .end local v9    # "wCheckBox":I
    .end local v10    # "wChildMode":I
    .end local v11    # "wMy":I
    .end local v13    # "wSubText":I
    .end local v14    # "wText":I
    .end local v15    # "xCur":I
    .end local v16    # "yCur":I
    :cond_0
    const/high16 v10, -0x80000000

    goto/16 :goto_0

    .line 140
    .restart local v1    # "h":I
    .restart local v5    # "hMyMode":I
    .restart local v10    # "wChildMode":I
    :cond_1
    const/high16 v3, -0x80000000

    goto/16 :goto_1

    .line 176
    .restart local v2    # "hCheckBox":I
    .restart local v3    # "hChildMode":I
    .restart local v6    # "hSubText":I
    .restart local v7    # "hText":I
    .restart local v9    # "wCheckBox":I
    .restart local v13    # "wSubText":I
    .restart local v14    # "wText":I
    .restart local v15    # "xCur":I
    .restart local v16    # "yCur":I
    :cond_2
    invoke-static {v15, v8}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_2

    .line 177
    .restart local v11    # "wMy":I
    :cond_3
    move/from16 v0, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_3
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 77
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 89
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    return-void
.end method

.method public setSubText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subText"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->subText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 81
    return-void
.end method
