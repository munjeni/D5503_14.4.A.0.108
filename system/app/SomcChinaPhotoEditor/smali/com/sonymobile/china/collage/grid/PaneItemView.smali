.class public Lcom/sonymobile/china/collage/grid/PaneItemView;
.super Landroid/view/View;
.source "PaneItemView.java"


# static fields
.field protected static final SCALE_DETA:F = 0.1f

.field protected static final STEP:I = 0xf


# instance fields
.field protected mHeight:I

.field protected mLeft:F

.field protected mPreviousX:F

.field protected mPreviousY:F

.field protected mScaleBitmap:Landroid/graphics/Bitmap;

.field protected mSrcPicType:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

.field protected mTop:F

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    .line 27
    iput v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mWidth:I

    .line 29
    iput v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mHeight:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    .line 27
    iput v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mWidth:I

    .line 29
    iput v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mHeight:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    .line 27
    iput v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mWidth:I

    .line 29
    iput v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mHeight:I

    .line 57
    return-void
.end method


# virtual methods
.method public setBitmap(Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;FF)V
    .locals 4
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "picType"    # Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;
    .param p3, "left"    # F
    .param p4, "top"    # F

    .prologue
    .line 71
    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    .line 75
    :cond_0
    iput-object p2, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mSrcPicType:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    .line 76
    iput p3, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mLeft:F

    .line 77
    iput p4, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mTop:F

    .line 78
    if-nez p1, :cond_1

    .line 93
    :goto_0
    return-void

    .line 81
    :cond_1
    iget v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mWidth:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 82
    .local v0, "scale":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mHeight:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 83
    iget v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mHeight:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 90
    :cond_2
    const v1, 0x3dcccccd

    add-float/2addr v0, v1

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public updateWAndH(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mWidth:I

    .line 67
    iput p2, p0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mHeight:I

    .line 68
    return-void
.end method
