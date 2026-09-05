.class public Lcom/microsoft/onlineid/ui/StyledTextView;
.super Landroid/widget/TextView;
.source "StyledTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/ui/StyledTextView;->applyAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/ui/StyledTextView;->applyAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method private applyAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 57
    .local v6, "theme":Landroid/content/res/Resources$Theme;
    sget-object v7, Lcom/microsoft/onlineid/sdk/R$styleable;->StyledTextView:[I

    invoke-virtual {v6, p2, v7, v8, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 60
    .local v4, "styleAttributes":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 62
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 63
    .local v0, "attr":I
    sget v7, Lcom/microsoft/onlineid/sdk/R$styleable;->StyledTextView_font:I

    if-ne v0, v7, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/StyledTextView;->isInEditMode()Z

    move-result v7

    if-nez v7, :cond_0

    .line 68
    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "fontName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 71
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/ui/Fonts;->valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/Fonts;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/microsoft/onlineid/internal/ui/Fonts;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 72
    .local v5, "tf":Landroid/graphics/Typeface;
    invoke-virtual {p0, v5}, Lcom/microsoft/onlineid/ui/StyledTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    .end local v1    # "fontName":Ljava/lang/String;
    .end local v5    # "tf":Landroid/graphics/Typeface;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_1
    sget v7, Lcom/microsoft/onlineid/sdk/R$styleable;->StyledTextView_isUnderlined:I

    if-ne v0, v7, :cond_0

    .line 78
    invoke-virtual {v4, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 79
    .local v3, "isUnderlined":Z
    if-eqz v3, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/StyledTextView;->getPaintFlags()I

    move-result v7

    or-int/lit8 v7, v7, 0x8

    invoke-virtual {p0, v7}, Lcom/microsoft/onlineid/ui/StyledTextView;->setPaintFlags(I)V

    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/StyledTextView;->getPaintFlags()I

    move-result v7

    and-int/lit8 v7, v7, -0x9

    invoke-virtual {p0, v7}, Lcom/microsoft/onlineid/ui/StyledTextView;->setPaintFlags(I)V

    goto :goto_1

    .line 89
    .end local v0    # "attr":I
    .end local v3    # "isUnderlined":Z
    :cond_3
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    return-void
.end method
