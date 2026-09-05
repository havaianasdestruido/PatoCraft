.class public Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;
.super Ljava/lang/Object;
.source "XLETextArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/XLETextArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field private final adjustForImageSize:Z

.field private final color:I

.field private final eraseColor:I

.field private final textAspectRatio:Ljava/lang/Float;

.field private final textSize:F

.field private final typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 42
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->SPtoPixels(F)I

    move-result v0

    int-to-float v1, v0

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;-><init>(FILandroid/graphics/Typeface;IZLjava/lang/Float;)V

    .line 43
    return-void
.end method

.method public constructor <init>(FILandroid/graphics/Typeface;IZLjava/lang/Float;)V
    .locals 0
    .param p1, "textSize"    # F
    .param p2, "color"    # I
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "eraseColor"    # I
    .param p5, "adjustForImageSize"    # Z
    .param p6, "textAspectRatio"    # Ljava/lang/Float;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->textSize:F

    .line 47
    iput p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->color:I

    .line 48
    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->typeface:Landroid/graphics/Typeface;

    .line 49
    iput p4, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->eraseColor:I

    .line 50
    iput-boolean p5, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->adjustForImageSize:Z

    .line 51
    iput-object p6, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->textAspectRatio:Ljava/lang/Float;

    .line 52
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->color:I

    return v0
.end method

.method public getEraseColor()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->eraseColor:I

    return v0
.end method

.method public getTextAspectRatio()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->textAspectRatio:Ljava/lang/Float;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->textSize:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public hasEraseColor()Z
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->eraseColor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextAspectRatio()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->textAspectRatio:Ljava/lang/Float;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdjustForImageSize()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->adjustForImageSize:Z

    return v0
.end method
