.class public Lcom/sonymobile/china/collage/grid/GridPaneItemView;
.super Lcom/sonymobile/china/collage/grid/PaneItemView;
.source "GridPaneItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/collage/grid/GridPaneItemView$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MAX_SCALE_FACTOR:F = 3.0f

.field private static final MIN_SCALE_FACTOR:F = 1.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlphaP:Landroid/graphics/Paint;

.field private mDelete:Landroid/graphics/Bitmap;

.field private mFlagForScreenshot:Z

.field private mFocus:Z

.field private mGetSaveBitmapFlag:Z

.field private mHighLightColor:I

.field private mMoveActive:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPaneDataCallback:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;

.field private mPlus:Landroid/graphics/Bitmap;

.field private mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleFactor:F

.field mScaleListener:Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/sonymobile/china/collage/grid/PaneItemView;-><init>(Landroid/content/Context;)V

    .line 46
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    .line 50
    iput-boolean v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mFlagForScreenshot:Z

    .line 56
    iput-boolean v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mMoveActive:Z

    .line 65
    iput-boolean v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mFocus:Z

    .line 67
    iput-boolean v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mGetSaveBitmapFlag:Z

    .line 409
    new-instance v0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;-><init>(Lcom/sonymobile/china/collage/grid/GridPaneItemView;)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleListener:Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;

    .line 71
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleListener:Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 72
    invoke-virtual {p0, p2, p3}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->updateWAndH(II)V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mAlphaP:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mAlphaP:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mAlphaP:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 77
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mAlphaP:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mAlphaP:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 79
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mAlphaP:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 80
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mAlphaP:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaint:Landroid/graphics/Paint;

    .line 83
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 87
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 88
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 89
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPlus:Landroid/graphics/Bitmap;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mDelete:Landroid/graphics/Bitmap;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mHighLightColor:I

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/china/collage/grid/GridPaneItemView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    .prologue
    .line 28
    iget v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    return v0
.end method

.method static synthetic access$002(Lcom/sonymobile/china/collage/grid/GridPaneItemView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/grid/GridPaneItemView;
    .param p1, "x1"    # F

    .prologue
    .line 28
    iput p1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    return p1
.end method

.method static synthetic access$100(Lcom/sonymobile/china/collage/grid/GridPaneItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mFlagForScreenshot:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/china/collage/grid/GridPaneItemView;)Lcom/sonymobile/china/collage/ImageElement;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/china/collage/grid/GridPaneItemView;)Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaneDataCallback:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;

    return-object v0
.end method

.method private adjustLeftAndTop()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000

    const/4 v4, 0x0

    .line 397
    iget v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mLeft:F

    iget v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float/2addr v1, v5

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 398
    iget v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    sub-float/2addr v0, v5

    iput v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mLeft:F

    .line 402
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mTop:F

    iget v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float/2addr v1, v5

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 403
    iget v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    sub-float/2addr v0, v5

    iput v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mTop:F

    .line 407
    :cond_1
    :goto_1
    return-void

    .line 399
    :cond_2
    iget v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mLeft:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 400
    iput v4, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mLeft:F

    goto :goto_0

    .line 404
    :cond_3
    iget v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mTop:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 405
    iput v4, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mTop:F

    goto :goto_1
.end method

.method private drawBackgroundLayer(Landroid/graphics/Canvas;Landroid/graphics/Paint$Style;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "style"    # Landroid/graphics/Paint$Style;
    .param p3, "color"    # I

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 253
    iget-boolean v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mGetSaveBitmapFlag:Z

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectFForDraw()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectFForDraw()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 258
    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    invoke-direct {p0, p1}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 260
    sget-object v1, Lcom/sonymobile/china/collage/grid/GridPaneItemView$2;->$SwitchMap$com$sonymobile$china$collage$ImageElement$ElementType:[I

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/ImageElement;->getType()Lcom/sonymobile/china/collage/ImageElement$ElementType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/ImageElement$ElementType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 278
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 279
    return-void

    .line 262
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 265
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 268
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getCircle()Lcom/sonymobile/china/collage/ImageElement$Circle;

    move-result-object v0

    .line 269
    .local v0, "circle":Lcom/sonymobile/china/collage/ImageElement$Circle;
    iget v1, v0, Lcom/sonymobile/china/collage/ImageElement$Circle;->mCenterX:F

    iget v2, v0, Lcom/sonymobile/china/collage/ImageElement$Circle;->mCenterY:F

    iget v3, v0, Lcom/sonymobile/china/collage/ImageElement$Circle;->mRadius:F

    iget-object v4, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 273
    .end local v0    # "circle":Lcom/sonymobile/china/collage/ImageElement$Circle;
    :pswitch_3
    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getPath()Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private resetStatus()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mFocus:Z

    .line 240
    return-void
.end method

.method private translateCanvas(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, 0x40400000

    .line 222
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectFForDraw()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectFForDraw()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 224
    return-void
.end method

.method private translateCoordinate(II)[I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 232
    const/4 v1, 0x2

    new-array v0, v1, [I

    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x3

    aput v2, v0, v1

    const/4 v1, 0x1

    add-int/lit8 v2, p2, -0x3

    aput v2, v0, v1

    .line 235
    .local v0, "result":[I
    return-object v0
.end method


# virtual methods
.method public changeFocus()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mSrcPicType:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    sget-object v1, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->PICTURE:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    if-ne v0, v1, :cond_0

    .line 186
    iget-boolean v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mFocus:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mFocus:Z

    .line 187
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->invalidate()V

    .line 189
    :cond_0
    return-void

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drawByParent(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mGetSaveBitmapFlag:Z

    .line 165
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->onDraw(Landroid/graphics/Canvas;)V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mGetSaveBitmapFlag:Z

    .line 167
    return-void
.end method

.method public handleCrossEvent(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 374
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->translateCoordinate(II)[I

    move-result-object v0

    .line 375
    .local v0, "xy":[I
    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/ImageElement;->getPlusRect()Landroid/graphics/RectF;

    move-result-object v3

    if-nez v3, :cond_4

    .line 377
    :cond_0
    sget-object v3, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    if-nez v1, :cond_2

    const-string v1, "mPosInfo == null"

    :goto_0
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 386
    :cond_1
    :goto_1
    return v1

    .line 377
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getPlusRect()Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "mPosInfo.getPlusRect() == null"

    goto :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_0

    .line 383
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mSrcPicType:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    sget-object v4, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->CROSS:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/ImageElement;->getPlusRect()Landroid/graphics/RectF;

    move-result-object v3

    aget v4, v0, v2

    int-to-float v4, v4

    aget v5, v0, v1

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_5
    move v1, v2

    .line 386
    goto :goto_1
.end method

.method public handleDeleteEvent(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->translateCoordinate(II)[I

    move-result-object v0

    .line 347
    .local v0, "xy":[I
    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/ImageElement;->getDeleteRect()Landroid/graphics/RectF;

    move-result-object v3

    if-nez v3, :cond_4

    .line 349
    :cond_0
    sget-object v3, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    if-nez v1, :cond_2

    const-string v1, "mPosInfo == null"

    :goto_0
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 363
    :cond_1
    :goto_1
    return v1

    .line 349
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getDeleteRect()Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "mPosInfo.getDeleteRect() == null"

    goto :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_0

    .line 356
    :cond_4
    const-string v3, "Collage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClickEvent: x: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v5}, Lcom/sonymobile/china/collage/ImageElement;->getDeleteRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mFocus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mFocus:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mSrcPicType:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    sget-object v4, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->PICTURE:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mFocus:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/ImageElement;->getDeleteRect()Landroid/graphics/RectF;

    move-result-object v3

    aget v4, v0, v2

    int-to-float v4, v4

    aget v5, v0, v1

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_5
    move v1, v2

    .line 363
    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/sonymobile/china/collage/grid/PaneItemView;->onDraw(Landroid/graphics/Canvas;)V

    .line 101
    const-string v0, "Collage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScaleBitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSrcPicType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mSrcPicType:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPosInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v8, 0x0

    .line 105
    .local v8, "saveW":I
    const/4 v7, 0x0

    .line 106
    .local v7, "saveH":I
    iget-boolean v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mGetSaveBitmapFlag:Z

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/ImageElement;->getParentWidth()I

    move-result v8

    .line 108
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/ImageElement;->getParentHeight()I

    move-result v7

    .line 113
    :goto_0
    int-to-float v3, v8

    int-to-float v4, v7

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v9

    .line 117
    .local v9, "sc":I
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mSrcPicType:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    sget-object v1, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->PICTURE:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    if-ne v0, v1, :cond_5

    .line 118
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const/high16 v1, -0x10000

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->drawBackgroundLayer(Landroid/graphics/Canvas;Landroid/graphics/Paint$Style;I)V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 120
    iget v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    iget v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 121
    iget-boolean v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mGetSaveBitmapFlag:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectFForDraw()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectFForDraw()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mLeft:F

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mTop:F

    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mAlphaP:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 133
    iget-boolean v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/ImageElement;->getDeleteRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 135
    invoke-direct {p0, p1}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 136
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mDelete:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getDeleteRect()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/ImageElement;->hasStroke()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mFocus:Z

    if-nez v0, :cond_4

    .line 140
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->drawBackgroundLayer(Landroid/graphics/Canvas;Landroid/graphics/Paint$Style;I)V

    .line 155
    :cond_2
    :goto_1
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 156
    return-void

    .line 110
    .end local v9    # "sc":I
    :cond_3
    iget v8, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mWidth:I

    .line 111
    iget v7, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mHeight:I

    goto/16 :goto_0

    .line 141
    .restart local v9    # "sc":I
    :cond_4
    iget-boolean v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mFocus:Z

    if-eqz v0, :cond_2

    .line 142
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    iget v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mHighLightColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->drawBackgroundLayer(Landroid/graphics/Canvas;Landroid/graphics/Paint$Style;I)V

    goto :goto_1

    .line 144
    :cond_5
    iget-boolean v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mFlagForScreenshot:Z

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mSrcPicType:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    sget-object v1, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->CROSS:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    if-ne v0, v1, :cond_2

    .line 146
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const v1, -0x777778

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->drawBackgroundLayer(Landroid/graphics/Canvas;Landroid/graphics/Paint$Style;I)V

    .line 147
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/ImageElement;->getPlusRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 149
    invoke-direct {p0, p1}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 150
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPlus:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getPlusRect()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x41700000

    const/high16 v5, 0x40400000

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 288
    const-string v1, "Collage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GridPaneItemView onTouchEvent: action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v1, v5, v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectF()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v2, v5, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 295
    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 298
    iget-boolean v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mMoveActive:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mPreviousX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mPreviousY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_0

    .line 302
    :cond_2
    const-string v1, "Collage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deta X: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mPreviousX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deta Y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mPreviousY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mLeft:F

    iget v2, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mPreviousX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mLeft:F

    .line 307
    iget v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mTop:F

    iget v2, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mPreviousY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mTop:F

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mPreviousX:F

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mPreviousY:F

    .line 310
    invoke-direct {p0}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->adjustLeftAndTop()V

    .line 311
    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaneDataCallback:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;

    iget v2, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mLeft:F

    iget v3, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mTop:F

    iget-object v4, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v4}, Lcom/sonymobile/china/collage/ImageElement;->getId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4, v7}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;->onMove(FFIZ)V

    .line 313
    const-string v1, "Collage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "left: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mLeft:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mLeft:F

    iget-object v4, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    mul-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mTop:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mTop:F

    iget-object v4, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    mul-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->invalidate()V

    goto/16 :goto_0

    .line 321
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5

    .line 322
    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/china/collage/ImageElement;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_4

    .line 323
    invoke-super {p0, p1}, Lcom/sonymobile/china/collage/grid/PaneItemView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 325
    :cond_4
    iput-boolean v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mMoveActive:Z

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mPreviousX:F

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mPreviousY:F

    goto/16 :goto_0

    .line 328
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 329
    iget-boolean v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mMoveActive:Z

    if-eqz v1, :cond_0

    .line 330
    iput v4, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mPreviousX:F

    .line 331
    iput v4, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mPreviousY:F

    .line 332
    iput-boolean v7, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mMoveActive:Z

    goto/16 :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;FFFZ)V
    .locals 5
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "picType"    # Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;
    .param p3, "scale"    # F
    .param p4, "left"    # F
    .param p5, "top"    # F
    .param p6, "needUpdateDefaultLAndT"    # Z

    .prologue
    const/high16 v4, 0x40000000

    const/high16 v3, 0x3f800000

    .line 202
    invoke-direct {p0}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->resetStatus()V

    .line 203
    invoke-super {p0, p1, p2, p4, p5}, Lcom/sonymobile/china/collage/grid/PaneItemView;->setBitmap(Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;FF)V

    .line 204
    iput p3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    .line 206
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-eqz p6, :cond_0

    .line 207
    iget v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    sub-float/2addr v0, v3

    div-float/2addr v0, v4

    iput v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mLeft:F

    .line 208
    iget v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    sub-float/2addr v0, v3

    div-float/2addr v0, v4

    iput v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mTop:F

    .line 209
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaneDataCallback:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;

    iget v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mLeft:F

    iget v2, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mTop:F

    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/ImageElement;->getId()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;->onMove(FFIZ)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 212
    invoke-direct {p0}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->adjustLeftAndTop()V

    .line 214
    :cond_1
    return-void
.end method

.method public setFlagForScreenshot(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mFlagForScreenshot:Z

    .line 249
    return-void
.end method

.method public setFocus(Z)V
    .locals 2
    .param p1, "focus"    # Z

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mSrcPicType:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    sget-object v1, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->PICTURE:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    if-ne v0, v1, :cond_0

    .line 176
    iput-boolean p1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mFocus:Z

    .line 177
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->invalidate()V

    .line 179
    :cond_0
    return-void
.end method

.method public setImageElement(Lcom/sonymobile/china/collage/ImageElement;)V
    .locals 0
    .param p1, "info"    # Lcom/sonymobile/china/collage/ImageElement;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;

    .line 391
    return-void
.end method

.method public setPaneDataCallback(Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaneDataCallback:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;

    .line 198
    return-void
.end method
