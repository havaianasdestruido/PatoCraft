.class public Lcom/microsoft/onlineid/internal/ui/AccountHeaderView;
.super Ljava/lang/Object;
.source "AccountHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ui/AccountHeaderView$CustomTypefaceSpan;
    }
.end annotation


# static fields
.field public static final MarginLargeDip:F = 16.0f

.field public static final MarginLogoDip:F = 9.3f

.field public static final MarginMediumDip:F = 8.0f

.field public static final SizeLogoDip:F = 32.0f

.field public static final TextColorTitle:I

.field public static final TextSizeLargeSP:F = 16.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x58

    .line 33
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/microsoft/onlineid/internal/ui/AccountHeaderView;->TextColorTitle:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStyle(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v10, 0x0

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 45
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "baseTitle":Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 55
    .local v6, "titleSpan":Landroid/text/SpannableString;
    sget-object v7, Lcom/microsoft/onlineid/internal/ui/Fonts;->SegoeUISemiBold:Lcom/microsoft/onlineid/internal/ui/Fonts;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/microsoft/onlineid/internal/ui/Fonts;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 56
    .local v5, "seguiSB":Landroid/graphics/Typeface;
    new-instance v7, Lcom/microsoft/onlineid/internal/ui/AccountHeaderView$CustomTypefaceSpan;

    invoke-direct {v7, v5}, Lcom/microsoft/onlineid/internal/ui/AccountHeaderView$CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x12

    invoke-virtual {v6, v7, v10, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 57
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    const v7, 0x102002c

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 60
    .local v2, "home":Landroid/view/View;
    invoke-virtual {v2, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 62
    const/high16 v7, 0x42000000    # 32.0f

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 62
    invoke-static {v7, v8}, Lcom/microsoft/onlineid/internal/ui/Dimensions;->convertDipToPixels(FLandroid/util/DisplayMetrics;)I

    move-result v3

    .line 66
    .local v3, "logoSizePixels":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 67
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method
