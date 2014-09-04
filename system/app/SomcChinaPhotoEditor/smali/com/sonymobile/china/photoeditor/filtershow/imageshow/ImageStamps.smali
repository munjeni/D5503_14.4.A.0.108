.class public Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;
.super Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;
.source "ImageStamps.java"


# static fields
.field private static final POINTER_EDGE:F = 2.0f

.field private static final STAMP_DEFAULT_SIZE_RATE:F = 0.66f

.field private static final STAMP_STATUS_DRAG:I = 0x1

.field private static final STAMP_STATUS_IDLE:I = 0x0

.field private static final STAMP_STATUS_ROTATE_AND_RESIZE:I = 0x4


# instance fields
.field private first_x:I

.field private first_y:I

.field private mBaseDegree:F

.field private mIsBaseDegreeSetted:Z

.field private mIsNeedToResetMove:Z

.field private mIsOldDistanceInited:Z

.field protected mLastDegree:F

.field private mLeftBottom:Landroid/graphics/Point;

.field private mLeftTop:Landroid/graphics/Point;

.field private mOldDistance:F

.field private mRightTop:Landroid/graphics/Point;

.field private mRotationDegree:F

.field private mScaledDistance:F

.field private mStampBitmap:Landroid/graphics/Bitmap;

.field private mStampHeight:F

.field private mStampStatus:I

.field private mStampWidth:F

.field private mStampX:I

.field private mStampY:I

.field private start_x:I

.field private start_y:I

.field private stop_x:I

.field private stop_y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    .line 32
    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mRotationDegree:F

    .line 34
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    .line 36
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    .line 59
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsNeedToResetMove:Z

    .line 61
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsOldDistanceInited:Z

    .line 63
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsBaseDegreeSetted:Z

    .line 65
    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLastDegree:F

    .line 67
    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mBaseDegree:F

    .line 69
    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mOldDistance:F

    .line 71
    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mScaledDistance:F

    .line 82
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampStatus:I

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    .line 32
    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mRotationDegree:F

    .line 34
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    .line 36
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    .line 59
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsNeedToResetMove:Z

    .line 61
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsOldDistanceInited:Z

    .line 63
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsBaseDegreeSetted:Z

    .line 65
    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLastDegree:F

    .line 67
    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mBaseDegree:F

    .line 69
    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mOldDistance:F

    .line 71
    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mScaledDistance:F

    .line 82
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampStatus:I

    .line 92
    return-void
.end method

.method private getRotateDegree(Landroid/view/MotionEvent;)F
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 268
    const/4 v3, 0x0

    .line 282
    :goto_0
    return v3

    .line 271
    :cond_0
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float v1, v3, v4

    .line 272
    .local v1, "x":F
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float v2, v3, v4

    .line 274
    .local v2, "y":F
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsBaseDegreeSetted:Z

    if-nez v3, :cond_1

    .line 275
    float-to-double v3, v2

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mBaseDegree:F

    .line 276
    iput-boolean v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsBaseDegreeSetted:Z

    .line 277
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mRotationDegree:F

    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLastDegree:F

    .line 278
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mRotationDegree:F

    goto :goto_0

    .line 280
    :cond_1
    float-to-double v3, v2

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mBaseDegree:F

    sub-float v0, v3, v4

    .line 281
    .local v0, "degree":F
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLastDegree:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mRotationDegree:F

    .line 282
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mRotationDegree:F

    goto :goto_0
.end method

.method private getTwoPointDistance(FFFF)F
    .locals 3
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 286
    sub-float v0, p3, p1

    sub-float v1, p3, p1

    mul-float/2addr v0, v1

    sub-float v1, p4, p2

    sub-float v2, p4, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private updateImageFilterStamps()V
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;

    .line 106
    .local v0, "currentFilter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;
    if-eqz v0, :cond_0

    .line 107
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->setStampLocation(II)V

    .line 108
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mRotationDegree:F

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->setStampRotation(F)V

    .line 109
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampWidth:F

    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStamps;->setStampSize(FF)V

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public clearStamp()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    .line 317
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->invalidate()V

    .line 318
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/high16 v10, 0x40000000

    .line 292
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->onDraw(Landroid/graphics/Canvas;)V

    .line 293
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 294
    new-instance v3, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 295
    .local v3, "stampBmpBounds":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    iget v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    iget v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    iget v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampWidth:F

    float-to-int v8, v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    iget v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampHeight:F

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 297
    .local v4, "stampDisplayBounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 298
    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampWidth:F

    div-float/2addr v5, v10

    iget v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    int-to-float v6, v6

    add-float v0, v5, v6

    .line 299
    .local v0, "rotateCenterX":F
    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampHeight:F

    div-float/2addr v5, v10

    iget v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    int-to-float v6, v6

    add-float v1, v5, v6

    .line 300
    .local v1, "rotateCenterY":F
    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mRotationDegree:F

    invoke-virtual {p1, v5, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 301
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020186

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    .line 303
    .local v2, "selectionCorner":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 304
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 305
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 308
    .end local v0    # "rotateCenterX":F
    .end local v1    # "rotateCenterY":F
    .end local v2    # "selectionCorner":Landroid/graphics/drawable/NinePatchDrawable;
    .end local v3    # "stampBmpBounds":Landroid/graphics/Rect;
    .end local v4    # "stampDisplayBounds":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v12}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isShowingHistoryPanel()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 116
    invoke-super/range {p0 .. p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    .line 261
    :goto_0
    return v12

    .line 119
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    packed-switch v12, :pswitch_data_0

    .line 256
    :cond_1
    :goto_1
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->updateImageFilterStamps()V

    .line 258
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampStatus:I

    if-nez v12, :cond_b

    .line 259
    invoke-super/range {p0 .. p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    goto :goto_0

    .line 121
    :pswitch_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsNeedToResetMove:Z

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->first_x:I

    .line 123
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->first_x:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->stop_x:I

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->first_y:I

    .line 125
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->first_y:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->stop_y:I

    .line 126
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->stop_x:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->start_x:I

    .line 127
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->stop_y:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->start_y:I

    .line 129
    new-instance v12, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLeftTop:Landroid/graphics/Point;

    .line 130
    new-instance v12, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampWidth:F

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mRightTop:Landroid/graphics/Point;

    .line 131
    new-instance v12, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampHeight:F

    add-float/2addr v14, v15

    float-to-int v14, v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLeftBottom:Landroid/graphics/Point;

    .line 132
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsOldDistanceInited:Z

    .line 133
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampStatus:I

    if-nez v12, :cond_1

    .line 134
    const/4 v12, 0x2

    new-array v11, v12, [I

    .line 135
    .local v11, "viewLocation":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->getLocationOnScreen([I)V

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    const/4 v13, 0x0

    aget v13, v11, v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    float-to-int v8, v12

    .line 137
    .local v8, "pointDownX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    const/4 v13, 0x1

    aget v13, v11, v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    float-to-int v9, v12

    .line 138
    .local v9, "pointDownY":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    if-le v8, v12, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    if-le v9, v12, :cond_1

    int-to-float v12, v8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampWidth:F

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    int-to-float v12, v9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampHeight:F

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    .line 143
    const/4 v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampStatus:I

    goto/16 :goto_1

    .line 145
    :cond_2
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampStatus:I

    goto/16 :goto_1

    .line 151
    .end local v8    # "pointDownX":I
    .end local v9    # "pointDownY":I
    .end local v11    # "viewLocation":[I
    :pswitch_2
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsNeedToResetMove:Z

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->first_x:I

    .line 153
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->first_x:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->stop_x:I

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->first_y:I

    .line 155
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->first_y:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->stop_y:I

    .line 156
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->stop_x:I

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->getMaster()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getLeft()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->start_x:I

    .line 157
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->stop_y:I

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->getMaster()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->start_y:I

    .line 159
    new-instance v12, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLeftTop:Landroid/graphics/Point;

    .line 160
    new-instance v12, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampWidth:F

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mRightTop:Landroid/graphics/Point;

    .line 161
    new-instance v12, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampHeight:F

    add-float/2addr v14, v15

    float-to-int v14, v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLeftBottom:Landroid/graphics/Point;

    .line 162
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampStatus:I

    if-nez v12, :cond_1

    .line 163
    const/4 v12, 0x2

    new-array v11, v12, [I

    .line 164
    .restart local v11    # "viewLocation":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->getLocationOnScreen([I)V

    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    const/4 v13, 0x0

    aget v13, v11, v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    float-to-int v8, v12

    .line 166
    .restart local v8    # "pointDownX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    const/4 v13, 0x1

    aget v13, v11, v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    float-to-int v9, v12

    .line 167
    .restart local v9    # "pointDownY":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    if-le v8, v12, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    if-le v9, v12, :cond_1

    int-to-float v12, v8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampWidth:F

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    int-to-float v12, v9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampHeight:F

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 172
    const/4 v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampStatus:I

    goto/16 :goto_1

    .line 174
    :cond_3
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampStatus:I

    goto/16 :goto_1

    .line 180
    .end local v8    # "pointDownX":I
    .end local v9    # "pointDownY":I
    .end local v11    # "viewLocation":[I
    :pswitch_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampStatus:I

    .line 181
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsBaseDegreeSetted:Z

    goto/16 :goto_1

    .line 184
    :pswitch_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampStatus:I

    if-eqz v12, :cond_4

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_8

    .line 186
    const/4 v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampStatus:I

    .line 192
    :cond_4
    :goto_2
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampStatus:I

    if-ne v12, v13, :cond_9

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->stop_x:I

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->stop_y:I

    .line 195
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsNeedToResetMove:Z

    if-nez v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_6

    .line 196
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->first_x:I

    .line 197
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->first_x:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->stop_x:I

    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->first_y:I

    .line 199
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->first_y:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->stop_y:I

    .line 200
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->stop_x:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->start_x:I

    .line 201
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->stop_y:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->start_y:I

    .line 202
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsNeedToResetMove:Z

    .line 204
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLeftTop:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->stop_x:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->start_x:I

    sub-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Point;->x:I

    .line 205
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLeftTop:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->stop_y:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->start_y:I

    sub-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Point;->y:I

    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLeftTop:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLeftTop:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    .line 241
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->invalidate()V

    goto/16 :goto_1

    .line 187
    :cond_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampStatus:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_4

    .line 188
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampStatus:I

    goto/16 :goto_2

    .line 209
    :cond_9
    const/4 v12, 0x4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampStatus:I

    if-ne v12, v13, :cond_7

    .line 211
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->getRotateDegree(Landroid/view/MotionEvent;)F

    move-result v1

    .line 212
    .local v1, "degree":F
    move-object/from16 v0, p0

    iput v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mRotationDegree:F

    .line 213
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsOldDistanceInited:Z

    if-nez v12, :cond_a

    .line 214
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->getTwoPointDistance(FFFF)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mOldDistance:F

    .line 216
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mOldDistance:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mScaledDistance:F

    .line 217
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsOldDistanceInited:Z

    goto :goto_3

    .line 219
    :cond_a
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->getTwoPointDistance(FFFF)F

    move-result v4

    .line 221
    .local v4, "newTwoPointDistance":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mScaledDistance:F

    sub-float v12, v4, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x40000000

    cmpl-float v12, v12, v13

    if-lez v12, :cond_7

    .line 222
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mOldDistance:F

    div-float v2, v4, v12

    .line 223
    .local v2, "derta":F
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mScaledDistance:F

    .line 225
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mRightTop:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLeftTop:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    sub-int v7, v12, v13

    .line 226
    .local v7, "oldWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLeftBottom:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLeftTop:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    sub-int v6, v12, v13

    .line 228
    .local v6, "oldHeight":I
    int-to-float v12, v7

    mul-float/2addr v12, v2

    float-to-int v5, v12

    .line 229
    .local v5, "newWidth":I
    int-to-float v12, v6

    mul-float/2addr v12, v2

    float-to-int v3, v12

    .line 231
    .local v3, "newHeight":I
    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampWidth:F

    div-float v10, v12, v13

    .line 232
    .local v10, "ratio":F
    const v12, 0x3d4ccccd

    cmpl-float v12, v10, v12

    if-ltz v12, :cond_7

    const/high16 v12, 0x3fc00000

    cmpg-float v12, v10, v12

    if-gtz v12, :cond_7

    .line 233
    int-to-float v12, v5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampWidth:F

    .line 234
    int-to-float v12, v3

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampHeight:F

    .line 235
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLeftTop:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    sub-int v13, v5, v7

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    .line 236
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLeftTop:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    sub-int v13, v3, v6

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    goto/16 :goto_3

    .line 244
    .end local v1    # "degree":F
    .end local v2    # "derta":F
    .end local v3    # "newHeight":I
    .end local v4    # "newTwoPointDistance":F
    .end local v5    # "newWidth":I
    .end local v6    # "oldHeight":I
    .end local v7    # "oldWidth":I
    .end local v10    # "ratio":F
    :pswitch_5
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsBaseDegreeSetted:Z

    .line 245
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsOldDistanceInited:Z

    .line 246
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mIsNeedToResetMove:Z

    .line 247
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampStatus:I

    .line 249
    new-instance v12, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLeftTop:Landroid/graphics/Point;

    .line 250
    new-instance v12, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampWidth:F

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mRightTop:Landroid/graphics/Point;

    .line 251
    new-instance v12, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampHeight:F

    add-float/2addr v14, v15

    float-to-int v14, v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mLeftBottom:Landroid/graphics/Point;

    goto/16 :goto_1

    .line 261
    :cond_b
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public setStamp(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "stamp"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v3, 0x40000000

    const v1, 0x3f28f5c3

    const/4 v2, 0x0

    .line 95
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    .line 96
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampWidth:F

    .line 97
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampHeight:F

    .line 98
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->getMaster()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampWidth:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampX:I

    .line 99
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->getMaster()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampHeight:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mStampY:I

    .line 100
    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->mRotationDegree:F

    .line 101
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->updateImageFilterStamps()V

    .line 102
    return-void
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method
