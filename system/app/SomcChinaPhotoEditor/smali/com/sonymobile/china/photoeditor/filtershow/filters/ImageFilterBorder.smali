.class public Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterBorder.java"


# static fields
.field private static final BASE_PHOTO_SIZE:F = 3096.0f

.field private static final BORDER_PADDING_SCALE:F = 0.035f


# instance fields
.field private mResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->setFilterType(B)V

    .line 44
    invoke-static {}, Lcom/sonymobile/china/photoeditor/PhotoEditorApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 46
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    .line 47
    return-void
.end method

.method private getBorderBg(ILandroid/graphics/Bitmap;FII)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "resId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "scaleFactor"    # F
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 103
    move/from16 v0, p4

    move/from16 v1, p5

    if-le v0, v1, :cond_1

    move/from16 v7, p4

    .line 104
    .local v7, "paddingBase":I
    :goto_0
    int-to-float v12, v7

    const v13, 0x3d0f5c29

    mul-float/2addr v12, v13

    float-to-int v4, v12

    .line 105
    .local v4, "borderPadding":I
    invoke-static {}, Lcom/sonymobile/china/photoeditor/PhotoEditorApplication;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 107
    .local v3, "borderDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v3, v4, v4}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 108
    .local v6, "matrixBmp":Landroid/graphics/Bitmap;
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 110
    .local v2, "bgBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 111
    .local v5, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 112
    .local v8, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x0

    .line 113
    .local v10, "x":I
    const/4 v11, 0x0

    .line 116
    .local v11, "y":I
    :cond_0
    int-to-float v12, v10

    int-to-float v13, v11

    invoke-virtual {v5, v6, v12, v13, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 117
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    .line 118
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-lt v11, v12, :cond_0

    .line 119
    const/4 v11, 0x0

    .line 120
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    add-int/2addr v10, v12

    .line 121
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-lt v10, v12, :cond_0

    .line 122
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 124
    new-instance v9, Landroid/graphics/Rect;

    sub-int v12, p4, v4

    sub-int v13, p5, v4

    invoke-direct {v9, v4, v4, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 127
    .local v9, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v9, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 128
    return-object v2

    .end local v2    # "bgBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "borderDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "borderPadding":I
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "matrixBmp":Landroid/graphics/Bitmap;
    .end local v7    # "paddingBase":I
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v9    # "rect":Landroid/graphics/Rect;
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_1
    move/from16 v7, p5

    .line 103
    goto :goto_0
.end method

.method private getSelectId(FII)I
    .locals 3
    .param p1, "scaleFactor"    # F
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 133
    const v0, 0x7f020002

    .line 134
    .local v0, "selectId":I
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    const v2, 0x7f0200f5

    if-ne v1, v2, :cond_0

    .line 135
    const v0, 0x7f020002

    .line 137
    :cond_0
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    const v2, 0x7f0200f7

    if-ne v1, v2, :cond_1

    .line 138
    const v0, 0x7f020004

    .line 140
    :cond_1
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    const v2, 0x7f0200f8

    if-ne v1, v2, :cond_2

    .line 141
    const v0, 0x7f020005

    .line 143
    :cond_2
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    const v2, 0x7f0200f9

    if-ne v1, v2, :cond_3

    .line 144
    const v0, 0x7f020006

    .line 146
    :cond_3
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    const v2, 0x7f0200fa

    if-ne v1, v2, :cond_4

    .line 147
    const v0, 0x7f020007

    .line 149
    :cond_4
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    const v2, 0x7f0200fb

    if-ne v1, v2, :cond_5

    .line 150
    const v0, 0x7f020008

    .line 152
    :cond_5
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    const v2, 0x7f0200fc

    if-ne v1, v2, :cond_6

    .line 153
    const v0, 0x7f020009

    .line 155
    :cond_6
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    const v2, 0x7f0200fd

    if-ne v1, v2, :cond_7

    .line 156
    const v0, 0x7f02000a

    .line 158
    :cond_7
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    const v2, 0x7f0200fe

    if-ne v1, v2, :cond_8

    .line 159
    const v0, 0x7f02000b

    .line 161
    :cond_8
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    const v2, 0x7f0200f6

    if-ne v1, v2, :cond_9

    .line 162
    const v0, 0x7f020003

    .line 164
    :cond_9
    return v0
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    const/4 v3, 0x0

    .line 80
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    const v2, 0x7f0200ff

    if-ne v0, v2, :cond_1

    .line 99
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 83
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 84
    .local v4, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 85
    .local v5, "h":I
    invoke-direct {p0, p2, v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->getSelectId(FII)I

    move-result v1

    .line 86
    .local v1, "selectId":I
    const v0, 0x7f020002

    if-eq v1, v0, :cond_2

    const v0, 0x7f020004

    if-eq v1, v0, :cond_2

    const v0, 0x7f020003

    if-ne v1, v0, :cond_3

    :cond_2
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    .line 88
    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->getBorderBg(ILandroid/graphics/Bitmap;FII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 91
    :cond_3
    invoke-static {}, Lcom/sonymobile/china/photoeditor/PhotoEditorApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 93
    .local v6, "borderDrawable":Landroid/graphics/drawable/Drawable;
    int-to-float v0, v4

    const v2, 0x45418000

    div-float v9, v0, v2

    .line 94
    .local v9, "scale":F
    new-instance v7, Landroid/graphics/Rect;

    int-to-float v0, v4

    div-float/2addr v0, v9

    float-to-int v0, v0

    int-to-float v2, v5

    div-float/2addr v2, v9

    float-to-int v2, v2

    invoke-direct {v7, v3, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 95
    .local v7, "bounds":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 96
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 97
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 98
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;

    .line 38
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->setDrawable(I)V

    .line 39
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
    .line 29
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public isNil()Z
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public same(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Z
    .locals 5
    .param p1, "filter"    # Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->same(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Z

    move-result v1

    .line 60
    .local v1, "isBorderFilter":Z
    if-nez v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v2

    .line 63
    :cond_1
    instance-of v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 66
    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;

    .line 67
    .local v0, "borderFilter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    iget v4, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    if-ne v3, v4, :cond_0

    .line 70
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setDrawable(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;->mResId:I

    .line 76
    return-void
.end method
