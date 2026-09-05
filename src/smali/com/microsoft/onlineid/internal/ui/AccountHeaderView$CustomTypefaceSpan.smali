.class Lcom/microsoft/onlineid/internal/ui/AccountHeaderView$CustomTypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "AccountHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/AccountHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomTypefaceSpan"
.end annotation


# instance fields
.field private _typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountHeaderView$CustomTypefaceSpan;->_typeface:Landroid/graphics/Typeface;

    .line 89
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "p"    # Landroid/text/TextPaint;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountHeaderView$CustomTypefaceSpan;->_typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 112
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 113
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "p"    # Landroid/text/TextPaint;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/AccountHeaderView$CustomTypefaceSpan;->_typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 100
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 101
    return-void
.end method
