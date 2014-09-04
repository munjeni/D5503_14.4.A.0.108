.class public Lcom/sonymobile/china/collage/free/model/ImageLayer;
.super Lcom/sonymobile/china/collage/free/model/Layer;
.source "ImageLayer.java"


# static fields
.field private static final BORDER_WIDTH:I = 0x5

.field private static final DEBUG:Z = true

.field public static final DELETE_LAYER:Ljava/lang/String; = "com.sonymobile.photoeditor.collage.free.deleteLayer"

.field private static final INVALID_COORDINATE:F = -1.0f

.field public static final LAYER_ID:Ljava/lang/String; = "id"

.field public static final REPLACE_NEW_FOR_FREE:Ljava/lang/String; = "com.sonymobile.photoeditor.collage.free.replaceWithNew"

.field private static final TAG:Ljava/lang/String;

.field private static final TOUCH_TOLERANCE_DP:F = 15.0f


# instance fields
.field private final TOUCH_TOLERANCE:F

.field private mBorderPath:Landroid/graphics/Path;

.field private mContext:Landroid/content/Context;

.field private final mDeleteDrawable:Landroid/graphics/drawable/Drawable;

.field private mFirstMove:Z

.field private mHightLightColor:I

.field private final mMatrixValues:[F

.field private mOldX:F

.field private mOldY:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mPlusDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreTouchUp:J

.field private final mRotationDetector:Lcom/sonymobile/china/collage/utils/RotationGestureDetector;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mSingleClick:Z

.field private mTouchDownStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/sonymobile/china/collage/free/model/ImageLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;FFFFIIIZ)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "rotation"    # F
    .param p6, "scaleFactor"    # F
    .param p7, "id"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "addNew"    # Z

    .prologue
    .line 128
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/sonymobile/china/collage/free/model/Layer;-><init>(Landroid/graphics/Bitmap;FFFFIII)V

    .line 49
    const/high16 v1, -0x40800000

    iput v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mOldX:F

    .line 52
    const/high16 v1, -0x40800000

    iput v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mOldY:F

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mFirstMove:Z

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mSingleClick:Z

    .line 61
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mTouchDownStart:J

    .line 64
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mPreTouchUp:J

    .line 73
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mMatrixValues:[F

    .line 103
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mBorderPath:Landroid/graphics/Path;

    .line 106
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mPaint:Landroid/graphics/Paint;

    .line 129
    iput-object p1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mContext:Landroid/content/Context;

    .line 130
    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v2, Lcom/sonymobile/china/collage/free/model/ScaleGestureListener;

    invoke-direct {v2, p0}, Lcom/sonymobile/china/collage/free/model/ScaleGestureListener;-><init>(Lcom/sonymobile/china/collage/free/model/Layer;)V

    invoke-direct {v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 131
    new-instance v1, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;

    new-instance v2, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;

    invoke-direct {v2, p0}, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;-><init>(Lcom/sonymobile/china/collage/free/model/Layer;)V

    invoke-direct {v1, v2}, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;-><init>(Lcom/sonymobile/china/collage/utils/RotationGestureDetector$OnRotationGestureListener;)V

    iput-object v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mRotationDetector:Lcom/sonymobile/china/collage/utils/RotationGestureDetector;

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mIsDirty:Z

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 134
    .local v10, "res":Landroid/content/res/Resources;
    const v1, 0x7f0200b9

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    const v1, 0x7f0200d0

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mPlusDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mForAddNew:Z

    .line 138
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v11, v1, Landroid/util/DisplayMetrics;->density:F

    .line 140
    .local v11, "scale":F
    const/high16 v1, 0x41700000

    mul-float/2addr v1, v11

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TOUCH_TOLERANCE:F

    .line 141
    iget-object v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    iget-object v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    iget-object v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    const v1, 0x2060003

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mHightLightColor:I

    .line 146
    return-void
.end method

.method private calculateBorderPath()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 166
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mBorderPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mWidth:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getScaleFactor()F

    move-result v3

    mul-float/2addr v2, v3

    add-float v3, v1, v2

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mHeight:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getScaleFactor()F

    move-result v4

    mul-float/2addr v2, v4

    add-float v4, v1, v2

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 167
    return-void
.end method

.method private clickOnPlusBtn(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 376
    const/4 v4, 0x0

    .line 377
    .local v4, "result":Z
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v17

    move/from16 v0, v17

    int-to-long v7, v0

    .line 378
    .local v7, "tapTimeout":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mForAddNew:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mTouchDownStart:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    cmp-long v17, v17, v7

    if-lez v17, :cond_1

    :cond_0
    move v5, v4

    .line 428
    .end local v4    # "result":Z
    .local v5, "result":I
    :goto_0
    return v5

    .line 382
    .end local v5    # "result":I
    .restart local v4    # "result":Z
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 383
    .local v11, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    .line 384
    .local v14, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090048

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 386
    .local v3, "plusBtnRadius":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    add-float v12, v17, v18

    .line 387
    .local v12, "xCenter":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    add-float v15, v17, v18

    .line 390
    .local v15, "yCenter":F
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v10, v0, [F

    const/16 v17, 0x0

    sub-float v18, v11, v12

    aput v18, v10, v17

    const/16 v17, 0x1

    sub-float v18, v14, v15

    aput v18, v10, v17

    .line 394
    .local v10, "vector":[F
    sget-object v17, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "clickOnPlusBtn xCenter:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", yCenter:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", x:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", y:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", vector[0]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget v19, v10, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", vector[1]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget v19, v10, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 399
    .local v2, "m":Landroid/graphics/Matrix;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getRotationAngle()F

    move-result v17

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v0, v12, v15}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 400
    invoke-virtual {v2, v10}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 402
    sget-object v17, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "clickOnPlusBtn rotate matrix after:, vector[0]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget v19, v10, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", vector[1]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget v19, v10, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getScaleFactor()F

    move-result v6

    .line 410
    .local v6, "scaleFactor":F
    const/16 v17, 0x0

    aget v17, v10, v17

    const/high16 v18, 0x3f800000

    div-float v18, v18, v6

    mul-float v17, v17, v18

    add-float v13, v17, v12

    .line 411
    .local v13, "xRotSc":F
    const/16 v17, 0x1

    aget v17, v10, v17

    const/high16 v18, 0x3f800000

    div-float v18, v18, v6

    mul-float v17, v17, v18

    add-float v16, v17, v15

    .line 413
    .local v16, "yRotSc":F
    sget-object v17, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "clickOnPlusBtn actual point:, xRotSc:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", yRotSc:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    int-to-float v0, v3

    move/from16 v17, v0

    const v18, 0x3f99999a

    mul-float v9, v17, v18

    .line 418
    .local v9, "touchRadiusSc":F
    sub-float v17, v12, v9

    cmpl-float v17, v13, v17

    if-ltz v17, :cond_2

    add-float v17, v12, v9

    cmpg-float v17, v13, v17

    if-gtz v17, :cond_2

    sub-float v17, v15, v9

    cmpl-float v17, v16, v17

    if-ltz v17, :cond_2

    add-float v17, v15, v9

    cmpg-float v17, v16, v17

    if-gtz v17, :cond_2

    .line 420
    const/4 v4, 0x1

    .line 426
    :goto_1
    sget-object v17, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "clickOnPlusBtn result "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 428
    .restart local v5    # "result":I
    goto/16 :goto_0

    .line 423
    .end local v5    # "result":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private drawPlus(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000

    .line 195
    iget v3, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mWidth:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v0, v3

    .line 196
    .local v0, "cx":I
    iget v3, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mHeight:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v1, v3

    .line 197
    .local v1, "cy":I
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 199
    .local v2, "plusBtnRadius":I
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mPlusDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int v6, v0, v2

    add-int v7, v1, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 202
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mMatrixValues:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mMatrixValues:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 203
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getRotationAngle()F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 204
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mPlusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 206
    return-void
.end method


# virtual methods
.method public clickOnDeleteBtn(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 440
    const/4 v3, 0x0

    .line 453
    .local v3, "result":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 454
    .local v9, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 455
    .local v12, "y":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090047

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 457
    .local v1, "delBtnRadius":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000

    div-float v16, v16, v17

    add-float v10, v15, v16

    .line 458
    .local v10, "xCenter":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000

    div-float v16, v16, v17

    add-float v13, v15, v16

    .line 461
    .local v13, "yCenter":F
    const/4 v15, 0x2

    new-array v8, v15, [F

    const/4 v15, 0x0

    sub-float v16, v9, v10

    aput v16, v8, v15

    const/4 v15, 0x1

    sub-float v16, v12, v13

    aput v16, v8, v15

    .line 465
    .local v8, "vector":[F
    sget-object v15, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "clickOnDeleteBtn xCenter:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", yCenter:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", x:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", y:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", vector[0]:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    aget v17, v8, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", vector[1]:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget v17, v8, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 470
    .local v2, "m":Landroid/graphics/Matrix;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getRotationAngle()F

    move-result v15

    neg-float v15, v15

    invoke-virtual {v2, v15, v10, v13}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 471
    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 473
    sget-object v15, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "clickOnDeleteBtn rotate matrix after:, vector[0]:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    aget v17, v8, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", vector[1]:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget v17, v8, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getScaleFactor()F

    move-result v6

    .line 481
    .local v6, "scaleFactor":F
    const/4 v15, 0x0

    aget v15, v8, v15

    const/high16 v16, 0x3f800000

    div-float v16, v16, v6

    mul-float v15, v15, v16

    add-float v11, v15, v10

    .line 482
    .local v11, "xRotSc":F
    const/4 v15, 0x1

    aget v15, v8, v15

    const/high16 v16, 0x3f800000

    div-float v16, v16, v6

    mul-float v15, v15, v16

    add-float v14, v15, v13

    .line 484
    .local v14, "yRotSc":F
    sget-object v15, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "clickOnDeleteBtn actual point:, xRotSc:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", yRotSc:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", scaleFactor:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v4, v15, v16

    .line 490
    .local v4, "rightTopX":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mY:F

    .line 491
    .local v5, "rightTopY":F
    int-to-float v15, v1

    const v16, 0x3fcccccd

    mul-float v7, v15, v16

    .line 492
    .local v7, "touchRadiusSc":F
    sub-float v15, v4, v7

    cmpl-float v15, v11, v15

    if-ltz v15, :cond_0

    add-float v15, v4, v7

    cmpg-float v15, v11, v15

    if-gtz v15, :cond_0

    sub-float v15, v5, v7

    cmpl-float v15, v14, v15

    if-ltz v15, :cond_0

    add-float v15, v5, v7

    cmpg-float v15, v14, v15

    if-gtz v15, :cond_0

    .line 494
    const/4 v3, 0x1

    .line 508
    :goto_0
    sget-object v16, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "clickOnDeleteBtn rightTopX:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ", rightTopY:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ", touchRadiusSc:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ", x is inside:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sub-float v15, v4, v7

    cmpl-float v15, v11, v15

    if-ltz v15, :cond_1

    add-float v15, v4, v7

    cmpg-float v15, v11, v15

    if-gtz v15, :cond_1

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ", y is inside:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sub-float v15, v5, v7

    cmpl-float v15, v14, v15

    if-ltz v15, :cond_2

    add-float v15, v5, v7

    cmpg-float v15, v14, v15

    if-gtz v15, :cond_2

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ", result:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return v3

    .line 497
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 508
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    goto :goto_2
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/sonymobile/china/collage/free/model/Layer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 152
    sget-object v0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    const-string v1, "draw"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 155
    invoke-direct {p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->calculateBorderPath()V

    .line 156
    iget-boolean v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mForAddNew:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0, p1}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->drawPlus(Landroid/graphics/Canvas;)V

    .line 159
    :cond_0
    return-void
.end method

.method public drawBorder(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 185
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mMatrixValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mMatrixValues:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 186
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getRotationAngle()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 188
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mBorderPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 192
    return-void
.end method

.method public drawDelete(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 209
    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mWidth:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getScaleFactor()F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 210
    .local v1, "right":I
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 213
    .local v0, "delBtnRadius":I
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v3, v0, 0x4

    div-int/lit8 v3, v3, 0x3

    sub-int v3, v1, v3

    mul-int/lit8 v4, v0, 0x2

    div-int/lit8 v4, v4, 0x3

    neg-int v4, v4

    mul-int/lit8 v5, v0, 0x2

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v1

    mul-int/lit8 v6, v0, 0x4

    div-int/lit8 v6, v6, 0x3

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 217
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mMatrixValues:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mMatrixValues:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 218
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getRotationAngle()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 219
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 221
    return-void
.end method

.method public drawSelector(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 173
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mMatrixValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mMatrixValues:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getRotationAngle()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 176
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mHightLightColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mBorderPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 179
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 180
    return-void
.end method

.method public handleTouch(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 247
    sget-object v6, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleTouch on layer:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 250
    .local v1, "eX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 251
    .local v2, "eY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 258
    .local v0, "action":I
    iget-object v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v6, :cond_0

    .line 259
    iget-object v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 261
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mRotationDetector:Lcom/sonymobile/china/collage/utils/RotationGestureDetector;

    if-eqz v6, :cond_1

    .line 262
    iget-object v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mRotationDetector:Lcom/sonymobile/china/collage/utils/RotationGestureDetector;

    invoke-virtual {v6, p1}, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 264
    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    int-to-long v4, v6

    .line 266
    .local v4, "tapTimeout":J
    packed-switch v0, :pswitch_data_0

    .line 357
    :cond_2
    :goto_0
    :pswitch_0
    iput v1, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mOldX:F

    .line 358
    iput v2, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mOldY:F

    .line 359
    return v12

    .line 268
    :pswitch_1
    iput-boolean v12, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mFirstMove:Z

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mTouchDownStart:J

    .line 271
    sget-object v6, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MotionEvent.ACTION_DOWN event.getPointerCount():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSingleClickStart - mPreTouchUp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mTouchDownStart:J

    iget-wide v10, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mPreTouchUp:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ViewConfiguration.getKeyRepeatDelay():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", tapTimeout:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-wide v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mTouchDownStart:J

    iget-wide v8, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mPreTouchUp:J

    sub-long/2addr v6, v8

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 283
    sget-object v6, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    const-string v7, "mSingleClick = false"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iput-boolean v13, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mSingleClick:Z

    goto :goto_0

    .line 287
    :cond_3
    iput-boolean v12, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mSingleClick:Z

    goto :goto_0

    .line 293
    :pswitch_2
    sget-object v6, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MotionEvent.ACTION_MOVE event.getPointerCount():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mOldX:F

    sub-float v6, v1, v6

    iget v7, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TOUCH_TOLERANCE:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_4

    iget v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mOldY:F

    sub-float v6, v2, v6

    iget v7, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TOUCH_TOLERANCE:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-le v6, v12, :cond_5

    .line 300
    :cond_4
    sget-object v6, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    const-string v7, "mSingleClick = false"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iput-boolean v13, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mSingleClick:Z

    .line 304
    :cond_5
    iget-boolean v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mFirstMove:Z

    if-eqz v6, :cond_6

    .line 306
    const-string v6, "fj1"

    const-string v7, "mFirstMove true"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iput-boolean v13, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mFirstMove:Z

    goto/16 :goto_0

    .line 312
    :cond_6
    iget-object v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_7
    iget-object v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mRotationDetector:Lcom/sonymobile/china/collage/utils/RotationGestureDetector;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mRotationDetector:Lcom/sonymobile/china/collage/utils/RotationGestureDetector;

    invoke-virtual {v6}, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->isInProgress()Z

    move-result v6

    if-nez v6, :cond_2

    .line 315
    :cond_8
    const-string v6, "fj1"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "move x:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mOldX:F

    sub-float v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", y:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mOldY:F

    sub-float v8, v2, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mOldX:F

    sub-float v6, v1, v6

    iget v7, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mOldY:F

    sub-float v7, v2, v7

    invoke-virtual {p0, v6, v7}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->move(FF)V

    goto/16 :goto_0

    .line 323
    :pswitch_3
    sget-object v6, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    const-string v7, "MotionEvent.ACTION_UP "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iput-boolean v12, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mFirstMove:Z

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mPreTouchUp:J

    .line 328
    iget-boolean v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mSingleClick:Z

    if-eqz v6, :cond_2

    iget-wide v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mPreTouchUp:J

    iget-wide v8, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mTouchDownStart:J

    sub-long/2addr v6, v8

    cmp-long v6, v6, v4

    if-gtz v6, :cond_2

    .line 329
    iget-boolean v6, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mForAddNew:Z

    if-eqz v6, :cond_9

    invoke-direct {p0, p1}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->clickOnPlusBtn(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 331
    sget-object v6, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "singleClick on plus btn , layerid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sonymobile.photoeditor.collage.free.replaceWithNew"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v3, "insertNew":Landroid/content/Intent;
    const-string v6, "id"

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getId()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    iget-object v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 336
    .end local v3    # "insertNew":Landroid/content/Intent;
    :cond_9
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->clickOnDeleteBtn(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 338
    sget-object v6, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "singleClick delete button ,layer id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sonymobile.photoeditor.collage.free.deleteLayer"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .restart local v3    # "insertNew":Landroid/content/Intent;
    const-string v6, "id"

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getId()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    iget-object v6, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 348
    .end local v3    # "insertNew":Landroid/content/Intent;
    :pswitch_4
    iput-boolean v13, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mSingleClick:Z

    .line 350
    sget-object v6, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MotionEvent.ACTION_POINTER_DOWN or ACTION_POINTER_UP event.getPointerCount():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iput-boolean v12, p0, Lcom/sonymobile/china/collage/free/model/ImageLayer;->mFirstMove:Z

    goto/16 :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x1

    return v0
.end method

.method public touchInArea(Landroid/view/MotionEvent;Z)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "selected"    # Z

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 225
    .local v1, "eX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 226
    .local v2, "eY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 227
    .local v0, "action":I
    const/4 v3, 0x0

    .line 228
    .local v3, "result":Z
    if-eqz v0, :cond_0

    .line 229
    const/4 v3, 0x1

    move v4, v3

    .line 241
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 233
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->clickOnDeleteBtn(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 234
    const/4 v3, 0x1

    .line 239
    :goto_1
    sget-object v5, Lcom/sonymobile/china/collage/free/model/ImageLayer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "touchInArea result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 241
    .restart local v4    # "result":I
    goto :goto_0

    .line 236
    .end local v4    # "result":I
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->converges(FF)Z

    move-result v3

    goto :goto_1
.end method
