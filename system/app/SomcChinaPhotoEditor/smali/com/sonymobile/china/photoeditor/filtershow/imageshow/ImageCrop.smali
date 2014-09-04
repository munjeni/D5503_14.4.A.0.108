.class public Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;
.super Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;
.source "ImageCrop.java"


# static fields
.field private static final BOTTOM_LEFT:I = 0x9

.field private static final BOTTOM_RIGHT:I = 0xc

.field private static final MIN_CROP_WIDTH_HEIGHT:F = 0.1f

.field private static final MOVE_BLOCK:I = 0x10

.field private static final MOVE_BOTTOM:I = 0x8

.field private static final MOVE_LEFT:I = 0x1

.field private static final MOVE_RIGHT:I = 0x4

.field private static final MOVE_TOP:I = 0x2

.field private static final TOP_LEFT:I = 0x3

.field private static final TOP_RIGHT:I = 0x6

.field private static final gPaint:Landroid/graphics/Paint;

.field private static mTouchTolerance:I


# instance fields
.field private final borderPaint:Landroid/graphics/Paint;

.field private final cropIndicator:Landroid/graphics/drawable/Drawable;

.field private final indicatorSize:I

.field private mAspect:Ljava/lang/String;

.field private mAspectHeight:F

.field private mAspectTextSize:I

.field private mAspectWidth:F

.field private final mBorderColor:I

.field private mFirstDraw:Z

.field private mFixAspectRatio:Z

.field private mLastRot:F

.field private movingEdges:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x2d

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x3f800000

    const/16 v2, 0xff

    .line 103
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 70
    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 72
    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 76
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mLastRot:F

    .line 86
    const/16 v1, 0x80

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mBorderColor:I

    .line 88
    const-string v1, ""

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspect:Ljava/lang/String;

    .line 90
    const/16 v1, 0x18

    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectTextSize:I

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    .line 106
    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->indicatorSize:I

    .line 107
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    .line 108
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, 0x3f800000

    const/16 v2, 0xff

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 70
    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 72
    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 76
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mLastRot:F

    .line 86
    const/16 v1, 0x80

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mBorderColor:I

    .line 88
    const-string v1, ""

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspect:Ljava/lang/String;

    .line 90
    const/16 v1, 0x18

    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectTextSize:I

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    .line 117
    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->indicatorSize:I

    .line 118
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    .line 119
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->borderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    return-void
.end method

.method private bitCycleLeft(III)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "times"    # I
    .param p3, "d"    # I

    .prologue
    .line 695
    const/4 v5, 0x1

    shl-int/2addr v5, p3

    add-int/lit8 v2, v5, -0x1

    .line 696
    .local v2, "mask":I
    and-int v3, p1, v2

    .line 697
    .local v3, "mout":I
    rem-int/2addr p2, p3

    .line 698
    sub-int v5, p3, p2

    shr-int v0, v3, v5

    .line 699
    .local v0, "hi":I
    shl-int v5, v3, p2

    and-int v1, v5, v2

    .line 700
    .local v1, "low":I
    xor-int/lit8 v5, v2, -0x1

    and-int v4, p1, v5

    .line 701
    .local v4, "ret":I
    or-int/2addr v4, v1

    .line 702
    or-int/2addr v4, v0

    .line 703
    return v4
.end method

.method private cropSetup()V
    .locals 4

    .prologue
    .line 558
    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v2, :cond_1

    .line 559
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getRotatedCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 560
    .local v0, "cb":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 561
    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    invoke-static {v0, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->fixAspectRatio(Landroid/graphics/RectF;FF)V

    .line 562
    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getUnrotatedCropBounds(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 563
    .local v1, "cb0":Landroid/graphics/RectF;
    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)V

    .line 568
    .end local v0    # "cb":Landroid/graphics/RectF;
    .end local v1    # "cb0":Landroid/graphics/RectF;
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private detectMovingEdges(FF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/16 v9, 0x10

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 334
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getCropBoundsDisplayed()Landroid/graphics/RectF;

    move-result-object v1

    .line 335
    .local v1, "cropped":Landroid/graphics/RectF;
    iput v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 338
    iget v7, v1, Landroid/graphics/RectF;->left:F

    sub-float v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 339
    .local v2, "left":F
    iget v7, v1, Landroid/graphics/RectF;->right:F

    sub-float v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 340
    .local v3, "right":F
    sget v7, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_4

    cmpg-float v7, v2, v3

    if-gez v7, :cond_4

    .line 341
    iget v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 347
    :cond_0
    :goto_0
    iget v7, v1, Landroid/graphics/RectF;->top:F

    sub-float v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 348
    .local v4, "top":F
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 349
    .local v0, "bottom":F
    sget v7, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_5

    move v7, v5

    :goto_1
    cmpg-float v8, v4, v0

    if-gez v8, :cond_6

    :goto_2
    and-int/2addr v5, v7

    if-eqz v5, :cond_7

    .line 350
    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 355
    :cond_1
    :goto_3
    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    if-nez v5, :cond_2

    .line 356
    iput v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 358
    :cond_2
    iget-boolean v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    if-eq v5, v9, :cond_3

    .line 359
    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    invoke-direct {p0, v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->fixEdgeToCorner(I)I

    move-result v5

    iput v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 361
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 362
    return-void

    .line 342
    .end local v0    # "bottom":F
    .end local v4    # "top":F
    :cond_4
    sget v7, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_0

    .line 343
    iget v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    goto :goto_0

    .restart local v0    # "bottom":F
    .restart local v4    # "top":F
    :cond_5
    move v7, v6

    .line 349
    goto :goto_1

    :cond_6
    move v5, v6

    goto :goto_2

    .line 351
    :cond_7
    sget v5, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_1

    .line 352
    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    goto :goto_3
.end method

.method private drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "indicator"    # Landroid/graphics/drawable/Drawable;
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 531
    float-to-int v2, p3

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->indicatorSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 532
    .local v0, "left":I
    float-to-int v2, p4

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->indicatorSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 533
    .local v1, "top":I
    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->indicatorSize:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->indicatorSize:I

    add-int/2addr v3, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 534
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 535
    return-void
.end method

.method private drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 601
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v2, 0x40400000

    div-float v10, v0, v2

    .line 602
    .local v10, "stepX":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v2, 0x40400000

    div-float v11, v0, v2

    .line 603
    .local v11, "stepY":F
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float v1, v0, v10

    .line 604
    .local v1, "x":F
    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v12, v0, v11

    .line 605
    .local v12, "y":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v0, 0x2

    if-ge v8, v0, :cond_0

    .line 606
    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    move v3, v1

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 607
    add-float/2addr v1, v10

    .line 605
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 609
    :cond_0
    const/4 v9, 0x0

    .local v9, "j":I
    move v4, v12

    .end local v12    # "y":F
    .local v4, "y":F
    :goto_1
    const/4 v0, 0x2

    if-ge v9, v0, :cond_1

    .line 610
    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->right:F

    move-object v2, p1

    move v6, v4

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 611
    add-float/2addr v4, v11

    .line 609
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 613
    :cond_1
    return-void
.end method

.method private fixEdgeToCorner(I)I
    .locals 1
    .param p1, "moving_edges"    # I

    .prologue
    .line 365
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 366
    or-int/lit8 p1, p1, 0x2

    .line 368
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 369
    or-int/lit8 p1, p1, 0x1

    .line 371
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 372
    or-int/lit8 p1, p1, 0x8

    .line 374
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 375
    or-int/lit8 p1, p1, 0x4

    .line 377
    :cond_3
    return p1
.end method

.method private fixedCornerResize(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;
    .locals 6
    .param p1, "r"    # Landroid/graphics/RectF;
    .param p2, "moving_corner"    # I
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 383
    .local v0, "newCrop":Landroid/graphics/RectF;
    const/16 v1, 0xc

    if-ne p2, v1, :cond_1

    .line 384
    new-instance v0, Landroid/graphics/RectF;

    .end local v0    # "newCrop":Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 394
    .restart local v0    # "newCrop":Landroid/graphics/RectF;
    :cond_0
    :goto_0
    return-object v0

    .line 385
    :cond_1
    const/16 v1, 0x9

    if-ne p2, v1, :cond_2

    .line 386
    new-instance v0, Landroid/graphics/RectF;

    .end local v0    # "newCrop":Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0    # "newCrop":Landroid/graphics/RectF;
    goto :goto_0

    .line 387
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 388
    new-instance v0, Landroid/graphics/RectF;

    .end local v0    # "newCrop":Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, p4

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0    # "newCrop":Landroid/graphics/RectF;
    goto :goto_0

    .line 390
    :cond_3
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 391
    new-instance v0, Landroid/graphics/RectF;

    .end local v0    # "newCrop":Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, p4

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0    # "newCrop":Landroid/graphics/RectF;
    goto :goto_0
.end method

.method private getRotatedCropBounds()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 222
    .local v0, "bounds":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 223
    .local v1, "crop":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v3

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 225
    .local v2, "m":Landroid/graphics/Matrix;
    if-nez v2, :cond_0

    .line 229
    const/4 v1, 0x0

    .line 233
    .end local v1    # "crop":Landroid/graphics/RectF;
    :goto_0
    return-object v1

    .line 231
    .restart local v1    # "crop":Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method private getRotatedStraightenBounds()Landroid/graphics/RectF;
    .locals 4

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v3

    invoke-static {v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v1

    .line 265
    .local v1, "straightenBounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v2

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 267
    .local v0, "m":Landroid/graphics/Matrix;
    if-nez v0, :cond_0

    .line 271
    const/4 v1, 0x0

    .line 275
    .end local v1    # "straightenBounds":Landroid/graphics/RectF;
    :goto_0
    return-object v1

    .line 273
    .restart local v1    # "straightenBounds":Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method private getScaledMinWidthHeight()F
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 171
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 172
    .local v0, "disp":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v3, 0x3dcccccd

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->computeScale(FF)F

    move-result v3

    div-float v1, v2, v3

    .line 174
    .local v1, "scaled":F
    return v1
.end method

.method private getUnrotatedCropBounds(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6
    .param p1, "cropBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v3, 0x0

    .line 237
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v4

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 239
    .local v1, "m":Landroid/graphics/Matrix;
    if-nez v1, :cond_1

    move-object v0, v3

    .line 259
    :cond_0
    :goto_0
    return-object v0

    .line 245
    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 246
    .local v2, "m0":Landroid/graphics/Matrix;
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v3

    .line 250
    goto :goto_0

    .line 252
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 253
    .local v0, "crop":Landroid/graphics/RectF;
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 257
    goto :goto_0
.end method

.method private moveEdges(FF)V
    .locals 26
    .param p1, "dX"    # F
    .param p2, "dY"    # F

    .prologue
    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getRotatedCropBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 399
    .local v7, "cropped":Landroid/graphics/RectF;
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getScaledMinWidthHeight()F

    move-result v17

    .line 400
    .local v17, "minWidthHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->computeScale(FF)F

    move-result v19

    .line 401
    .local v19, "scale":F
    div-float v8, p1, v19

    .line 402
    .local v8, "deltaX":F
    div-float v9, p2, v19

    .line 403
    .local v9, "deltaY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v20, v0

    .line 404
    .local v20, "select":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    const/16 v23, 0x10

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 413
    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 414
    or-int/lit8 v20, v20, 0x2

    .line 416
    :cond_0
    const/16 v23, 0x2

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 417
    or-int/lit8 v20, v20, 0x1

    .line 419
    :cond_1
    const/16 v23, 0x4

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 420
    or-int/lit8 v20, v20, 0x8

    .line 422
    :cond_2
    const/16 v23, 0x8

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 423
    or-int/lit8 v20, v20, 0x4

    .line 427
    :cond_3
    const/16 v23, 0x10

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    if-eqz v7, :cond_a

    .line 428
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getRotatedStraightenBounds()Landroid/graphics/RectF;

    move-result-object v22

    .line 429
    .local v22, "straight":Landroid/graphics/RectF;
    if-eqz v22, :cond_4

    .line 432
    const/16 v23, 0x0

    cmpl-float v23, v8, v23

    if-lez v23, :cond_8

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 434
    :goto_0
    const/16 v23, 0x0

    cmpl-float v23, v9, v23

    if-lez v23, :cond_9

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 436
    :goto_1
    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 514
    .end local v22    # "straight":Landroid/graphics/RectF;
    :cond_4
    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v15

    .line 516
    .local v15, "m":Landroid/graphics/Matrix;
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    .line 517
    .local v16, "m0":Landroid/graphics/Matrix;
    if-eqz v15, :cond_5

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 522
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 527
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)V

    .line 528
    :cond_7
    :goto_3
    return-void

    .line 432
    .end local v15    # "m":Landroid/graphics/Matrix;
    .end local v16    # "m0":Landroid/graphics/Matrix;
    .restart local v22    # "straight":Landroid/graphics/RectF;
    :cond_8
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_0

    .line 434
    :cond_9
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    goto :goto_1

    .line 439
    .end local v22    # "straight":Landroid/graphics/RectF;
    :cond_a
    const/4 v11, 0x0

    .line 440
    .local v11, "dx":F
    const/4 v12, 0x0

    .line 442
    .local v12, "dy":F
    if-eqz v7, :cond_e

    .line 443
    and-int/lit8 v23, v20, 0x1

    if-eqz v23, :cond_b

    .line 444
    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    add-float v23, v23, v8

    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    sub-float v24, v24, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v23

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    sub-float v11, v23, v24

    .line 447
    :cond_b
    and-int/lit8 v23, v20, 0x2

    if-eqz v23, :cond_c

    .line 448
    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    add-float v23, v23, v9

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    sub-float v24, v24, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v23

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    sub-float v12, v23, v24

    .line 451
    :cond_c
    and-int/lit8 v23, v20, 0x4

    if-eqz v23, :cond_d

    .line 452
    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    add-float v23, v23, v8

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    add-float v24, v24, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(FF)F

    move-result v23

    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    sub-float v11, v23, v24

    .line 455
    :cond_d
    and-int/lit8 v23, v20, 0x8

    if-eqz v23, :cond_e

    .line 456
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    add-float v23, v23, v9

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    add-float v24, v24, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(FF)F

    move-result v23

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    sub-float v12, v23, v24

    .line 460
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getCropBoundsDisplayed()Landroid/graphics/RectF;

    move-result-object v6

    .line 462
    .local v6, "crop":Landroid/graphics/RectF;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v13, v0, [F

    const/16 v23, 0x0

    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    aput v24, v13, v23

    const/16 v23, 0x1

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    aput v24, v13, v23

    .line 465
    .local v13, "l1":[F
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v14, v0, [F

    const/16 v23, 0x0

    iget v0, v6, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    aput v24, v14, v23

    const/16 v23, 0x1

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    aput v24, v14, v23

    .line 468
    .local v14, "l2":[F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v23, v0

    const/16 v24, 0xc

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 469
    :cond_f
    const/16 v23, 0x1

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    aput v24, v13, v23

    .line 470
    const/16 v23, 0x1

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    aput v24, v14, v23

    .line 472
    :cond_10
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v4, v0, [F

    const/16 v23, 0x0

    const/16 v24, 0x0

    aget v24, v13, v24

    const/16 v25, 0x0

    aget v25, v14, v25

    sub-float v24, v24, v25

    aput v24, v4, v23

    const/16 v23, 0x1

    const/16 v24, 0x1

    aget v24, v13, v24

    const/16 v25, 0x1

    aget v25, v14, v25

    sub-float v24, v24, v25

    aput v24, v4, v23

    .line 475
    .local v4, "b":[F
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v10, v0, [F

    const/16 v23, 0x0

    aput v11, v10, v23

    const/16 v23, 0x1

    aput v12, v10, v23

    .line 478
    .local v10, "disp":[F
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->normalize([F)[F

    move-result-object v5

    .line 479
    .local v5, "bUnit":[F
    invoke-static {v10, v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scalarProjection([F[F)F

    move-result v21

    .line 480
    .local v21, "sp":F
    const/16 v23, 0x0

    aget v23, v5, v23

    mul-float v11, v21, v23

    .line 481
    const/16 v23, 0x1

    aget v23, v5, v23

    mul-float v12, v21, v23

    .line 482
    mul-float v23, v11, v19

    mul-float v24, v12, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->fixedCornerResize(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;

    move-result-object v18

    .line 483
    .local v18, "newCrop":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getCropBoundDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v15

    .line 484
    .restart local v15    # "m":Landroid/graphics/Matrix;
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    .line 485
    .restart local v16    # "m0":Landroid/graphics/Matrix;
    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 491
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 497
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)V

    goto/16 :goto_3

    .line 499
    .end local v4    # "b":[F
    .end local v5    # "bUnit":[F
    .end local v6    # "crop":Landroid/graphics/RectF;
    .end local v10    # "disp":[F
    .end local v13    # "l1":[F
    .end local v14    # "l2":[F
    .end local v15    # "m":Landroid/graphics/Matrix;
    .end local v16    # "m0":Landroid/graphics/Matrix;
    .end local v18    # "newCrop":Landroid/graphics/RectF;
    .end local v21    # "sp":F
    :cond_11
    if-eqz v7, :cond_4

    .line 500
    and-int/lit8 v23, v20, 0x1

    if-eqz v23, :cond_12

    .line 501
    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    add-float v23, v23, v11

    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/RectF;->left:F

    .line 503
    :cond_12
    and-int/lit8 v23, v20, 0x2

    if-eqz v23, :cond_13

    .line 504
    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    add-float v23, v23, v12

    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/RectF;->top:F

    .line 506
    :cond_13
    and-int/lit8 v23, v20, 0x4

    if-eqz v23, :cond_14

    .line 507
    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    add-float v23, v23, v11

    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/RectF;->right:F

    .line 509
    :cond_14
    and-int/lit8 v23, v20, 0x8

    if-eqz v23, :cond_4

    .line 510
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    add-float v23, v23, v12

    move/from16 v0, v23

    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2
.end method

.method public static setTouchTolerance(I)V
    .locals 0
    .param p0, "tolerance"    # I

    .prologue
    .line 136
    sput p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    .line 137
    return-void
.end method

.method private swapAspect()V
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 131
    .local v0, "temp":F
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 132
    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 133
    return-void
.end method


# virtual methods
.method public apply(FF)V
    .locals 2
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 141
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 142
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 143
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 145
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 146
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 147
    return-void
.end method

.method public applyClear()V
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 164
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 166
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 167
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 168
    return-void
.end method

.method public applyOriginal()V
    .locals 5

    .prologue
    .line 150
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 151
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 152
    .local v1, "photobounds":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 153
    .local v3, "w":F
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 154
    .local v0, "h":F
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 155
    .local v2, "scale":F
    div-float v4, v3, v2

    iput v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 156
    div-float v4, v0, v2

    iput v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 157
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v4

    invoke-static {v1, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 158
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 159
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 160
    return-void
.end method

.method protected decoder(IF)I
    .locals 3
    .param p1, "movingEdges"    # I
    .param p2, "rotation"    # F

    .prologue
    const/4 v2, 0x4

    .line 707
    invoke-virtual {p0, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->constrainedRotation(F)I

    move-result v0

    .line 708
    .local v0, "rot":I
    sparse-switch v0, :sswitch_data_0

    .line 716
    .end local p1    # "movingEdges":I
    :goto_0
    return p1

    .line 710
    .restart local p1    # "movingEdges":I
    :sswitch_0
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->bitCycleLeft(III)I

    move-result p1

    goto :goto_0

    .line 712
    :sswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->bitCycleLeft(III)I

    move-result p1

    goto :goto_0

    .line 714
    :sswitch_2
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->bitCycleLeft(III)I

    move-result p1

    goto :goto_0

    .line 708
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 618
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 619
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 620
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 621
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v8, 0xff

    const/16 v26, 0xff

    move/from16 v0, v26

    invoke-virtual {v3, v4, v5, v8, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 623
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    if-eqz v3, :cond_0

    .line 624
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 625
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 627
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v20

    .line 629
    .local v20, "rotation":F
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->drawTransformed(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v13

    .line 630
    .local v13, "crop":Landroid/graphics/RectF;
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mBorderColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 631
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 632
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 633
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 635
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v3, :cond_3

    .line 636
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v24

    .line 637
    .local v24, "w":F
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v17

    .line 638
    .local v17, "h":F
    mul-float v3, v24, v24

    mul-float v4, v17, v17

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    move/from16 v16, v0

    .line 640
    .local v16, "diag":F
    const/high16 v14, 0x41a00000

    .line 641
    .local v14, "dash_len":F
    div-float v3, v16, v14

    float-to-int v0, v3

    move/from16 v19, v0

    .line 642
    .local v19, "num_intervals":I
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v22, v0

    const/4 v3, 0x0

    iget v4, v13, Landroid/graphics/RectF;->left:F

    aput v4, v22, v3

    const/4 v3, 0x1

    iget v4, v13, Landroid/graphics/RectF;->top:F

    aput v4, v22, v3

    .line 645
    .local v22, "tl":[F
    const/4 v3, 0x0

    aget v3, v22, v3

    const/high16 v4, 0x40000000

    div-float v4, v24, v4

    add-float v10, v3, v4

    .line 646
    .local v10, "centX":F
    const/4 v3, 0x1

    aget v3, v22, v3

    const/high16 v4, 0x40000000

    div-float v4, v17, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40a00000

    add-float v11, v3, v4

    .line 647
    .local v11, "centY":F
    const/4 v3, 0x2

    new-array v9, v3, [F

    const/4 v3, 0x0

    iget v4, v13, Landroid/graphics/RectF;->right:F

    aput v4, v9, v3

    const/4 v3, 0x1

    iget v4, v13, Landroid/graphics/RectF;->bottom:F

    aput v4, v9, v3

    .line 650
    .local v9, "br":[F
    move-object/from16 v0, v22

    invoke-static {v0, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->getUnitVectorFromPoints([F[F)[F

    move-result-object v23

    .line 652
    .local v23, "vec":[F
    move-object/from16 v12, v22

    .line 653
    .local v12, "counter":[F
    const/16 v25, 0x0

    .local v25, "x":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 654
    const/4 v3, 0x0

    aget v3, v12, v3

    const/4 v4, 0x0

    aget v4, v23, v4

    mul-float/2addr v4, v14

    add-float v6, v3, v4

    .line 655
    .local v6, "tempX":F
    const/4 v3, 0x1

    aget v3, v12, v3

    const/4 v4, 0x1

    aget v4, v23, v4

    mul-float/2addr v4, v14

    add-float v7, v3, v4

    .line 656
    .local v7, "tempY":F
    rem-int/lit8 v3, v25, 0x2

    if-nez v3, :cond_1

    div-int/lit8 v3, v19, 0x2

    sub-int v3, v25, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 657
    const/4 v3, 0x0

    aget v4, v12, v3

    const/4 v3, 0x1

    aget v5, v12, v3

    sget-object v8, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 659
    :cond_1
    const/4 v3, 0x0

    aput v6, v12, v3

    .line 660
    const/4 v3, 0x1

    aput v7, v12, v3

    .line 653
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 663
    .end local v6    # "tempX":F
    .end local v7    # "tempY":F
    :cond_2
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 664
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 665
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const-string v4, "sst"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspect:Ljava/lang/String;

    sget-object v4, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 669
    .end local v9    # "br":[F
    .end local v10    # "centX":F
    .end local v11    # "centY":F
    .end local v12    # "counter":[F
    .end local v14    # "dash_len":F
    .end local v16    # "diag":F
    .end local v17    # "h":F
    .end local v19    # "num_intervals":I
    .end local v22    # "tl":[F
    .end local v23    # "vec":[F
    .end local v24    # "w":F
    .end local v25    # "x":I
    :cond_3
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mBorderColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 670
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 671
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 672
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->drawStraighten(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 674
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->decoder(IF)I

    move-result v15

    .line 675
    .local v15, "decoded_moving":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 676
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCenterX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCenterY:F

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->unrotatedCropBounds()Landroid/graphics/RectF;

    move-result-object v21

    .line 678
    .local v21, "scaledCrop":Landroid/graphics/RectF;
    if-nez v15, :cond_c

    const/16 v18, 0x1

    .line 679
    .local v18, "notMoving":Z
    :goto_1
    and-int/lit8 v3, v15, 0x2

    if-nez v3, :cond_4

    if-eqz v18, :cond_5

    .line 680
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 682
    :cond_5
    and-int/lit8 v3, v15, 0x8

    if-nez v3, :cond_6

    if-eqz v18, :cond_7

    .line 683
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 685
    :cond_7
    and-int/lit8 v3, v15, 0x1

    if-nez v3, :cond_8

    if-eqz v18, :cond_9

    .line 686
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 688
    :cond_9
    and-int/lit8 v3, v15, 0x4

    if-nez v3, :cond_a

    if-eqz v18, :cond_b

    .line 689
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 691
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 692
    return-void

    .line 678
    .end local v18    # "notMoving":Z
    :cond_c
    const/16 v18, 0x0

    goto :goto_1
.end method

.method protected gainedVisibility()V
    .locals 3

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v0

    .line 582
    .local v0, "rot":F
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mLastRot:F

    sub-float v1, v0, v1

    const/high16 v2, 0x42b40000

    div-float/2addr v1, v2

    float-to-int v1, v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 583
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->swapAspect()V

    .line 585
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 586
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 587
    return-void
.end method

.method protected getCropBoundDisplayMatrix()Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v2

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 188
    .local v0, "m":Landroid/graphics/Matrix;
    if-nez v0, :cond_0

    .line 192
    new-instance v0, Landroid/graphics/Matrix;

    .end local v0    # "m":Landroid/graphics/Matrix;
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 194
    .restart local v0    # "m":Landroid/graphics/Matrix;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->computeScale(FF)F

    move-result v1

    .line 195
    .local v1, "zoom":F
    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mXOffset:F

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mYOffset:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 196
    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCenterX:F

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCenterY:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 197
    return-object v0
.end method

.method protected getCropBoundsDisplayed()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 202
    .local v0, "bounds":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 203
    .local v1, "crop":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v4

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 205
    .local v2, "m":Landroid/graphics/Matrix;
    if-nez v2, :cond_0

    .line 212
    :goto_0
    new-instance v2, Landroid/graphics/Matrix;

    .end local v2    # "m":Landroid/graphics/Matrix;
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 213
    .restart local v2    # "m":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->computeScale(FF)F

    move-result v3

    .line 214
    .local v3, "zoom":F
    iget v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCenterX:F

    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCenterY:F

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 215
    iget v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mXOffset:F

    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mYOffset:F

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 216
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 217
    return-object v1

    .line 210
    .end local v3    # "zoom":F
    :cond_0
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method protected getCropRotationMatrix(FLandroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 3
    .param p1, "rotation"    # F
    .param p2, "localImage"    # Landroid/graphics/RectF;

    .prologue
    .line 178
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalGeoFlipMatrix(FF)Landroid/graphics/Matrix;

    move-result-object v0

    .line 179
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 180
    invoke-virtual {v0}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 183
    .end local v0    # "m":Landroid/graphics/Matrix;
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public imageLoaded()V
    .locals 0

    .prologue
    .line 572
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->imageLoaded()V

    .line 573
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->syncLocalToMasterGeometry()V

    .line 574
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->applyClear()V

    .line 575
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 576
    return-void
.end method

.method protected lostVisibility()V
    .locals 1

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mLastRot:F

    .line 598
    return-void
.end method

.method public resetParameter()V
    .locals 0

    .prologue
    .line 591
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->resetParameter()V

    .line 592
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 593
    return-void
.end method

.method protected setActionDown(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 539
    invoke-super {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setActionDown(FF)V

    .line 540
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->detectMovingEdges(FF)V

    .line 541
    return-void
.end method

.method protected setActionMove(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 551
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    if-eqz v0, :cond_0

    .line 552
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    sub-float v1, p2, v1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->moveEdges(FF)V

    .line 554
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setActionMove(FF)V

    .line 555
    return-void
.end method

.method protected setActionUp()V
    .locals 1

    .prologue
    .line 545
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setActionUp()V

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 547
    return-void
.end method

.method public setAspectString(Ljava/lang/String;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspect:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setAspectTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectTextSize:I

    .line 94
    return-void
.end method

.method public setCropBounds(Landroid/graphics/RectF;)V
    .locals 14
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 284
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 285
    .local v2, "cbounds":Landroid/graphics/RectF;
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getScaledMinWidthHeight()F

    move-result v3

    .line 286
    .local v3, "minWidthHeight":F
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 287
    .local v1, "aw":F
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 288
    .local v0, "ah":F
    iget-boolean v10, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v10, :cond_0

    .line 289
    mul-float v10, v1, v0

    div-float/2addr v3, v10

    .line 290
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v10

    const/high16 v11, 0x42b40000

    div-float/2addr v10, v11

    float-to-int v7, v10

    .line 291
    .local v7, "r":I
    rem-int/lit8 v10, v7, 0x2

    if-eqz v10, :cond_0

    .line 292
    move v9, v1

    .line 293
    .local v9, "temp":F
    move v1, v0

    .line 294
    move v0, v9

    .line 298
    .end local v7    # "r":I
    .end local v9    # "temp":F
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 299
    .local v5, "newWidth":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 300
    .local v4, "newHeight":F
    iget-boolean v10, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v10, :cond_6

    .line 301
    mul-float v10, v3, v1

    cmpg-float v10, v5, v10

    if-ltz v10, :cond_1

    mul-float v10, v3, v0

    cmpg-float v10, v4, v10

    if-gez v10, :cond_2

    .line 302
    :cond_1
    mul-float v5, v3, v1

    .line 303
    mul-float v4, v3, v0

    .line 313
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v6

    .line 314
    .local v6, "pbounds":Landroid/graphics/RectF;
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v10

    cmpg-float v10, v10, v3

    if-gez v10, :cond_3

    .line 315
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 317
    :cond_3
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpg-float v10, v10, v3

    if-gez v10, :cond_4

    .line 318
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 321
    :cond_4
    iget v10, v2, Landroid/graphics/RectF;->left:F

    iget v11, v2, Landroid/graphics/RectF;->top:F

    iget v12, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v5

    iget v13, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v13, v4

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 322
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v11

    invoke-static {v10, v11}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v8

    .line 324
    .local v8, "straightenBounds":Landroid/graphics/RectF;
    invoke-virtual {v2, v8}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 326
    iget-boolean v10, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v10, :cond_5

    .line 327
    invoke-static {v2, v1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->fixAspectRatio(Landroid/graphics/RectF;FF)V

    .line 329
    :cond_5
    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 330
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 331
    return-void

    .line 306
    .end local v6    # "pbounds":Landroid/graphics/RectF;
    .end local v8    # "straightenBounds":Landroid/graphics/RectF;
    :cond_6
    cmpg-float v10, v5, v3

    if-gez v10, :cond_7

    .line 307
    move v5, v3

    .line 309
    :cond_7
    cmpg-float v10, v4, v3

    if-gez v10, :cond_2

    .line 310
    move v4, v3

    goto :goto_0
.end method
