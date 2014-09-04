.class public Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterDoodle.java"


# instance fields
.field private mCanShown:Z

.field private mDoodles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 41
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mDoodles:Ljava/util/Vector;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mCanShown:Z

    .line 46
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->setFilterType(B)V

    .line 47
    return-void
.end method


# virtual methods
.method public addDoodles(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "doodles":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;>;"
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 51
    return-void
.end method

.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 24
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    .line 60
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mCanShown:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 61
    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 62
    .local v5, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 63
    .local v7, "cropBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getCropBounds(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object v6

    .line 64
    .local v6, "crop":Landroid/graphics/RectF;
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v19

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v19

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_0

    .line 65
    invoke-static {v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->roundNearest(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v7

    .line 66
    :cond_0
    const/16 v17, 0x0

    .line 67
    .local v17, "temp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->hasSwitchedWidthHeight()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 68
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v19

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v20

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 74
    :goto_0
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v8, v0, [F

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000

    div-float v20, v20, v21

    aput v20, v8, v19

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000

    div-float v20, v20, v21

    aput v20, v8, v19

    .line 78
    .local v8, "displayCenter":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->buildTotalXform(FF[F)Landroid/graphics/Matrix;

    move-result-object v12

    .line 81
    .local v12, "m1":Landroid/graphics/Matrix;
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 82
    .local v13, "m2":Landroid/graphics/Matrix;
    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 84
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 85
    .local v14, "matrix":Landroid/graphics/Matrix;
    new-instance v15, Landroid/graphics/RectF;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 86
    .local v15, "newRect":Landroid/graphics/RectF;
    new-instance v19, Landroid/graphics/RectF;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000

    const/high16 v23, 0x3f800000

    invoke-direct/range {v19 .. v23}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v20, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v15, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 88
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    .local v4, "c":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 90
    .local v10, "drawingPath":Landroid/graphics/Path;
    invoke-static {}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->createPaint()Landroid/graphics/Paint;

    move-result-object v16

    .line 91
    .local v16, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mDoodles:Ljava/util/Vector;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    .line 92
    .local v9, "doodle":Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;
    invoke-virtual {v9}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->getColor()I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    new-instance v19, Landroid/graphics/RectF;

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual {v9}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->getFormatW()F

    move-result v22

    invoke-virtual {v9}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->getFormatH()F

    move-result v23

    invoke-direct/range {v19 .. v23}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v20, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v15, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 96
    invoke-virtual {v9, v14, v10}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->getDrawingPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 97
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v18, v0

    .line 98
    .local v18, "w":F
    invoke-virtual {v9}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->getimageBound()Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v19

    if-lez v19, :cond_1

    .line 99
    invoke-virtual {v9}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->getimageBound()Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v18, v0

    .line 101
    :cond_1
    const/high16 v19, 0x41200000

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    div-float v19, v19, v18

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    move-object/from16 v0, v16

    invoke-virtual {v4, v10, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 71
    .end local v4    # "c":Landroid/graphics/Canvas;
    .end local v8    # "displayCenter":[F
    .end local v9    # "doodle":Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;
    .end local v10    # "drawingPath":Landroid/graphics/Path;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "m1":Landroid/graphics/Matrix;
    .end local v13    # "m2":Landroid/graphics/Matrix;
    .end local v14    # "matrix":Landroid/graphics/Matrix;
    .end local v15    # "newRect":Landroid/graphics/RectF;
    .end local v16    # "paint":Landroid/graphics/Paint;
    .end local v18    # "w":F
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v19

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v20

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    goto/16 :goto_0

    .line 104
    .restart local v4    # "c":Landroid/graphics/Canvas;
    .restart local v8    # "displayCenter":[F
    .restart local v10    # "drawingPath":Landroid/graphics/Path;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "m1":Landroid/graphics/Matrix;
    .restart local v13    # "m2":Landroid/graphics/Matrix;
    .restart local v14    # "matrix":Landroid/graphics/Matrix;
    .restart local v15    # "newRect":Landroid/graphics/RectF;
    .restart local v16    # "paint":Landroid/graphics/Paint;
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v13, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 105
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 107
    .end local v4    # "c":Landroid/graphics/Canvas;
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "crop":Landroid/graphics/RectF;
    .end local v7    # "cropBounds":Landroid/graphics/Rect;
    .end local v8    # "displayCenter":[F
    .end local v10    # "drawingPath":Landroid/graphics/Path;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "m1":Landroid/graphics/Matrix;
    .end local v13    # "m2":Landroid/graphics/Matrix;
    .end local v14    # "matrix":Landroid/graphics/Matrix;
    .end local v15    # "newRect":Landroid/graphics/RectF;
    .end local v16    # "paint":Landroid/graphics/Paint;
    .end local v17    # "temp":Landroid/graphics/Bitmap;
    :cond_4
    return-object p1
.end method

.method public clone()Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;

    .line 144
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->clone()Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->clone()Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;

    move-result-object v0

    return-object v0
.end method

.method public isNil()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mDoodles:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public same(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Z
    .locals 5
    .param p1, "filter"    # Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->same(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Z

    move-result v1

    .line 121
    .local v1, "isDoodleFilter":Z
    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v2

    .line 124
    :cond_1
    instance-of v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 127
    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;

    .line 128
    .local v0, "doodleFilter":Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mDoodles:Ljava/util/Vector;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mDoodles:Ljava/util/Vector;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mDoodles:Ljava/util/Vector;

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mDoodles:Ljava/util/Vector;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mDoodles:Ljava/util/Vector;

    if-nez v3, :cond_0

    :cond_3
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mDoodles:Ljava/util/Vector;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mDoodles:Ljava/util/Vector;

    if-eqz v3, :cond_0

    .line 135
    :cond_4
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mCanShown:Z

    iget-boolean v4, v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mCanShown:Z

    xor-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 138
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setDoodles(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "doodles":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;>;"
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 55
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 56
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->mCanShown:Z

    .line 149
    return-void
.end method
