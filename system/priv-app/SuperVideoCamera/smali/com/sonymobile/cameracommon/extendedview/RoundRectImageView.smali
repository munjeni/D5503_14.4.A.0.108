.class public Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;
.super Landroid/widget/ImageView;
.source "RoundRectImageView.java"


# instance fields
.field private mClipPath:Landroid/graphics/Path;

.field private mDstRect:Landroid/graphics/RectF;

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mDstRect:Landroid/graphics/RectF;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadius:F

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mClipPath:Landroid/graphics/Path;

    .line 41
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->initialize()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mDstRect:Landroid/graphics/RectF;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadius:F

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mClipPath:Landroid/graphics/Path;

    .line 52
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->initialize()V

    .line 53
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 61
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mClipPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 62
    return-void
.end method

.method private updateClipPath()V
    .locals 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mDstRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadius:F

    iget v3, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 91
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 99
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 100
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 104
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 80
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mDstRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 82
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->updateClipPath()V

    .line 83
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 70
    iput p1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadius:F

    .line 72
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->updateClipPath()V

    .line 73
    return-void
.end method
