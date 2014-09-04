.class public abstract Lcom/sonymobile/china/collage/free/model/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/collage/free/model/Layer$LayerListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final OPACITY_PERCENTAGE_MIN:F = 0.05f

.field private static final SCALED_TOUCH_RADIUS_MAX_LIMIT:F = 90.0f

.field private static final SCALED_TOUCH_RADIUS_MIN_LIMIT:F = 1.0f

.field private static final TAG:Ljava/lang/String;

.field private static final TOUCH_RADIUS_PIXELS:F = 20.0f


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected final mBounds:Landroid/graphics/Rect;

.field protected mForAddNew:Z

.field protected final mFreeCollageHeight:I

.field protected final mFreeCollageWidth:I

.field protected mHeight:I

.field protected mIsDirty:Z

.field private final mLayerId:I

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mRotation:F

.field private mScaleFactor:F

.field protected mWidth:I

.field protected mX:F

.field protected mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/china/collage/free/model/Layer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/free/model/Layer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "freeCollageWidth"    # I
    .param p3, "freeCollageHeight"    # I

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mScaleFactor:F

    .line 68
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mMatrix:Landroid/graphics/Matrix;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mBounds:Landroid/graphics/Rect;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mForAddNew:Z

    .line 106
    iput p1, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mLayerId:I

    .line 107
    iput p2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mFreeCollageWidth:I

    .line 108
    iput p3, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mFreeCollageHeight:I

    .line 109
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "id"    # I
    .param p4, "freeCollageWidth"    # I
    .param p5, "freeCollageHeight"    # I

    .prologue
    const/4 v2, 0x0

    .line 141
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 v5, 0x3f800000

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/china/collage/free/model/Layer;-><init>(Landroid/graphics/Bitmap;FFFFIII)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;FFFFIII)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "rotation"    # F
    .param p5, "scaleFactor"    # F
    .param p6, "id"    # I
    .param p7, "freeCollageWidth"    # I
    .param p8, "freeCollageHeight"    # I

    .prologue
    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mScaleFactor:F

    .line 68
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mMatrix:Landroid/graphics/Matrix;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mBounds:Landroid/graphics/Rect;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mForAddNew:Z

    .line 125
    iput p6, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mLayerId:I

    .line 126
    iput p7, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mFreeCollageWidth:I

    .line 127
    iput p8, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mFreeCollageHeight:I

    .line 128
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/china/collage/free/model/Layer;->setBitmap(Landroid/graphics/Bitmap;FFFF)V

    .line 129
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;FFFF)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "rotation"    # F
    .param p5, "scaleFactor"    # F

    .prologue
    .line 537
    if-nez p1, :cond_0

    .line 552
    :goto_0
    return-void

    .line 540
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mBitmap:Landroid/graphics/Bitmap;

    .line 541
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mHeight:I

    .line 542
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mWidth:I

    .line 543
    iput p2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mX:F

    .line 544
    iput p3, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mY:F

    .line 545
    iput p4, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mRotation:F

    .line 546
    iput p5, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mScaleFactor:F

    .line 548
    sget-object v0, Lcom/sonymobile/china/collage/free/model/Layer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBitmap mHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRotation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mRotation:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScaleFactor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mScaleFactor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/Layer;->updateMatrix()V

    goto :goto_0
.end method


# virtual methods
.method public converges(FF)Z
    .locals 24
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 296
    const/16 v20, 0x0

    .line 394
    :goto_0
    return v20

    .line 299
    :cond_0
    sget-object v20, Lcom/sonymobile/china/collage/free/model/Layer;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "converges mx:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mX:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mY:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mY:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mWidth:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mWidth:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mHeigth:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mHeight:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000

    div-float v21, v21, v22

    add-float v13, v20, v21

    .line 303
    .local v13, "xCenter":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mY:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000

    div-float v21, v21, v22

    add-float v17, v20, v21

    .line 306
    .local v17, "yCenter":F
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v11, v0, [F

    const/16 v20, 0x0

    sub-float v21, p1, v13

    aput v21, v11, v20

    const/16 v20, 0x1

    sub-float v21, p2, v17

    aput v21, v11, v20

    .line 310
    .local v11, "vector":[F
    sget-object v20, Lcom/sonymobile/china/collage/free/model/Layer;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "converges xCenter:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", yCenter:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", x:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", y:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", vector[0]:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v11, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", vector[1]:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget v22, v11, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 315
    .local v6, "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mRotation:F

    move/from16 v20, v0

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v6, v0, v13, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 316
    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 318
    sget-object v20, Lcom/sonymobile/china/collage/free/model/Layer;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "converges rotate matrix after:, vector[0]:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v11, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", vector[1]:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget v22, v11, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/16 v20, 0x0

    aget v20, v11, v20

    const/high16 v21, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mScaleFactor:F

    move/from16 v22, v0

    div-float v21, v21, v22

    mul-float v20, v20, v21

    add-float v15, v20, v13

    .line 326
    .local v15, "xRotSc":F
    const/16 v20, 0x1

    aget v20, v11, v20

    const/high16 v21, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mScaleFactor:F

    move/from16 v22, v0

    div-float v21, v21, v22

    mul-float v20, v20, v21

    add-float v19, v20, v17

    .line 328
    .local v19, "yRotSc":F
    sget-object v20, Lcom/sonymobile/china/collage/free/model/Layer;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "converges actual point:, xRotSc:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", yRotSc:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/high16 v20, 0x41a00000

    const/high16 v21, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mScaleFactor:F

    move/from16 v22, v0

    div-float v21, v21, v22

    mul-float v9, v20, v21

    .line 333
    .local v9, "touchRadiusSc":F
    const/high16 v20, 0x42b40000

    move/from16 v0, v20

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 334
    const/high16 v20, 0x3f800000

    move/from16 v0, v20

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 336
    sget-object v20, Lcom/sonymobile/china/collage/free/model/Layer;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "touchRadiusSc:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    add-float v20, v15, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000

    div-float v21, v21, v22

    sub-float v21, v13, v21

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_5

    sub-float v20, v15, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000

    div-float v21, v21, v22

    add-float v21, v21, v13

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_5

    add-float v20, v19, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000

    div-float v21, v21, v22

    sub-float v21, v17, v21

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_5

    sub-float v20, v19, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000

    div-float v21, v21, v22

    add-float v21, v21, v17

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_5

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 347
    .local v3, "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 350
    .local v2, "bitmapHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mX:F

    move/from16 v20, v0

    sub-float v20, v15, v20

    move/from16 v0, v20

    float-to-int v12, v0

    .line 351
    .local v12, "xBitmap":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mY:F

    move/from16 v20, v0

    sub-float v20, v19, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .line 353
    .local v16, "yBitmap":I
    const/4 v4, 0x0

    .line 354
    .local v4, "countOpaque":I
    const/4 v8, 0x0

    .line 358
    .local v8, "total":I
    float-to-int v7, v9

    .line 359
    .local v7, "pixelRadius":I
    neg-int v5, v7

    .local v5, "i":I
    :goto_1
    if-gt v5, v7, :cond_3

    .line 360
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v20

    sub-int v20, v7, v20

    move/from16 v0, v20

    neg-int v10, v0

    .local v10, "u":I
    :goto_2
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v20

    sub-int v20, v7, v20

    move/from16 v0, v20

    if-gt v10, v0, :cond_2

    .line 361
    add-int v14, v12, v5

    .line 362
    .local v14, "xCurr":I
    add-int v18, v16, v10

    .line 363
    .local v18, "yCurr":I
    add-int/lit8 v8, v8, 0x1

    .line 366
    if-ltz v14, :cond_1

    if-ge v14, v3, :cond_1

    if-ltz v18, :cond_1

    move/from16 v0, v18

    if-ge v0, v2, :cond_1

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/collage/free/model/Layer;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->alpha(I)I

    move-result v20

    if-eqz v20, :cond_1

    .line 368
    add-int/lit8 v4, v4, 0x1

    .line 360
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 359
    .end local v14    # "xCurr":I
    .end local v18    # "yCurr":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 374
    .end local v10    # "u":I
    :cond_3
    sget-object v20, Lcom/sonymobile/china/collage/free/model/Layer;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "total:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", ratio:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    int-to-float v0, v4

    move/from16 v22, v0

    int-to-float v0, v8

    move/from16 v23, v0

    div-float v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-lez v8, :cond_4

    int-to-float v0, v4

    move/from16 v20, v0

    int-to-float v0, v8

    move/from16 v21, v0

    div-float v20, v20, v21

    const v21, 0x3d4ccccd

    cmpg-float v20, v20, v21

    if-gez v20, :cond_4

    .line 380
    const-string v20, "Collage"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Not enough opaque pixels within raduis (%): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    int-to-float v0, v4

    move/from16 v22, v0

    int-to-float v0, v8

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x42c80000

    mul-float v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v20, "Collage"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Nbr of opaque pixels: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v20, "Collage"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Nbr of pixels in area: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 388
    :cond_4
    const-string v20, "Collage"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Converges. Opaque pixels within raduis (%): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    int-to-float v0, v4

    move/from16 v22, v0

    int-to-float v0, v8

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x42c80000

    mul-float v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 394
    .end local v2    # "bitmapHeight":I
    .end local v3    # "bitmapWidth":I
    .end local v4    # "countOpaque":I
    .end local v5    # "i":I
    .end local v7    # "pixelRadius":I
    .end local v8    # "total":I
    .end local v12    # "xBitmap":I
    .end local v16    # "yBitmap":I
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 155
    :cond_0
    return-void
.end method

.method public drawSelector(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 164
    return-void
.end method

.method public expand()V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getForNew()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mForAddNew:Z

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mLayerId:I

    return v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getRotationAngle()F
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mRotation:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mScaleFactor:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mWidth:I

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mY:F

    return v0
.end method

.method public handleTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mIsDirty:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSelectable()Z
.end method

.method public move(FF)V
    .locals 6
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/high16 v5, 0x40000000

    const/4 v4, 0x0

    .line 406
    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mX:F

    add-float v0, v2, v3

    .line 407
    .local v0, "xCenter":F
    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mY:F

    add-float v1, v2, v3

    .line 409
    .local v1, "yCenter":F
    add-float v2, p1, v0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    .line 410
    neg-float p1, v0

    .line 414
    :cond_0
    :goto_0
    add-float v2, p2, v1

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 415
    neg-float p2, v1

    .line 419
    :cond_1
    :goto_1
    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mX:F

    .line 420
    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mY:F

    .line 422
    sget-object v2, Lcom/sonymobile/china/collage/free/model/Layer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "move mX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mIsDirty:Z

    .line 425
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/Layer;->updateMatrix()V

    .line 426
    return-void

    .line 411
    :cond_2
    add-float v2, p1, v0

    iget v3, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mFreeCollageWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 412
    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mFreeCollageWidth:I

    int-to-float v2, v2

    sub-float p1, v2, v0

    goto :goto_0

    .line 416
    :cond_3
    add-float v2, p2, v1

    iget v3, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mFreeCollageHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 417
    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mFreeCollageHeight:I

    int-to-float v2, v2

    sub-float p2, v2, v1

    goto :goto_1
.end method

.method public resetBitmap(Landroid/graphics/Bitmap;FFFF)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "rotation"    # F
    .param p5, "scaleFactor"    # F

    .prologue
    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mIsDirty:Z

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mForAddNew:Z

    .line 524
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/china/collage/free/model/Layer;->setBitmap(Landroid/graphics/Bitmap;FFFF)V

    .line 525
    return-void
.end method

.method public resetDirty()V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mIsDirty:Z

    .line 452
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 272
    iput p1, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mX:F

    .line 273
    iput p2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mY:F

    .line 274
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/Layer;->updateMatrix()V

    .line 275
    return-void
.end method

.method public setRotationAngle(F)V
    .locals 3
    .param p1, "rotationAngle"    # F

    .prologue
    .line 237
    iput p1, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mRotation:F

    .line 239
    sget-object v0, Lcom/sonymobile/china/collage/free/model/Layer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRotationAngle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mRotation:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/Layer;->updateMatrix()V

    .line 242
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 3
    .param p1, "scaleFactor"    # F

    .prologue
    .line 250
    iput p1, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mScaleFactor:F

    .line 252
    sget-object v0, Lcom/sonymobile/china/collage/free/model/Layer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScaleFactor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mScaleFactor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/Layer;->updateMatrix()V

    .line 255
    return-void
.end method

.method public shrink()V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method public updateBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 500
    return-void
.end method

.method protected updateMatrix()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000

    .line 465
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mX:F

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 466
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mRotation:F

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mX:F

    iget v3, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mY:F

    iget v4, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 467
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mScaleFactor:F

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mScaleFactor:F

    iget v3, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mX:F

    iget v4, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mY:F

    iget v5, p0, Lcom/sonymobile/china/collage/free/model/Layer;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 468
    return-void
.end method
