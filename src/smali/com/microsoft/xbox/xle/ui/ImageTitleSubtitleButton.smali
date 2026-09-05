.class public Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;
.super Landroid/widget/LinearLayout;
.source "ImageTitleSubtitleButton.java"


# instance fields
.field private iconImageView:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

.field private subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 39
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/microsoft/xboxtcui/R$layout;->image_title_subtitle_button:I

    invoke-virtual {v2, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    sget v5, Lcom/microsoft/xboxtcui/R$id;->image_title_subtitle_button_image:I

    invoke-virtual {p0, v5}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    iput-object v5, p0, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->iconImageView:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    .line 41
    sget v5, Lcom/microsoft/xboxtcui/R$id;->image_title_subtitle_button_title:I

    invoke-virtual {p0, v5}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v5, p0, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 42
    sget v5, Lcom/microsoft/xboxtcui/R$id;->image_title_subtitle_button_subtitle:I

    invoke-virtual {p0, v5}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v5, p0, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 44
    const-string v5, "ImageTitleSubtitleButton"

    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v5, "ImageTitleSubtitleButton_image_uri"

    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "iconUri":Ljava/lang/String;
    const-string v5, "ImageTitleSubtitleButton_text_title"

    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "title":Ljava/lang/String;
    const-string v5, "ImageTitleSubtitleButton_text_subtitle"

    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "subtitle":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setImageUri(Ljava/lang/String;)V

    .line 52
    iget-object v5, p0, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v5, v4, v6}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 53
    iget-object v5, p0, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v5, v3, v6}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 55
    invoke-virtual {p0, v7}, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->setFocusable(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 68
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public setImageUri(Ljava/lang/String;)V
    .locals 2
    .param p1, "iconUri"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/ImageTitleSubtitleButton;->iconImageView:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setImageURI2(Ljava/net/URI;)V

    .line 62
    :cond_0
    return-void
.end method
