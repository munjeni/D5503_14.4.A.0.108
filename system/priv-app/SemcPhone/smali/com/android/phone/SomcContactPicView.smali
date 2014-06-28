.class public Lcom/android/phone/SomcContactPicView;
.super Landroid/widget/ImageView;
.source "SomcContactPicView.java"


# instance fields
.field private mBorderLeft:I

.field private mBorderTop:I

.field private mContactPicMatrix:Landroid/graphics/Matrix;

.field private mFrameBitmap:Landroid/graphics/Bitmap;

.field private mIsFrameVisible:Z

.field private mModeOver:Landroid/graphics/PorterDuffXfermode;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mPaint:Landroid/graphics/Paint;

.field private mThresholdPictureHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/SomcContactPicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/SomcContactPicView;->mIsFrameVisible:Z

    .line 60
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/phone/SomcContactPicView;->mContactPicMatrix:Landroid/graphics/Matrix;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/SomcContactPicView;->setDensityScale(Landroid/content/Context;)V

    .line 80
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/phone/SomcContactPicView;->mModeOver:Landroid/graphics/PorterDuffXfermode;

    .line 82
    if-nez p2, :cond_0

    .line 96
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020033

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcContactPicView;->mFrameBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "SomcContactPicView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Converting resource to bitmap failed in constructor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDensityScale(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0a000e

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 232
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/SomcContactPicView;->mThresholdPictureHeight:I

    .line 234
    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/SomcContactPicView;->mPaddingTop:I

    .line 236
    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/SomcContactPicView;->mPaddingBottom:I

    .line 238
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/SomcContactPicView;->mPaddingLeft:I

    .line 240
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/SomcContactPicView;->mPaddingRight:I

    .line 242
    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/SomcContactPicView;->mBorderTop:I

    .line 244
    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/SomcContactPicView;->mBorderLeft:I

    .line 246
    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 112
    .local v0, "padding":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/SomcContactPicView;->mIsFrameVisible:Z

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/phone/SomcContactPicView;->mModeOver:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 115
    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mFrameBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/phone/SomcContactPicView;->mPaddingLeft:I

    iget v3, p0, Lcom/android/phone/SomcContactPicView;->mBorderLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/phone/SomcContactPicView;->mPaddingTop:I

    iget v4, p0, Lcom/android/phone/SomcContactPicView;->mBorderTop:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 119
    :cond_0
    return-void

    .line 109
    .end local v0    # "padding":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycleBitmap()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/phone/SomcContactPicView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/phone/SomcContactPicView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcContactPicView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 256
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 209
    iget-object v0, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 212
    :cond_0
    return-void
.end method

.method public setFrameVisible(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/phone/SomcContactPicView;->mIsFrameVisible:Z

    .line 221
    return-void
.end method

.method public final setImage(I)V
    .locals 10
    .param p1, "resource"    # I

    .prologue
    const/high16 v9, 0x3f000000

    const/4 v8, 0x0

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 128
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 132
    .local v3, "imageWidth":I
    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 133
    invoke-super {p0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 135
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 137
    .local v2, "imageHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 139
    .local v5, "viewHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 142
    .local v6, "viewWidth":I
    int-to-float v7, v6

    int-to-float v8, v3

    div-float v4, v7, v8

    .line 147
    .local v4, "scale":F
    int-to-float v7, v5

    int-to-float v8, v2

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    mul-float v1, v7, v9

    .line 148
    .local v1, "dx":F
    iget-object v7, p0, Lcom/android/phone/SomcContactPicView;->mContactPicMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 149
    iget-object v7, p0, Lcom/android/phone/SomcContactPicView;->mContactPicMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 150
    iget-object v7, p0, Lcom/android/phone/SomcContactPicView;->mContactPicMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    add-float/2addr v9, v1

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 151
    iget-object v7, p0, Lcom/android/phone/SomcContactPicView;->mContactPicMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 152
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    return-void
.end method

.method public final setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/high16 v5, 0x3f000000

    const/4 v4, 0x0

    .line 161
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 162
    .local v8, "imageHeight":I
    iget v2, p0, Lcom/android/phone/SomcContactPicView;->mThresholdPictureHeight:I

    if-le v8, v2, :cond_0

    .line 165
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 166
    invoke-super {p0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 168
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 170
    .local v9, "imageWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 172
    .local v12, "viewHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 175
    .local v13, "viewWidth":I
    int-to-float v2, v12

    int-to-float v3, v8

    div-float v11, v2, v3

    .line 180
    .local v11, "scale":F
    int-to-float v2, v13

    int-to-float v3, v9

    mul-float/2addr v3, v11

    sub-float/2addr v2, v3

    mul-float v6, v2, v5

    .line 181
    .local v6, "dx":F
    iget-object v2, p0, Lcom/android/phone/SomcContactPicView;->mContactPicMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 182
    iget-object v2, p0, Lcom/android/phone/SomcContactPicView;->mContactPicMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v11, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 183
    iget-object v2, p0, Lcom/android/phone/SomcContactPicView;->mContactPicMatrix:Landroid/graphics/Matrix;

    add-float v3, v6, v5

    float-to-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 184
    iget-object v2, p0, Lcom/android/phone/SomcContactPicView;->mContactPicMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 185
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    .end local v6    # "dx":F
    .end local v9    # "imageWidth":I
    .end local v11    # "scale":F
    .end local v12    # "viewHeight":I
    .end local v13    # "viewWidth":I
    :goto_0
    return-void

    .line 188
    :cond_0
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 191
    .local v7, "frame":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x2

    new-array v10, v2, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v10, v4

    const/4 v2, 0x1

    aput-object v7, v10, v2

    .line 192
    .local v10, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 193
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v10

    if-ge v1, v2, :cond_1

    .line 194
    iget v2, p0, Lcom/android/phone/SomcContactPicView;->mPaddingLeft:I

    iget v3, p0, Lcom/android/phone/SomcContactPicView;->mPaddingTop:I

    iget v4, p0, Lcom/android/phone/SomcContactPicView;->mPaddingRight:I

    iget v5, p0, Lcom/android/phone/SomcContactPicView;->mPaddingBottom:I

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 197
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
