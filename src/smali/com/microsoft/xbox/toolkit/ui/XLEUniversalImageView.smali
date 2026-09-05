.class public Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;
.super Lcom/microsoft/xbox/toolkit/ui/XLEImageView;
.source "XLEUniversalImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;,
        Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;
    }
.end annotation


# static fields
.field private static final JELLY_BEAN_MR1:I = 0x11

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adjustViewBounds:Z

.field private arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

.field private final listener:Landroid/view/View$OnLayoutChangeListener;

.field private maxHeight:I

.field private maxWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 313
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->listener:Landroid/view/View$OnLayoutChangeListener;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 41
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 313
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->listener:Landroid/view/View$OnLayoutChangeListener;

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 47
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .prologue
    const v1, 0x7fffffff

    .line 32
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;-><init>(Landroid/content/Context;)V

    .line 313
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->listener:Landroid/view/View$OnLayoutChangeListener;

    .line 33
    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setMaxWidth(I)V

    .line 34
    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setMaxHeight(I)V

    .line 35
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    return-object v0
.end method

.method private initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v22

    const-string v23, "XLEUniversalImageView"

    invoke-static/range {v23 .. v23}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 92
    .local v12, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    move/from16 v17, v0

    .line 95
    .local v17, "scaledDensity":F
    const-string v22, "XLEUniversalImageView_android_textSize"

    invoke-static/range {v22 .. v22}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v22

    const/high16 v23, 0x41000000    # 8.0f

    mul-float v23, v23, v17

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 96
    .local v6, "textSize":F
    const-string v22, "XLEUniversalImageView_android_textColor"

    invoke-static/range {v22 .. v22}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 97
    .local v7, "color":I
    const-string v22, "XLEUniversalImageView_android_typeface"

    invoke-static/range {v22 .. v22}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    .line 98
    .local v20, "typefaceIndex":I
    const-string v22, "XLEUniversalImageView_android_textStyle"

    invoke-static/range {v22 .. v22}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .line 99
    .local v19, "styleIndex":I
    const-string v22, "XLEUniversalImageView_typefaceSource"

    invoke-static/range {v22 .. v22}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 100
    .local v21, "typefaceSource":Ljava/lang/String;
    if-nez v21, :cond_2

    invoke-static/range {v20 .. v20}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->typefaceFromIndex(I)Landroid/graphics/Typeface;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v8

    .line 101
    .local v8, "typeface":Landroid/graphics/Typeface;
    :goto_0
    const-string v22, "XLEUniversalImageView_eraseColor"

    invoke-static/range {v22 .. v22}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 102
    .local v9, "eraseColor":I
    const-string v22, "XLEUniversalImageView_adjustForImageSize"

    invoke-static/range {v22 .. v22}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 103
    .local v10, "adjustForImageSize":Z
    const-string v22, "XLEUniversalImageView_android_src"

    invoke-static/range {v22 .. v22}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    .line 104
    .local v14, "hasSrc":Z
    const/4 v11, 0x0

    .line 105
    .local v11, "textAspectRatio":Ljava/lang/Float;
    const-string v22, "XLEUniversalImageView_textAspectRatio"

    invoke-static/range {v22 .. v22}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 106
    const-string v22, "XLEUniversalImageView_textAspectRatio"

    invoke-static/range {v22 .. v22}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 108
    :cond_0
    new-instance v5, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;

    invoke-direct/range {v5 .. v11}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;-><init>(FILandroid/graphics/Typeface;IZLjava/lang/Float;)V

    .line 112
    .local v5, "textParams":Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;
    const-string v22, "XLEUniversalImageView_android_text"

    invoke-static/range {v22 .. v22}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .local v18, "str":Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 113
    new-instance v16, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    new-instance v22, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;-><init>(Ljava/lang/String;Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;)V

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLETextArg;Z)V

    .line 125
    .local v16, "params":Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;
    :goto_1
    if-eqz v10, :cond_1

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->listener:Landroid/view/View$OnLayoutChangeListener;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_1
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    return-object v16

    .line 100
    .end local v5    # "textParams":Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;
    .end local v8    # "typeface":Landroid/graphics/Typeface;
    .end local v9    # "eraseColor":I
    .end local v10    # "adjustForImageSize":Z
    .end local v11    # "textAspectRatio":Ljava/lang/Float;
    .end local v14    # "hasSrc":Z
    .end local v16    # "params":Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;
    .end local v18    # "str":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/FontManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    goto/16 :goto_0

    .line 114
    .restart local v5    # "textParams":Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;
    .restart local v8    # "typeface":Landroid/graphics/Typeface;
    .restart local v9    # "eraseColor":I
    .restart local v10    # "adjustForImageSize":Z
    .restart local v11    # "textAspectRatio":Ljava/lang/Float;
    .restart local v14    # "hasSrc":Z
    .restart local v18    # "str":Ljava/lang/String;
    :cond_3
    const-string v22, "XLEUniversalImageView_uri"

    invoke-static/range {v22 .. v22}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    if-eqz v18, :cond_4

    .line 116
    :try_start_2
    new-instance v16, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    new-instance v22, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;)V

    new-instance v23, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;

    new-instance v24, Ljava/net/URI;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v23 .. v24}, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;-><init>(Ljava/net/URI;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLETextArg;Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v16    # "params":Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;
    goto :goto_1

    .line 117
    .end local v16    # "params":Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;
    :catch_0
    move-exception v13

    .line 118
    .local v13, "e":Ljava/net/URISyntaxException;
    :try_start_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error parsing URI \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 119
    .local v15, "msg":Ljava/lang/String;
    new-instance v22, Ljava/lang/RuntimeException;

    move-object/from16 v0, v22

    invoke-direct {v0, v15, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    .end local v5    # "textParams":Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;
    .end local v6    # "textSize":F
    .end local v7    # "color":I
    .end local v8    # "typeface":Landroid/graphics/Typeface;
    .end local v9    # "eraseColor":I
    .end local v10    # "adjustForImageSize":Z
    .end local v11    # "textAspectRatio":Ljava/lang/Float;
    .end local v13    # "e":Ljava/net/URISyntaxException;
    .end local v14    # "hasSrc":Z
    .end local v15    # "msg":Ljava/lang/String;
    .end local v17    # "scaledDensity":F
    .end local v18    # "str":Ljava/lang/String;
    .end local v19    # "styleIndex":I
    .end local v20    # "typefaceIndex":I
    .end local v21    # "typefaceSource":Ljava/lang/String;
    :catchall_0
    move-exception v22

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    throw v22

    .line 122
    .restart local v5    # "textParams":Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;
    .restart local v6    # "textSize":F
    .restart local v7    # "color":I
    .restart local v8    # "typeface":Landroid/graphics/Typeface;
    .restart local v9    # "eraseColor":I
    .restart local v10    # "adjustForImageSize":Z
    .restart local v11    # "textAspectRatio":Ljava/lang/Float;
    .restart local v14    # "hasSrc":Z
    .restart local v17    # "scaledDensity":F
    .restart local v18    # "str":Ljava/lang/String;
    .restart local v19    # "styleIndex":I
    .restart local v20    # "typefaceIndex":I
    .restart local v21    # "typefaceSource":Ljava/lang/String;
    :cond_4
    :try_start_4
    new-instance v16, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    new-instance v22, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v14}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLETextArg;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v16    # "params":Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;
    goto/16 :goto_1
.end method

.method private resolveAdjustedSize(III)I
    .locals 4
    .param p1, "desiredSize"    # I
    .param p2, "maxSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 289
    move v0, p1

    .line 290
    .local v0, "result":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 291
    .local v1, "specMode":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 292
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 310
    :goto_0
    return v0

    .line 297
    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 298
    goto :goto_0

    .line 303
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 304
    goto :goto_0

    .line 307
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 292
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateImage()V
    .locals 4

    .prologue
    .line 77
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->hasText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;-><init>(Landroid/widget/ImageView;)V

    .line 79
    .local v0, "t":Lcom/microsoft/xbox/toolkit/ui/XLETextTask;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->getArgText()Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    .end local v0    # "t":Lcom/microsoft/xbox/toolkit/ui/XLETextTask;
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->hasArgUri()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->getArgUri()Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->getUri()Ljava/net/URI;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->getArgUri()Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->getTextureBindingOption()Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToView(Ljava/net/URI;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->hasSrc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public clearImage()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->cloneEmpty()Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 73
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    .line 74
    return-void
.end method

.method protected onMeasure(II)V
    .locals 30
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 162
    const/4 v8, 0x0

    .line 165
    .local v8, "desiredAspect":F
    const/16 v21, 0x0

    .line 168
    .local v21, "resizeWidth":Z
    const/16 v20, 0x0

    .line 170
    .local v20, "resizeHeight":Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    .line 171
    .local v24, "widthSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 173
    .local v13, "heightSpecMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 174
    .local v10, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v10, :cond_6

    .line 176
    const/4 v11, 0x0

    .local v11, "h":I
    move/from16 v22, v11

    .line 212
    .local v22, "w":I
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getPaddingLeft()I

    move-result v17

    .line 213
    .local v17, "pleft":I
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getPaddingRight()I

    move-result v18

    .line 214
    .local v18, "pright":I
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getPaddingTop()I

    move-result v19

    .line 215
    .local v19, "ptop":I
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getPaddingBottom()I

    move-result v16

    .line 217
    .local v16, "pbottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v25, v0

    const/16 v26, 0x11

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_c

    const/4 v7, 0x1

    .line 222
    .local v7, "adjustViewBoundsCompat":Z
    :goto_1
    if-nez v21, :cond_1

    if-eqz v20, :cond_d

    .line 228
    :cond_1
    add-int v25, v22, v17

    add-int v25, v25, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveAdjustedSize(III)I

    move-result v23

    .line 231
    .local v23, "widthSize":I
    add-int v25, v11, v19

    add-int v25, v25, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxHeight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveAdjustedSize(III)I

    move-result v12

    .line 233
    .local v12, "heightSize":I
    const/16 v25, 0x0

    cmpl-float v25, v8, v25

    if-eqz v25, :cond_5

    .line 235
    sub-int v25, v23, v17

    sub-int v25, v25, v18

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-int v26, v12, v19

    sub-int v26, v26, v16

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v4, v25, v26

    .line 237
    .local v4, "actualAspect":F
    sub-float v25, v4, v8

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v25, v26, v28

    if-lez v25, :cond_5

    .line 239
    const/4 v9, 0x0

    .line 242
    .local v9, "done":Z
    if-eqz v21, :cond_3

    .line 243
    sub-int v25, v12, v19

    sub-int v25, v25, v16

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v8

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v25, v25, v17

    add-int v15, v25, v18

    .line 246
    .local v15, "newWidth":I
    if-nez v20, :cond_2

    if-nez v7, :cond_2

    .line 247
    move-object/from16 v0, p0

    iget v0, v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxWidth:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, p1

    invoke-direct {v0, v15, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveAdjustedSize(III)I

    move-result v23

    .line 250
    :cond_2
    move/from16 v0, v23

    if-gt v15, v0, :cond_3

    .line 251
    move/from16 v23, v15

    .line 252
    const/4 v9, 0x1

    .line 257
    .end local v15    # "newWidth":I
    :cond_3
    if-nez v9, :cond_5

    if-eqz v20, :cond_5

    .line 258
    sub-int v25, v23, v17

    sub-int v25, v25, v18

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v25, v8

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v25, v25, v19

    add-int v14, v25, v16

    .line 261
    .local v14, "newHeight":I
    if-nez v21, :cond_4

    if-nez v7, :cond_4

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, p2

    invoke-direct {v0, v14, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveAdjustedSize(III)I

    move-result v12

    .line 265
    :cond_4
    if-gt v14, v12, :cond_5

    .line 266
    move v12, v14

    .line 285
    .end local v4    # "actualAspect":F
    .end local v9    # "done":Z
    .end local v14    # "newHeight":I
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setMeasuredDimension(II)V

    .line 286
    return-void

    .line 178
    .end local v7    # "adjustViewBoundsCompat":Z
    .end local v11    # "h":I
    .end local v12    # "heightSize":I
    .end local v16    # "pbottom":I
    .end local v17    # "pleft":I
    .end local v18    # "pright":I
    .end local v19    # "ptop":I
    .end local v22    # "w":I
    .end local v23    # "widthSize":I
    :cond_6
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    .line 179
    .restart local v22    # "w":I
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 181
    .restart local v11    # "h":I
    if-gtz v22, :cond_7

    .line 182
    const/16 v22, 0x1

    .line 183
    :cond_7
    if-gtz v11, :cond_8

    .line 184
    const/4 v11, 0x1

    .line 188
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->adjustViewBounds:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 189
    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    const/16 v21, 0x1

    .line 190
    :goto_3
    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v0, v25

    if-eq v13, v0, :cond_a

    const/16 v20, 0x1

    .line 192
    :goto_4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 193
    .local v6, "actualWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 200
    .local v5, "actualHeight":I
    if-le v6, v5, :cond_b

    .line 201
    mul-int v25, v6, v11

    div-int v11, v25, v22

    .line 202
    move/from16 v22, v6

    .line 208
    :goto_5
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v11

    move/from16 v26, v0

    div-float v8, v25, v26

    goto/16 :goto_0

    .line 189
    .end local v5    # "actualHeight":I
    .end local v6    # "actualWidth":I
    :cond_9
    const/16 v21, 0x0

    goto :goto_3

    .line 190
    :cond_a
    const/16 v20, 0x0

    goto :goto_4

    .line 204
    .restart local v5    # "actualHeight":I
    .restart local v6    # "actualWidth":I
    :cond_b
    mul-int v25, v5, v22

    div-int v22, v25, v11

    .line 205
    move v11, v5

    goto :goto_5

    .line 217
    .end local v5    # "actualHeight":I
    .end local v6    # "actualWidth":I
    .restart local v16    # "pbottom":I
    .restart local v17    # "pleft":I
    .restart local v18    # "pright":I
    .restart local v19    # "ptop":I
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 275
    .restart local v7    # "adjustViewBoundsCompat":Z
    :cond_d
    add-int v25, v17, v18

    add-int v22, v22, v25

    .line 276
    add-int v25, v19, v16

    add-int v11, v11, v25

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getSuggestedMinimumWidth()I

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getSuggestedMinimumHeight()I

    move-result v25

    move/from16 v0, v25

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 281
    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveSizeAndState(III)I

    move-result v23

    .line 282
    .restart local v23    # "widthSize":I
    const/16 v25, 0x0

    move/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveSizeAndState(III)I

    move-result v12

    .restart local v12    # "heightSize":I
    goto/16 :goto_2
.end method

.method public setAdjustViewBounds(Z)V
    .locals 0
    .param p1, "adjustViewBounds"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->adjustViewBounds:Z

    .line 150
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->setAdjustViewBounds(Z)V

    .line 151
    return-void
.end method

.method public setImageURI2(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->cloneWithUri(Ljava/net/URI;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 68
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    .line 69
    return-void
.end method

.method public setImageURI2(Ljava/net/URI;II)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "loadingResourceId"    # I
    .param p3, "errorResourceId"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->cloneWithUri(Ljava/net/URI;II)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 63
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    .line 64
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->setMaxHeight(I)V

    .line 144
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxHeight:I

    .line 145
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->setMaxWidth(I)V

    .line 138
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxWidth:I

    .line 139
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setText(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->getArgText()Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->access$000(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 53
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    .line 55
    :cond_0
    return-void
.end method
