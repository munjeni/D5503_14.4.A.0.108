.class public Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.super Ljava/lang/Object;
.source "ImageFilter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final TYPE_BORDER:B = 0x1t

.field public static final TYPE_DOODLE:B = 0x8t

.field public static final TYPE_FX:B = 0x2t

.field public static final TYPE_NORMAL:B = 0x5t

.field public static final TYPE_STAMP:B = 0x9t

.field public static final TYPE_STYLE:B = 0xat

.field public static final TYPE_TEXT:B = 0x7t

.field public static final TYPE_TINYPLANET:B = 0x6t

.field public static final TYPE_VIGNETTE:B = 0x4t

.field public static final TYPE_WBALANCE:B = 0x3t


# instance fields
.field private filterType:B

.field protected mDefaultParameter:I

.field protected mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

.field private mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

.field protected mMaxParameter:I

.field protected mMinParameter:I

.field protected mName:Ljava/lang/String;

.field protected mParameter:I

.field protected mPreviewParameter:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x64

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mMaxParameter:I

    .line 30
    const/16 v0, -0x64

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mMinParameter:I

    .line 32
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mMaxParameter:I

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mPreviewParameter:I

    .line 34
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mDefaultParameter:I

    .line 36
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mParameter:I

    .line 40
    const-string v0, "Original"

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 62
    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->filterType:B

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    .line 111
    return-object p1
.end method

.method public clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 81
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getParameter()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->setParameter(I)V

    .line 83
    iget-byte v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->filterType:B

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->setFilterType(B)V

    .line 84
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mMaxParameter:I

    iput v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mMaxParameter:I

    .line 85
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mMinParameter:I

    iput v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mMinParameter:I

    .line 86
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    iput-object v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 87
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mDefaultParameter:I

    iput v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mDefaultParameter:I

    .line 88
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mPreviewParameter:I

    iput v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mPreviewParameter:I

    .line 90
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    iput-object v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    .line 91
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
    .line 26
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 176
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 178
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v3, v3, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 179
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 180
    return-object v0
.end method

.method public getDefaultParameter()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mDefaultParameter:I

    return v0
.end method

.method public getFilterType()B
    .locals 1

    .prologue
    .line 71
    iget-byte v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->filterType:B

    return v0
.end method

.method public getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    return-object v0
.end method

.method public getMaxParameter()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mMaxParameter:I

    return v0
.end method

.method public getMinParameter()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mMinParameter:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mParameter:I

    return v0
.end method

.method public getPreviewParameter()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mPreviewParameter:I

    return v0
.end method

.method public isNil()Z
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mParameter:I

    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mDefaultParameter:I

    if-ne v0, v1, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected native nativeApplyGradientFilter(Landroid/graphics/Bitmap;II[I[I[I)V
.end method

.method public same(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Z
    .locals 3
    .param p1, "filter"    # Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .prologue
    const/4 v0, 0x0

    .line 167
    if-nez p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setFilterType(B)V
    .locals 0
    .param p1, "type"    # B

    .prologue
    .line 75
    iput-byte p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->filterType:B

    .line 76
    return-void
.end method

.method public setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V
    .locals 0
    .param p1, "mPreset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 164
    return-void
.end method

.method public setLocalGeoData(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;)V
    .locals 0
    .param p1, "data"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    .line 68
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setParameter(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mParameter:I

    .line 120
    return-void
.end method
