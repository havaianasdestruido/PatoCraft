.class public Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
.super Landroid/widget/TextView;
.source "CustomTypefaceTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 22
    sget-object v3, Lcom/microsoft/xboxtcui/R$styleable;->CustomTypeface:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/microsoft/xboxtcui/R$styleable;->CustomTypeface_typefaceSource:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "typeface":Ljava/lang/String;
    sget v3, Lcom/microsoft/xboxtcui/R$styleable;->CustomTypeface_uppercaseText:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "uppercaseText":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "typeface":Ljava/lang/String;
    .end local v2    # "uppercaseText":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    sget-object v2, Lcom/microsoft/xboxtcui/R$styleable;->CustomTypeface:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/microsoft/xboxtcui/R$styleable;->CustomTypeface_typefaceSource:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "typeface":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "typeface":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typeface"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method private applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typefaceSource"    # Ljava/lang/String;

    .prologue
    .line 50
    if-eqz p2, :cond_0

    .line 51
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/FontManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 52
    .local v0, "tf":Landroid/graphics/Typeface;
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 57
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setCursorVisible(Z)V

    .line 58
    return-void
.end method


# virtual methods
.method public setClickable(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "If you want CustomTypefaceTextView to be clickable, use XLEButton instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "If you want CustomTypefaceTextView to be clickable, use XLEButton instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
