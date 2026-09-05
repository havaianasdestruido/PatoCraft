.class public Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;
.super Landroid/widget/LinearLayout;
.source "IconFontSubTextButton.java"


# instance fields
.field private iconFrameLayout:Landroid/widget/FrameLayout;

.field private iconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 37
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/microsoft/xboxtcui/R$layout;->icon_font_subtext_button:I

    invoke-virtual {v2, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    sget v5, Lcom/microsoft/xboxtcui/R$id;->icon_font_subtext_icon:I

    invoke-virtual {p0, v5}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v5, p0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->iconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 39
    sget v5, Lcom/microsoft/xboxtcui/R$id;->icon_font_subtext_btn_icon_bg:I

    invoke-virtual {p0, v5}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->iconFrameLayout:Landroid/widget/FrameLayout;

    .line 40
    sget v5, Lcom/microsoft/xboxtcui/R$id;->icon_font_subtext_btn_title:I

    invoke-virtual {p0, v5}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v5, p0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 41
    sget v5, Lcom/microsoft/xboxtcui/R$id;->icon_font_subtext_btn_subtitle:I

    invoke-virtual {p0, v5}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v5, p0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 43
    const-string v5, "IconFontSubTextButton"

    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v5, "IconFontSubTextButton_icon_uri"

    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "iconUri":Ljava/lang/String;
    const-string v5, "IconFontSubTextButton_text_title"

    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "title":Ljava/lang/String;
    const-string v5, "IconFontSubTextButton_text_subtitle"

    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "subtitle":Ljava/lang/String;
    iget-object v5, p0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->iconFrameLayout:Landroid/widget/FrameLayout;

    const-string v6, "IconFontSubTextButton_icon_bg"

    invoke-static {v6}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    iget-object v5, p0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->iconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v5, v1, v7}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 53
    iget-object v5, p0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v5, v4, v7}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 54
    iget-object v5, p0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v5, v3, v7}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 56
    invoke-virtual {p0, v8}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->setFocusable(Z)V

    .line 57
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 63
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method
