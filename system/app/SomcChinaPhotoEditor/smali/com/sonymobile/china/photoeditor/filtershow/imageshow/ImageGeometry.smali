.class public abstract Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;
.super Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;
.source "ImageGeometry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;
    }
.end annotation


# static fields
.field protected static final MAX_STRAIGHTEN_ANGLE:F = 45.0f

.field protected static final MIN_STRAIGHTEN_ANGLE:F = -45.0f


# instance fields
.field protected mCenterX:F

.field protected mCenterY:F

.field protected mCurrentX:F

.field protected mCurrentY:F

.field private mHasDrawn:Z

.field private mLocalDisplayBounds:Landroid/graphics/RectF;

.field private mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

.field protected mMode:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

.field protected mTouchCenterX:F

.field protected mTouchCenterY:F

.field private mVisibilityGained:Z

.field protected mXOffset:F

.field protected mYOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 38
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    .line 57
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    .line 59
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    .line 61
    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mXOffset:F

    .line 63
    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mYOffset:F

    .line 69
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mMode:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 38
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    .line 57
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    .line 59
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    .line 61
    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mXOffset:F

    .line 63
    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mYOffset:F

    .line 69
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mMode:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    .line 73
    return-void
.end method

.method protected static angleFor(FF)F
    .locals 4
    .param p0, "dx"    # F
    .param p1, "dy"    # F

    .prologue
    .line 85
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private calculateLocalScalingFactorAndOffset()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000

    .line 120
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    if-nez v5, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 123
    .local v2, "imageBounds":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 124
    .local v4, "imageWidth":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 125
    .local v3, "imageHeight":F
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 126
    .local v1, "displayWidth":F
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 128
    .local v0, "displayHeight":F
    div-float v5, v1, v6

    iput v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCenterX:F

    .line 129
    div-float v5, v0, v6

    iput v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCenterY:F

    .line 130
    sub-float v5, v0, v3

    div-float/2addr v5, v6

    iput v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mYOffset:F

    .line 131
    sub-float v5, v1, v4

    div-float/2addr v5, v6

    iput v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mXOffset:F

    .line 132
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->updateScale()V

    goto :goto_0
.end method

.method protected static drawClosedPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;[F)Landroid/graphics/Path;
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "points"    # [F

    .prologue
    .line 254
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 255
    .local v0, "crop":Landroid/graphics/Path;
    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 256
    const/4 v1, 0x2

    aget v1, p2, v1

    const/4 v2, 0x3

    aget v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 257
    const/4 v1, 0x4

    aget v1, p2, v1

    const/4 v2, 0x5

    aget v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 258
    const/4 v1, 0x6

    aget v1, p2, v1

    const/4 v2, 0x7

    aget v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 259
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 260
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 261
    return-object v0
.end method

.method protected static drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 21
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "innerBounds"    # Landroid/graphics/RectF;
    .param p3, "outerBounds"    # Landroid/graphics/RectF;
    .param p4, "rotation"    # F
    .param p5, "centerX"    # F
    .param p6, "centerY"    # F

    .prologue
    .line 521
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    .line 522
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 524
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/RectF;->right:F

    sub-float v19, v4, v7

    .line 525
    .local v19, "x":F
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v20, v4, v7

    .line 526
    .local v20, "y":F
    mul-float v4, v19, v19

    mul-float v7, v20, v20

    add-float/2addr v4, v7

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v4, v7

    const/high16 v7, 0x40000000

    div-float v18, v4, v7

    .line 527
    .local v18, "longest":F
    sub-float v5, p5, v18

    .line 528
    .local v5, "minX":F
    add-float v15, p5, v18

    .line 529
    .local v15, "maxX":F
    sub-float v6, p6, v18

    .line 530
    .local v6, "minY":F
    add-float v11, p6, v18

    .line 531
    .local v11, "maxY":F
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 532
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v7, p0

    move v8, v5

    move-object/from16 v12, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 533
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v7, p0

    move v10, v15

    move-object/from16 v12, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 534
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    move-object/from16 v12, p0

    move v14, v6

    move-object/from16 v17, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 535
    move/from16 v0, p4

    neg-float v4, v0

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 536
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->restore()V

    .line 537
    return-void
.end method

.method protected static fixAspectRatio(Landroid/graphics/RectF;FF)V
    .locals 9
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    const/high16 v7, 0x40000000

    .line 265
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 266
    .local v4, "scale":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 267
    .local v0, "centX":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 268
    .local v1, "centY":F
    mul-float v5, v4, p1

    div-float v3, v5, v7

    .line 269
    .local v3, "hw":F
    mul-float v5, v4, p2

    div-float v2, v5, v7

    .line 270
    .local v2, "hh":F
    sub-float v5, v0, v3

    sub-float v6, v1, v2

    add-float v7, v0, v3

    add-float v8, v1, v2

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 272
    return-void
.end method

.method protected static getCornersFromRect(Landroid/graphics/RectF;)[F
    .locals 3
    .param p0, "r"    # Landroid/graphics/RectF;

    .prologue
    .line 232
    const/16 v1, 0x8

    new-array v0, v1, [F

    const/4 v1, 0x0

    iget v2, p0, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    .line 239
    .local v0, "corners":[F
    return-object v0
.end method

.method protected static getEdgePoints(Landroid/graphics/RectF;[F)V
    .locals 5
    .param p0, "imageBound"    # Landroid/graphics/RectF;
    .param p1, "array"    # [F

    .prologue
    .line 245
    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 251
    :cond_0
    return-void

    .line 247
    :cond_1
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 248
    aget v1, p1, v0

    iget v2, p0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->clamp(FFF)F

    move-result v1

    aput v1, p1, v0

    .line 249
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->clamp(FFF)F

    move-result v2

    aput v2, p1, v1

    .line 247
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method protected static getNewHeightForWidthAspect(FFF)F
    .locals 1
    .param p0, "width"    # F
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 275
    mul-float v0, p0, p2

    div-float/2addr v0, p1

    return v0
.end method

.method protected static getNewWidthForHeightAspect(FFF)F
    .locals 1
    .param p0, "height"    # F
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 279
    mul-float v0, p0, p1

    div-float/2addr v0, p2

    return v0
.end method

.method public static getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 32
    .param p0, "imageRect"    # Landroid/graphics/RectF;
    .param p1, "straightenAngle"    # F

    .prologue
    .line 393
    move/from16 v8, p1

    .line 394
    .local v8, "deg":F
    const/16 v26, 0x0

    cmpg-float v26, v8, v26

    if-gez v26, :cond_0

    .line 395
    neg-float v8, v8

    .line 397
    :cond_0
    float-to-double v0, v8

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 398
    .local v3, "a":D
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    .line 399
    .local v21, "sina":D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 401
    .local v6, "cosa":D
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->width()F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v19, v0

    .line 402
    .local v19, "rw":D
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->height()F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 403
    .local v16, "rh":D
    mul-double v26, v16, v16

    mul-double v28, v19, v21

    mul-double v30, v16, v6

    add-double v28, v28, v30

    div-double v9, v26, v28

    .line 404
    .local v9, "h1":D
    mul-double v26, v16, v19

    mul-double v28, v19, v6

    mul-double v30, v16, v21

    add-double v28, v28, v30

    div-double v11, v26, v28

    .line 405
    .local v11, "h2":D
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    .line 406
    .local v13, "hh":D
    mul-double v26, v13, v19

    div-double v24, v26, v16

    .line 408
    .local v24, "ww":D
    sub-double v26, v19, v24

    const-wide/high16 v28, 0x3fe0000000000000L

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v15, v0

    .line 409
    .local v15, "left":F
    sub-double v26, v16, v13

    const-wide/high16 v28, 0x3fe0000000000000L

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v23, v0

    .line 410
    .local v23, "top":F
    float-to-double v0, v15

    move-wide/from16 v26, v0

    add-double v26, v26, v24

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v18, v0

    .line 411
    .local v18, "right":F
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v26, v26, v13

    move-wide/from16 v0, v26

    double-to-float v5, v0

    .line 413
    .local v5, "bottom":F
    new-instance v26, Landroid/graphics/RectF;

    move-object/from16 v0, v26

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-direct {v0, v15, v1, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v26
.end method

.method private setupLocalDisplayBounds(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/RectF;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    .line 81
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->calculateLocalScalingFactorAndOffset()V

    .line 82
    return-void
.end method

.method protected static snappedAngle(F)I
    .locals 3
    .param p0, "angle"    # F

    .prologue
    const/high16 v2, 0x42b40000

    .line 89
    rem-float v1, p0, v2

    .line 90
    .local v1, "remainder":F
    div-float v2, p0, v2

    float-to-int v0, v2

    .line 91
    .local v0, "current":I
    const/high16 v2, -0x3dcc0000

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 92
    add-int/lit8 v0, v0, -0x1

    .line 96
    :cond_0
    :goto_0
    mul-int/lit8 v2, v0, 0x5a

    return v2

    .line 93
    :cond_1
    const/high16 v2, 0x42340000

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addTempPreset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 378
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 379
    .local v0, "copy":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setGeometry(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;)V

    .line 380
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setIsFx(Z)V

    .line 382
    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Z)V

    .line 383
    return-void
.end method

.method public applyChanges()V
    .locals 2

    .prologue
    .line 385
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 386
    .local v0, "copy":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setGeometry(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;)V

    .line 387
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 388
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setIsFx(Z)V

    .line 389
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Z)V

    .line 390
    return-void
.end method

.method public cancelUpdateImagePreset()V
    .locals 2

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setEndpoint(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    .line 376
    return-void
.end method

.method protected computeScale(FF)F
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 114
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 115
    .local v1, "imageWidth":F
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 116
    .local v0, "imageHeight":F
    invoke-static {v1, v0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v2

    return v2
.end method

.method protected constrainedRotation(F)I
    .locals 3
    .param p1, "rotation"    # F

    .prologue
    .line 195
    const/high16 v1, 0x43b40000

    rem-float v1, p1, v1

    const/high16 v2, 0x42b40000

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 196
    .local v0, "r":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 197
    :cond_0
    mul-int/lit8 v1, v0, 0x5a

    return v1
.end method

.method protected cropBounds()Landroid/graphics/RectF;
    .locals 4

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 473
    .local v0, "bounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getGeoMatrix(Landroid/graphics/RectF;Z)Landroid/graphics/Matrix;

    move-result-object v1

    .line 474
    .local v1, "m":Landroid/graphics/Matrix;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 475
    return-object v0
.end method

.method protected drawCrop(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->cropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 481
    .local v0, "bounds":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 482
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 483
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 484
    return-void
.end method

.method protected drawCropSafe(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getGeoMatrix(Landroid/graphics/RectF;Z)Landroid/graphics/Matrix;

    move-result-object v2

    .line 488
    .local v2, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 489
    .local v1, "crop":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 490
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    .line 491
    .local v0, "corners":[F
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 492
    invoke-static {p1, p2, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->drawClosedPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;[F)Landroid/graphics/Path;

    .line 499
    .end local v0    # "corners":[F
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 495
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 496
    .local v3, "path":Landroid/graphics/Path;
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 497
    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawImageBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v1

    .line 438
    .local v1, "scale":F
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v3, v4

    .line 439
    .local v3, "yoff":F
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    .line 440
    .local v2, "xoff":F
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v4, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->buildGeometryUIMatrix(FFF)Landroid/graphics/Matrix;

    move-result-object v0

    .line 441
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->drawImageBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    .line 442
    return-void
.end method

.method protected drawImageBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 432
    invoke-virtual {p1, p2, p4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 433
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 434
    return-void
.end method

.method protected drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "innerBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v2, 0x0

    .line 514
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v3, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 515
    .local v3, "display":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v4

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V

    .line 517
    return-void
.end method

.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 557
    return-void
.end method

.method protected drawStraighten(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->straightenBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 454
    .local v0, "bounds":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 455
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 456
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 457
    return-void
.end method

.method protected drawTransformed(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/RectF;
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "photo"    # Landroid/graphics/Bitmap;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 560
    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7, v15}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v13

    .line 562
    .local v13, "photoBounds":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 563
    .local v9, "cropBounds":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v14

    .line 565
    .local v14, "scale":F
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    const/high16 v6, 0x42b40000

    div-float/2addr v5, v6

    float-to-int v5, v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v14

    .line 569
    :cond_0
    invoke-static {v9, v14}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    .line 570
    .local v4, "scaledCrop":Landroid/graphics/RectF;
    invoke-static {v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v3

    .line 571
    .local v3, "scaledPhoto":Landroid/graphics/RectF;
    const/4 v5, 0x2

    new-array v8, v5, [F

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    aput v6, v8, v5

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    aput v6, v8, v5

    .line 574
    .local v8, "displayCenter":[F
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalFlip()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v7

    invoke-static/range {v3 .. v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->buildCenteredPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v10

    .line 577
    .local v10, "m":Landroid/graphics/Matrix;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalFlip()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v7

    invoke-static/range {v3 .. v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v11

    .line 579
    .local v11, "m1":Landroid/graphics/Matrix;
    invoke-virtual {v11, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 580
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 581
    .local v12, "path":Landroid/graphics/Path;
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 583
    invoke-virtual {v10, v14, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 584
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 585
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 586
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 588
    const/4 v5, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 589
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 590
    const/high16 v5, 0x40000000

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 591
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 592
    return-object v4
.end method

.method protected drawTransformedBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;Z)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "clip"    # Z

    .prologue
    const/4 v1, 0x0

    .line 502
    const/16 v0, 0xff

    invoke-virtual {p3, v0, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 503
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->drawImageBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 504
    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 505
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 506
    const/high16 v0, 0x40000000

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 507
    invoke-virtual {p0, p1, p3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->drawCropSafe(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 508
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getDefaultBackgroundColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 509
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 510
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->unrotatedCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V

    .line 511
    return-void
.end method

.method protected drawTransformedCropped(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "photo"    # Landroid/graphics/Bitmap;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v14

    .line 597
    .local v14, "photoBounds":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 598
    .local v9, "cropBounds":Landroid/graphics/RectF;
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v12

    .line 599
    .local v12, "imageWidth":F
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v11

    .line 600
    .local v11, "imageHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v12, v11, v5, v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v15

    .line 602
    .local v15, "scale":F
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    const/high16 v6, 0x42b40000

    div-float/2addr v5, v6

    float-to-int v5, v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v12, v11, v5, v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v15

    .line 606
    :cond_0
    invoke-static {v9, v15}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    .line 607
    .local v4, "scaledCrop":Landroid/graphics/RectF;
    invoke-static {v14, v15}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v3

    .line 608
    .local v3, "scaledPhoto":Landroid/graphics/RectF;
    const/4 v5, 0x2

    new-array v8, v5, [F

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    aput v6, v8, v5

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    aput v6, v8, v5

    .line 611
    .local v8, "displayCenter":[F
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalFlip()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v7

    invoke-static/range {v3 .. v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v13

    .line 613
    .local v13, "m1":Landroid/graphics/Matrix;
    const/4 v5, 0x2

    new-array v10, v5, [F

    const/4 v5, 0x0

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    aput v6, v10, v5

    const/4 v5, 0x1

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    aput v6, v10, v5

    .line 616
    .local v10, "cropCenter":[F
    invoke-virtual {v13, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 617
    invoke-static {v13, v10, v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v13, v5, v6, v7}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 619
    invoke-virtual {v13, v15, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 621
    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 622
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 623
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 624
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getDefaultBackgroundColor()I

    move-result v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 627
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 628
    const/4 v5, 0x0

    aget v5, v8, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v8, v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 630
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V

    .line 631
    return-void
.end method

.method protected gainedVisibility()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method protected getCurrentTouchAngle()F
    .locals 8

    .prologue
    .line 100
    iget v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    iget v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    iget v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    iget v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 101
    const/4 v6, 0x0

    .line 110
    :goto_0
    return v6

    .line 103
    :cond_0
    iget v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    iget v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCenterX:F

    sub-float v2, v6, v7

    .line 104
    .local v2, "dX1":F
    iget v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    iget v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCenterY:F

    sub-float v4, v6, v7

    .line 105
    .local v4, "dY1":F
    iget v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    iget v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCenterX:F

    sub-float v3, v6, v7

    .line 106
    .local v3, "dX2":F
    iget v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    iget v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCenterY:F

    sub-float v5, v6, v7

    .line 108
    .local v5, "dY2":F
    invoke-static {v2, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->angleFor(FF)F

    move-result v0

    .line 109
    .local v0, "angleA":F
    invoke-static {v3, v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->angleFor(FF)F

    move-result v1

    .line 110
    .local v1, "angleB":F
    sub-float v6, v1, v0

    const/high16 v7, 0x43b40000

    rem-float/2addr v6, v7

    goto :goto_0
.end method

.method protected getGeoMatrix(Landroid/graphics/RectF;Z)Landroid/graphics/Matrix;
    .locals 11
    .param p1, "r"    # Landroid/graphics/RectF;
    .param p2, "onlyRotate"    # Z

    .prologue
    const/high16 v10, 0x40000000

    .line 417
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 418
    .local v7, "pbounds":Landroid/graphics/RectF;
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v0, v6, v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v3

    .line 420
    .local v3, "scale":F
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v0

    const/high16 v6, 0x42b40000

    div-float/2addr v0, v6

    float-to-int v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v0, v6, v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v3

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    .line 424
    .local v5, "yoff":F
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 425
    .local v4, "xoff":F
    iget v0, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, v10

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    add-float v1, v0, v6

    .line 426
    .local v1, "w":F
    iget v0, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, v10

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    add-float v2, v0, v6

    .line 427
    .local v2, "h":F
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->buildGeometryMatrix(FFFFFZ)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalCropBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getPreviewCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalDisplayBounds()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method protected getLocalFlip()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getFlipType()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalGeoFlipMatrix(FF)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getFlipMatrix(FF)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalPhotoBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalRotation()F
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getRotation()F

    move-result v0

    return v0
.end method

.method protected getLocalScale()F
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getScaleFactor()F

    move-result v0

    return v0
.end method

.method protected getLocalStraighten()F
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getStraightenRotation()F

    move-result v0

    return v0
.end method

.method protected getLocalValue()I
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    const-string v0, "Geometry"

    return-object v0
.end method

.method protected getTotalLocalRotation()F
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method protected lostVisibility()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getDirtyGeometryFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->syncLocalToMasterGeometry()V

    .line 543
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->clearDirtyGeometryFlag()V

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->requestFilteredImages()V

    .line 546
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getMaster()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getFiltersOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 547
    .local v0, "image":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 548
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->invalidate()V

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    .line 552
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 309
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->onSizeChanged(IIII)V

    .line 310
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setupLocalDisplayBounds(Landroid/graphics/RectF;)V

    .line 311
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 327
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setNoAction()V

    .line 329
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getPanelController()Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getPanelController()Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->onNewValue(I)V

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->invalidate()V

    .line 333
    const/4 v0, 0x1

    return v0

    .line 317
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setActionDown(FF)V

    goto :goto_0

    .line 320
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setActionUp()V

    .line 321
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->updataGeometry()V

    goto :goto_0

    .line 324
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setActionMove(FF)V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 284
    invoke-super {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->onVisibilityChanged(Landroid/view/View;I)V

    .line 285
    if-nez p2, :cond_0

    .line 286
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 287
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->syncLocalToMasterGeometry()V

    .line 288
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 289
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->gainedVisibility()V

    .line 297
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    if-ne v0, v1, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->lostVisibility()V

    .line 294
    :cond_1
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 295
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    goto :goto_0
.end method

.method public resetParameter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->resetParameter()V

    .line 138
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setLocalRotation(F)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setLocalStraighten(F)V

    .line 140
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 141
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setLocalFlip(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;)V

    .line 142
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->invalidate()V

    .line 143
    return-void
.end method

.method protected setActionDown(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 341
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    .line 342
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    .line 343
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    .line 344
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    .line 345
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;->DOWN:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mMode:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    .line 346
    return-void
.end method

.method protected setActionMove(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 349
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    .line 350
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    .line 351
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;->MOVE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mMode:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    .line 352
    return-void
.end method

.method protected setActionUp()V
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;->UP:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mMode:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    .line 356
    return-void
.end method

.method protected setLocalCropBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/RectF;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->setCropBounds(Landroid/graphics/RectF;)V

    .line 211
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 212
    return-void
.end method

.method protected setLocalFlip(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;)V
    .locals 1
    .param p1, "flip"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->setFlipType(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;)V

    .line 220
    return-void
.end method

.method protected setLocalRotation(F)V
    .locals 1
    .param p1, "r"    # F

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->setRotation(F)V

    .line 188
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 189
    return-void
.end method

.method protected setLocalScale(F)V
    .locals 1
    .param p1, "s"    # F

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->setScaleFactor(F)V

    .line 177
    return-void
.end method

.method protected setLocalStraighten(F)V
    .locals 1
    .param p1, "r"    # F

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->setStraightenRotation(F)V

    .line 206
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 207
    return-void
.end method

.method protected setNoAction()V
    .locals 1

    .prologue
    .line 359
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mMode:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    .line 360
    return-void
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method protected straightenBounds()Landroid/graphics/RectF;
    .locals 4

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v3

    invoke-static {v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    .line 447
    .local v0, "bounds":Landroid/graphics/RectF;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getGeoMatrix(Landroid/graphics/RectF;Z)Landroid/graphics/Matrix;

    move-result-object v1

    .line 448
    .local v1, "m":Landroid/graphics/Matrix;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 449
    return-object v0
.end method

.method protected syncLocalToMasterGeometry()V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getMaster()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getGeometry()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    .line 148
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->calculateLocalScalingFactorAndOffset()V

    .line 149
    return-void
.end method

.method protected unrotatedCropBounds()Landroid/graphics/RectF;
    .locals 10

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 461
    .local v7, "bounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 462
    .local v9, "pbounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v3

    .line 463
    .local v3, "scale":F
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    .line 464
    .local v5, "yoff":F
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 465
    .local v4, "xoff":F
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->buildGeometryMatrix(FFFFFF)Landroid/graphics/Matrix;

    move-result-object v8

    .line 467
    .local v8, "m":Landroid/graphics/Matrix;
    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 468
    return-object v7
.end method

.method public updataGeometry()V
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setGeometry(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;)V

    .line 373
    return-void
.end method

.method protected updateScale()V
    .locals 4

    .prologue
    .line 180
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v3

    invoke-static {v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    .line 182
    .local v0, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v1

    .line 183
    .local v1, "zoom":F
    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setLocalScale(F)V

    .line 184
    return-void
.end method
