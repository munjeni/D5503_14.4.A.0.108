.class public Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterStamps.java"


# instance fields
.field private mImageDisplayRect:Landroid/graphics/Rect;

.field private mNeedApply:Z

.field private mRotationDegree:F

.field private mStampBitmap:Landroid/graphics/Bitmap;

.field private mStampHeight:F

.field private mStampWidth:F

.field private mStampX:I

.field private mStampY:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "stampBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "displayRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mRotationDegree:F

    .line 28
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampX:I

    .line 30
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampY:I

    .line 34
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mNeedApply:Z

    .line 37
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->setFilterType(B)V

    .line 38
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    .line 39
    const-string v0, "Stamps"

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mImageDisplayRect:Landroid/graphics/Rect;

    .line 41
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 27
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    .line 114
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mNeedApply:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 115
    new-instance v8, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 116
    .local v8, "cropBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getCropBounds(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object v7

    .line 117
    .local v7, "crop":Landroid/graphics/RectF;
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v23

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v23

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_0

    .line 118
    invoke-static {v7}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->roundNearest(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v8

    .line 119
    :cond_0
    const/16 v22, 0x0

    .line 120
    .local v22, "temp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->hasSwitchedWidthHeight()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 121
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v23

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v24

    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v23 .. v25}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 127
    :goto_0
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v9, v0, [F

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40000000

    div-float v24, v24, v25

    aput v24, v9, v23

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40000000

    div-float v24, v24, v25

    aput v24, v9, v23

    .line 131
    .local v9, "displayCenter":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    move-object/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->buildTotalXform(FF[F)Landroid/graphics/Matrix;

    move-result-object v15

    .line 134
    .local v15, "m1":Landroid/graphics/Matrix;
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    .line 135
    .local v16, "m2":Landroid/graphics/Matrix;
    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 138
    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 139
    .local v5, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v19, v0

    .line 140
    .local v19, "sourceWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mImageDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v14, v19, v23

    .line 142
    .local v14, "enlargeRate":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampX:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mImageDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v14

    move/from16 v0, v23

    float-to-int v12, v0

    .line 143
    .local v12, "drawX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mImageDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v14

    move/from16 v0, v23

    float-to-int v13, v0

    .line 144
    .local v13, "drawY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampWidth:F

    move/from16 v23, v0

    mul-float v23, v23, v14

    move/from16 v0, v23

    float-to-int v11, v0

    .line 145
    .local v11, "drawWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampHeight:F

    move/from16 v23, v0

    mul-float v23, v23, v14

    move/from16 v0, v23

    float-to-int v10, v0

    .line 147
    .local v10, "drawHeight":I
    new-instance v20, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 148
    .local v20, "stampBmpBounds":Landroid/graphics/Rect;
    new-instance v21, Landroid/graphics/Rect;

    add-int v23, v12, v11

    add-int v24, v13, v10

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v12, v13, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 150
    .local v21, "stampDrawBounds":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 151
    div-int/lit8 v23, v11, 0x2

    add-int v23, v23, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v17, v0

    .line 152
    .local v17, "rotateCenterX":F
    div-int/lit8 v23, v10, 0x2

    add-int v23, v23, v13

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v18, v0

    .line 153
    .local v18, "rotateCenterY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mRotationDegree:F

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 155
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 157
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    .local v6, "canvasBitmap":Landroid/graphics/Canvas;
    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 159
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    .line 162
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "canvasBitmap":Landroid/graphics/Canvas;
    .end local v7    # "crop":Landroid/graphics/RectF;
    .end local v8    # "cropBounds":Landroid/graphics/Rect;
    .end local v9    # "displayCenter":[F
    .end local v10    # "drawHeight":I
    .end local v11    # "drawWidth":I
    .end local v12    # "drawX":I
    .end local v13    # "drawY":I
    .end local v14    # "enlargeRate":F
    .end local v15    # "m1":Landroid/graphics/Matrix;
    .end local v16    # "m2":Landroid/graphics/Matrix;
    .end local v17    # "rotateCenterX":F
    .end local v18    # "rotateCenterY":F
    .end local v19    # "sourceWidth":F
    .end local v20    # "stampBmpBounds":Landroid/graphics/Rect;
    .end local v21    # "stampDrawBounds":Landroid/graphics/Rect;
    .end local v22    # "temp":Landroid/graphics/Bitmap;
    :cond_1
    return-object p1

    .line 124
    .restart local v7    # "crop":Landroid/graphics/RectF;
    .restart local v8    # "cropBounds":Landroid/graphics/Rect;
    .restart local v22    # "temp":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v23

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v24

    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v23 .. v25}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    goto/16 :goto_0
.end method

.method public isNil()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public same(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Z
    .locals 10
    .param p1, "filter"    # Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .prologue
    const/4 v7, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->same(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Z

    move-result v5

    .line 72
    .local v5, "isStampFilter":Z
    if-nez v5, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v7

    .line 75
    :cond_1
    instance-of v8, p1, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;

    if-eqz v8, :cond_0

    move-object v6, p1

    .line 78
    check-cast v6, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;

    .line 80
    .local v6, "stampFilter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    iget-object v8, v6, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_0

    :cond_2
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_3

    iget-object v8, v6, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_0

    .line 85
    :cond_3
    const/4 v4, 0x0

    .line 86
    .local v4, "isBitmapSame":Z
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_5

    iget-object v8, v6, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_5

    .line 87
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    .line 88
    .local v2, "byteCnt":I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 89
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 91
    iget-object v8, v6, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    .line 92
    .local v3, "cnt":I
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 93
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v8, v6, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 94
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 95
    const/4 v4, 0x1

    .line 101
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "byteCnt":I
    .end local v3    # "cnt":I
    :cond_4
    :goto_1
    iget v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampWidth:F

    iget v9, v6, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampWidth:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    iget v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampHeight:F

    iget v9, v6, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampHeight:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    iget v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampX:I

    iget v9, v6, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampX:I

    if-ne v8, v9, :cond_0

    iget v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampY:I

    iget v9, v6, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampY:I

    if-ne v8, v9, :cond_0

    if-eqz v4, :cond_0

    .line 108
    const/4 v7, 0x1

    goto :goto_0

    .line 98
    :cond_5
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public setNeedApply(Z)V
    .locals 0
    .param p1, "isNeedApply"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mNeedApply:Z

    .line 59
    return-void
.end method

.method public setStampLocation(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampX:I

    .line 54
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampY:I

    .line 55
    return-void
.end method

.method public setStampRotation(F)V
    .locals 0
    .param p1, "degree"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mRotationDegree:F

    .line 50
    return-void
.end method

.method public setStampSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampWidth:F

    .line 45
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->mStampHeight:F

    .line 46
    return-void
.end method
