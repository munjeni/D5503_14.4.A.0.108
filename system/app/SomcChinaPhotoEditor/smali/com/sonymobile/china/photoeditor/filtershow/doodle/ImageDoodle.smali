.class public Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;
.super Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;
.source "ImageDoodle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle$OnDoodleChangeListener;
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapCanvas:Landroid/graphics/Canvas;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private color:I

.field private final doodlePaint:Landroid/graphics/Paint;

.field private final drawingMatrix:Landroid/graphics/Matrix;

.field private final drawingPath:Landroid/graphics/Path;

.field private final lastPointForFilter:Landroid/graphics/PointF;

.field private mDoodleForFilter:Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

.field private final mDoodlesForFilter:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;",
            ">;"
        }
    .end annotation
.end field

.field private mHasDoodle:Z

.field private mOnDoodleChangeListener:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle$OnDoodleChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->bitmapPaint:Landroid/graphics/Paint;

    .line 56
    invoke-static {}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->createPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->doodlePaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->lastPointForFilter:Landroid/graphics/PointF;

    .line 58
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->drawingPath:Landroid/graphics/Path;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->drawingMatrix:Landroid/graphics/Matrix;

    .line 67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodlesForFilter:Ljava/util/Vector;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mHasDoodle:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->bitmapPaint:Landroid/graphics/Paint;

    .line 56
    invoke-static {}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->createPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->doodlePaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->lastPointForFilter:Landroid/graphics/PointF;

    .line 58
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->drawingPath:Landroid/graphics/Path;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->drawingMatrix:Landroid/graphics/Matrix;

    .line 67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodlesForFilter:Ljava/util/Vector;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mHasDoodle:Z

    .line 77
    return-void
.end method

.method private addLastPointIntoDoodle()V
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodleForFilter:Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodleForFilter:Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->lastPointForFilter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->lastPointForFilter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->addControlPoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mOnDoodleChangeListener:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle$OnDoodleChangeListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mOnDoodleChangeListener:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle$OnDoodleChangeListener;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle$OnDoodleChangeListener;->onDoodleInPhotoBounds()V

    .line 146
    :cond_0
    return-void
.end method

.method private drawDoodles(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 84
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodlesForFilter:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodlesForFilter:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    .line 86
    .local v0, "doodle":Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->doodlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->drawingMatrix:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->getFormatW()F

    move-result v4

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->getFormatH()F

    move-result v5

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 91
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->drawingMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->drawingPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->getDrawingPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 92
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->drawingPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->doodlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 95
    .end local v0    # "doodle":Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodleForFilter:Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->doodlePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodleForFilter:Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->drawingMatrix:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodleForFilter:Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->getFormatW()F

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodleForFilter:Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    invoke-virtual {v5}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->getFormatH()F

    move-result v5

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 102
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodleForFilter:Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->drawingMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->drawingPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->getDrawingPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 103
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->drawingPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->doodlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 105
    :cond_1
    return-void
.end method

.method private finishDoodle()V
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodleForFilter:Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodleForFilter:Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodlesForFilter:Ljava/util/Vector;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodleForFilter:Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    .line 132
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    instance-of v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;

    if-eqz v1, :cond_0

    .line 133
    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;

    .end local v0    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodlesForFilter:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->setDoodles(Ljava/util/Vector;)V

    .line 136
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodleForFilter:Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mHasDoodle:Z

    .line 138
    return-void
.end method

.method private getFormatSize([F)Z
    .locals 7
    .param p1, "size"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000

    .line 250
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    :cond_0
    move v2, v3

    .line 265
    :goto_0
    return v2

    .line 253
    :cond_1
    const/high16 v1, 0x3f800000

    .line 254
    .local v1, "w":F
    const/high16 v0, 0x3f800000

    .line 255
    .local v0, "h":F
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lez v4, :cond_2

    .line 257
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 258
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 263
    :cond_2
    :goto_1
    aput v1, p1, v3

    .line 264
    aput v0, p1, v2

    goto :goto_0

    .line 260
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    goto :goto_1
.end method

.method private startDoodle()V
    .locals 6

    .prologue
    .line 115
    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->color:I

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->lastPointForFilter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->lastPointForFilter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;-><init>(ILandroid/graphics/PointF;)V

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodleForFilter:Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    .line 117
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 118
    .local v0, "size":[F
    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->getFormatSize([F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodleForFilter:Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->setFormatSize(FF)V

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodleForFilter:Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->setImageBound(Landroid/graphics/Rect;)V

    .line 125
    :cond_1
    return-void
.end method


# virtual methods
.method public clearDoodles()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodlesForFilter:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 212
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodleForFilter:Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodleForFilter:Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->clearPath()V

    .line 215
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mHasDoodle:Z

    .line 216
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->invalidate()V

    .line 217
    return-void
.end method

.method public getDoodles()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mDoodlesForFilter:Ljava/util/Vector;

    return-object v0
.end method

.method public hasDoodle()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mHasDoodle:Z

    return v0
.end method

.method protected mapPhotoPointForFilter(FFLandroid/graphics/PointF;)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "dst"    # Landroid/graphics/PointF;

    .prologue
    .line 232
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float v2, p1, v5

    .line 233
    .local v2, "offsetX":F
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float v3, p2, v5

    .line 234
    .local v3, "offsetY":F
    const/4 v5, 0x2

    new-array v4, v5, [F

    .line 235
    .local v4, "size":[F
    const/high16 v1, 0x3f800000

    .line 236
    .local v1, "formatW":F
    const/high16 v0, 0x3f800000

    .line 237
    .local v0, "formatH":F
    invoke-direct {p0, v4}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->getFormatSize([F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    const/4 v5, 0x0

    aget v1, v4, v5

    .line 239
    const/4 v5, 0x1

    aget v0, v4, v5

    .line 241
    :cond_0
    mul-float v5, v1, v2

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v6, v0, v3

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {p3, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 243
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x3f800000

    const/4 v5, 0x0

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 186
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->onDraw(Landroid/graphics/Canvas;)V

    .line 188
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->bitmap:Landroid/graphics/Bitmap;

    .line 194
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->bitmapCanvas:Landroid/graphics/Canvas;

    .line 195
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->drawingMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5, v5, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 197
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->drawDoodles(Landroid/graphics/Canvas;)V

    .line 199
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 204
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v3, 0x3f800000

    .line 150
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 152
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 154
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 156
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 176
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 158
    .restart local v0    # "x":F
    .restart local v1    # "y":F
    :pswitch_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->lastPointForFilter:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mapPhotoPointForFilter(FFLandroid/graphics/PointF;)V

    .line 159
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->startDoodle()V

    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->lastPointForFilter:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mapPhotoPointForFilter(FFLandroid/graphics/PointF;)V

    .line 164
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->addLastPointIntoDoodle()V

    goto :goto_0

    .line 170
    :pswitch_2
    add-float v2, v0, v3

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->lastPointForFilter:Landroid/graphics/PointF;

    invoke-virtual {p0, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mapPhotoPointForFilter(FFLandroid/graphics/PointF;)V

    .line 171
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->addLastPointIntoDoodle()V

    .line 172
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->finishDoodle()V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 221
    invoke-super {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->onVisibilityChanged(Landroid/view/View;I)V

    .line 222
    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->clearDoodles()V

    .line 224
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mOnDoodleChangeListener:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle$OnDoodleChangeListener;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mOnDoodleChangeListener:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle$OnDoodleChangeListener;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle$OnDoodleChangeListener;->onDoodleFinished()V

    .line 229
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->color:I

    .line 110
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->finishDoodle()V

    .line 111
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->startDoodle()V

    .line 112
    return-void
.end method

.method public setFilterVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    .line 270
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    instance-of v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;

    if-eqz v1, :cond_0

    .line 271
    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;

    .end local v0    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageFilterDoodle;->setVisibility(Z)V

    .line 273
    :cond_0
    return-void
.end method

.method public setOnDoodleChangeListener(Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle$OnDoodleChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle$OnDoodleChangeListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->mOnDoodleChangeListener:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle$OnDoodleChangeListener;

    .line 81
    return-void
.end method

.method public setupGestureDetector(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    return-void
.end method
