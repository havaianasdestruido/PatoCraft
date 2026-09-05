.class public Lcom/microsoft/xbox/toolkit/ui/TextureResizer;
.super Ljava/lang/Object;
.source "TextureResizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createScaledBitmap8888(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 24
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "dstwidth"    # I
    .param p2, "dstheight"    # I
    .param p3, "filter"    # Z

    .prologue
    .line 15
    const/16 v18, 0x0

    .line 16
    .local v18, "x":I
    const/16 v19, 0x0

    .line 18
    .local v19, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 19
    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 20
    .local v9, "height":I
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 21
    .local v15, "sx":F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v9

    move/from16 v21, v0

    div-float v16, v20, v21

    .line 22
    .local v16, "sy":F
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 23
    .local v10, "m":Landroid/graphics/Matrix;
    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 25
    add-int v20, v18, v17

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 26
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "x + width must be <= bitmap.width()"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 28
    :cond_0
    add-int v20, v19, v9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 29
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "y + height must be <= bitmap.height()"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 33
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v20

    if-nez v20, :cond_3

    if-nez v18, :cond_3

    if-nez v19, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    if-ne v9, v0, :cond_3

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 80
    .end local p0    # "source":Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    return-object p0

    .line 37
    .restart local p0    # "source":Landroid/graphics/Bitmap;
    :cond_3
    move/from16 v12, v17

    .line 38
    .local v12, "neww":I
    move v11, v9

    .line 39
    .local v11, "newh":I
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .line 43
    .local v5, "canvas":Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Rect;

    add-int v20, v18, v17

    add-int v21, v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 44
    .local v14, "srcR":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/RectF;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v9

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 46
    .local v7, "dstR":Landroid/graphics/RectF;
    const/4 v13, 0x0

    .line 48
    .local v13, "paint":Landroid/graphics/Paint;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 49
    :cond_4
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    invoke-static {v12, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 50
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 75
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 77
    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v14, v7, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object/from16 p0, v4

    .line 80
    goto :goto_0

    .line 55
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v20

    if-nez v20, :cond_7

    invoke-virtual {v10}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v20

    if-nez v20, :cond_9

    :cond_7
    const/4 v8, 0x1

    .line 56
    .local v8, "hasAlpha":Z
    :goto_2
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 57
    .local v6, "deviceR":Landroid/graphics/RectF;
    invoke-virtual {v10, v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 58
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 59
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 60
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    invoke-static {v12, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 61
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_8

    .line 62
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 64
    :cond_8
    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    invoke-virtual {v5, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 66
    new-instance v13, Landroid/graphics/Paint;

    .end local v13    # "paint":Landroid/graphics/Paint;
    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 67
    .restart local v13    # "paint":Landroid/graphics/Paint;
    move/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 68
    invoke-virtual {v10}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v20

    if-nez v20, :cond_5

    .line 69
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_1

    .line 55
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "deviceR":Landroid/graphics/RectF;
    .end local v8    # "hasAlpha":Z
    :cond_9
    const/4 v8, 0x0

    goto :goto_2
.end method
