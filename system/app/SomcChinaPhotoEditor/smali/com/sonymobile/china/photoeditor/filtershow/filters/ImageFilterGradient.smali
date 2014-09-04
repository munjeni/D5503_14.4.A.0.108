.class public Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterGradient.java"


# instance fields
.field private mColors:[I

.field private mGradientBitmap:Landroid/graphics/Bitmap;

.field private mPositions:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mGradientBitmap:Landroid/graphics/Bitmap;

    .line 32
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mColors:[I

    .line 34
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mPositions:[F

    .line 37
    const-string v0, "Gradient"

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public addColor(IF)V
    .locals 5
    .param p1, "color"    # I
    .param p2, "position"    # F

    .prologue
    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, "length":I
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mColors:[I

    if-eqz v4, :cond_0

    .line 51
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mColors:[I

    array-length v2, v4

    .line 53
    :cond_0
    add-int/lit8 v4, v2, 0x1

    new-array v0, v4, [I

    .line 54
    .local v0, "colors":[I
    add-int/lit8 v4, v2, 0x1

    new-array v3, v4, [F

    .line 56
    .local v3, "positions":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 57
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mColors:[I

    aget v4, v4, v1

    aput v4, v0, v1

    .line 58
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mPositions:[F

    aget v4, v4, v1

    aput v4, v3, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    aput p1, v0, v2

    .line 62
    aput p2, v3, v2

    .line 64
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mColors:[I

    .line 65
    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mPositions:[F

    .line 66
    return-void
.end method

.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x100

    .line 70
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->createGradient()V

    .line 71
    new-array v1, v3, [I

    .line 72
    .local v1, "gradient":[I
    new-array v11, v3, [I

    .line 73
    .local v11, "redGradient":[I
    new-array v9, v3, [I

    .line 74
    .local v9, "greenGradient":[I
    new-array v8, v3, [I

    .line 75
    .local v8, "blueGradient":[I
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mGradientBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x1

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 77
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v3, :cond_0

    .line 78
    aget v0, v1, v10

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    aput v0, v11, v10

    .line 79
    aget v0, v1, v10

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    aput v0, v9, v10

    .line 80
    aget v0, v1, v10

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    aput v0, v8, v10

    .line 77
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object v2, p0

    move-object v3, p1

    move-object v6, v11

    move-object v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->nativeApplyGradientFilter(Landroid/graphics/Bitmap;II[I[I[I)V

    .line 84
    return-object p1
.end method

.method public clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;

    .line 43
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mColors:[I

    iget-object v2, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mColors:[I

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mColors:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mPositions:[F

    iget-object v2, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mPositions:[F

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mPositions:[F

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public createGradient()V
    .locals 13

    .prologue
    const/high16 v4, 0x3f800000

    const/4 v1, 0x0

    .line 88
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mGradientBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 113
    :goto_0
    return-void

    .line 93
    :cond_0
    const/16 v2, 0x100

    const/4 v3, 0x1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 94
    .local v11, "b":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    .local v12, "c":Landroid/graphics/Canvas;
    const/high16 v2, -0x1000000

    invoke-virtual {v12, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 105
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v3, 0x437f0000

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mColors:[I

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mPositions:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 108
    .local v0, "grad":Landroid/graphics/LinearGradient;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 109
    .local v10, "p":Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 111
    const/high16 v8, 0x43800000

    move-object v5, v12

    move v6, v1

    move v7, v1

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 112
    iput-object v11, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->mGradientBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
