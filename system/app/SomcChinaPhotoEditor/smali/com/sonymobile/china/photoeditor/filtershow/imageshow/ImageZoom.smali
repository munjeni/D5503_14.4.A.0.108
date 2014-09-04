.class public Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;
.super Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;
.source "ImageZoom.java"


# static fields
.field private static mMaxSize:F


# instance fields
.field private mTouchDown:Z

.field private mZoomBounds:Landroid/graphics/Rect;

.field private mZoomedIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/high16 v0, 0x44000000

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mMaxSize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;)V

    .line 41
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mTouchDown:Z

    .line 43
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mZoomBounds:Landroid/graphics/Rect;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mTouchDown:Z

    .line 43
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mZoomBounds:Landroid/graphics/Rect;

    .line 55
    return-void
.end method

.method public static setZoomedSize(F)V
    .locals 0
    .param p0, "size"    # F

    .prologue
    .line 58
    sput p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mMaxSize:F

    .line 59
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->onTouchDown(FF)V

    .line 157
    :goto_0
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    .line 158
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->invalidate()V

    .line 159
    return v1

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->onTouchUp()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 157
    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const/high16 v9, 0x43870000

    const/high16 v8, 0x42b40000

    const/high16 v7, 0x3f800000

    const/high16 v6, -0x40800000

    .line 105
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->drawBackground(Landroid/graphics/Canvas;)V

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "filteredImage":Landroid/graphics/Bitmap;
    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mTouchDown:Z

    if-eqz v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    if-eqz v2, :cond_4

    .line 109
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mZoomBounds:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getScaleOneImageForPreset(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 116
    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mTouchDown:Z

    if-eqz v2, :cond_2

    .line 117
    :cond_1
    invoke-static {}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getZoomOrientation()I

    move-result v1

    .line 118
    .local v1, "orientation":I
    packed-switch v1, :pswitch_data_0

    .line 139
    .end local v1    # "orientation":I
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 142
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->showControls()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSliderController:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;

    invoke-virtual {v2, p1}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->drawToast(Landroid/graphics/Canvas;)V

    .line 147
    return-void

    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->requestFilteredImages()V

    .line 113
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 120
    .restart local v1    # "orientation":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v8, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 124
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v9, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 128
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v8, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 129
    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 133
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v9, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 134
    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 118
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchDown(FF)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-super {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->onTouchDown(FF)V

    .line 71
    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mTouchDown:Z

    if-eqz v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mTouchDown:Z

    .line 75
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v2

    iget-object v0, v2, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    .line 76
    .local v0, "geo":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getOriginalToScreen(ZFFFF)Landroid/graphics/Matrix;

    move-result-object v9

    .line 78
    .local v9, "originalToScreen":Landroid/graphics/Matrix;
    const/4 v2, 0x2

    new-array v10, v2, [F

    .line 79
    .local v10, "point":[F
    const/4 v2, 0x0

    aput p1, v10, v2

    .line 80
    aput p2, v10, v1

    .line 81
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 82
    .local v6, "inverse":Landroid/graphics/Matrix;
    invoke-virtual {v9, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 83
    invoke-virtual {v6, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 85
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 86
    .local v11, "ratio":F
    sget v7, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mMaxSize:F

    .line 87
    .local v7, "mh":F
    mul-float v8, v11, v7

    .line 88
    .local v8, "mw":F
    new-instance v12, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchX:F

    sub-float/2addr v1, v8

    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchY:F

    sub-float/2addr v2, v7

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchX:F

    add-float/2addr v3, v8

    iget v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchY:F

    add-float/2addr v4, v8

    invoke-direct {v12, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 89
    .local v12, "zoomRect":Landroid/graphics/RectF;
    invoke-virtual {v6, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 90
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v1, v8

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v2, v7

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v3, v8

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    add-float/2addr v4, v7

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 92
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v12, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v12, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v12, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v12, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mZoomBounds:Landroid/graphics/Rect;

    .line 94
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->invalidate()V

    goto/16 :goto_0
.end method

.method public onTouchUp()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mTouchDown:Z

    .line 100
    return-void
.end method

.method public resetParameter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->resetParameter()V

    .line 64
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mZoomedIn:Z

    .line 65
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->mTouchDown:Z

    .line 66
    return-void
.end method
