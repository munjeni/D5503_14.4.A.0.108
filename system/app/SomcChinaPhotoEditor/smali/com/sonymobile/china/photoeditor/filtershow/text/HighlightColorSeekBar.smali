.class public Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;
.super Landroid/widget/SeekBar;
.source "HighlightColorSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$OnHighlightColorSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private background:Landroid/graphics/Bitmap;

.field private final colors:[I

.field private mH:I

.field private mIndex:I

.field private mW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mW:I

    .line 56
    iput v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mH:I

    .line 57
    iput v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mIndex:I

    .line 63
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->colors:[I

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->colors:[I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v2, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->colors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->setMax(I)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->colors:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    .prologue
    .line 41
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    .prologue
    .line 41
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mW:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    .prologue
    .line 41
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mH:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->setThumb(I)V

    return-void
.end method

.method private setThumb(I)V
    .locals 12
    .param p1, "color"    # I

    .prologue
    const/4 v11, 0x0

    .line 73
    iget v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mW:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->colors:[I

    array-length v9, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 74
    .local v6, "strip":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090036

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 76
    .local v3, "hight":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090037

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 80
    .local v4, "offset":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 81
    .local v5, "res":Landroid/content/res/Resources;
    const v8, 0x7f02006e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 83
    .local v7, "thumb":Landroid/graphics/drawable/Drawable;
    mul-int/lit8 v8, v4, 0x2

    sub-int v8, v3, v8

    mul-int/lit8 v9, v4, 0x2

    sub-int v9, v3, v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 85
    .local v2, "colorBmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 88
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    .end local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    int-to-float v8, v4

    int-to-float v9, v4

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 92
    invoke-virtual {v7, v11, v11, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 95
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mIndex:I

    if-nez v8, :cond_1

    .line 97
    div-int/lit8 v8, v6, 0x2

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->setThumbOffset(I)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mIndex:I

    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->colors:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_0

    .line 99
    div-int/lit8 v8, v6, 0x2

    sub-int v8, v3, v8

    sub-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->setThumbOffset(I)V

    goto :goto_0
.end method


# virtual methods
.method public getColor()I
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->colors:[I

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->getProgress()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getIndex(I)I
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 169
    const/4 v1, 0x4

    .line 170
    .local v1, "index":I
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->colors:[I

    if-eqz v2, :cond_1

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->colors:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->colors:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 173
    move v1, v0

    .line 171
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v10, 0x0

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 106
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mW:I

    .line 107
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mH:I

    .line 108
    int-to-float v2, p1

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->colors:[I

    array-length v4, v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 109
    .local v9, "strip":I
    div-int/lit8 v2, v9, 0x2

    div-int/lit8 v4, v9, 0x2

    invoke-virtual {p0, v2, v10, v4, v10}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->setPadding(IIII)V

    .line 110
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->colors:[I

    iget v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mIndex:I

    aget v2, v2, v4

    invoke-direct {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->setThumb(I)V

    .line 112
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->background:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->background:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 115
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->background:Landroid/graphics/Bitmap;

    .line 116
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->background:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 118
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 119
    .local v5, "paint":Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090036

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 123
    .local v6, "hight":I
    sub-int v2, v6, v9

    div-int/lit8 v8, v2, 0x2

    .line 125
    .local v8, "offset":I
    const/4 v1, 0x0

    .line 126
    .local v1, "left":F
    int-to-float v2, v9

    add-float v3, v1, v2

    .line 127
    .local v3, "right":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->colors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-gt v7, v2, :cond_1

    .line 128
    int-to-float v2, v9

    add-float v3, v1, v2

    .line 129
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->colors:[I

    aget v2, v2, v7

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    int-to-float v2, v8

    sub-int v4, p2, v8

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 131
    move v1, v3

    .line 127
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 134
    :cond_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->background:Landroid/graphics/Bitmap;

    invoke-direct {v2, v4, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    return-void
.end method

.method public setColorIndex(I)V
    .locals 0
    .param p1, "colorIndex"    # I

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->setProgress(I)V

    .line 161
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mIndex:I

    .line 162
    return-void
.end method

.method public setOnColorChangeListener(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$OnHighlightColorSeekBarChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$OnHighlightColorSeekBarChangeListener;

    .prologue
    .line 138
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 157
    return-void

    .line 138
    :cond_0
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$1;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$1;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$OnHighlightColorSeekBarChangeListener;)V

    goto :goto_0
.end method
