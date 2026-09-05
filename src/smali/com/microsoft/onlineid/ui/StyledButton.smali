.class public Lcom/microsoft/onlineid/ui/StyledButton;
.super Landroid/widget/Button;
.source "StyledButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/ui/StyledButton;->initialize(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/ui/StyledButton;->initialize(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/ui/StyledButton;->initialize(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/StyledButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/microsoft/onlineid/internal/ui/Fonts;->SegoeUISemiBold:Lcom/microsoft/onlineid/internal/ui/Fonts;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ui/Fonts;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/StyledButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    :cond_0
    return-void
.end method
