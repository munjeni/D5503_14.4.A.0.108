.class public Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;
.super Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;
.source "ImageSmallBorder.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final mDestination:Landroid/graphics/Rect;

.field protected final mImageScaleFactor:F

.field protected final mInnerBorderColor:I

.field protected final mInnerBorderWidth:I

.field private mMarginTop:I

.field protected final mSelectedBackgroundColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mSelectedBackgroundColor:I

    .line 39
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mInnerBorderColor:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mInnerBorderWidth:I

    .line 43
    const/high16 v0, 0x40600000

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mImageScaleFactor:F

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mDestination:Landroid/graphics/Rect;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mSelectedBackgroundColor:I

    .line 39
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mInnerBorderColor:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mInnerBorderWidth:I

    .line 43
    const/high16 v0, 0x40600000

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mImageScaleFactor:F

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mDestination:Landroid/graphics/Rect;

    .line 54
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    sget v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mBackgroundColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 64
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mMarginTop:I

    .line 66
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mDestination:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mMarginTop:I

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->getWidth()I

    move-result v4

    sget v5, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mMarginTop:I

    add-int/2addr v5, v6

    sget v6, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 68
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mDestination:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 70
    :cond_0
    iget-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mDestination:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mDestination:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->createSelectBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, "selectBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mDestination:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->mDestination:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    .end local v0    # "selectBitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->bitmap:Landroid/graphics/Bitmap;

    .line 59
    return-void
.end method
