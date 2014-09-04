.class public Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterAlfred;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterAlfred.java"


# static fields
.field private static final DEFAULT_BRIGHT_COLOR:I = -0x240001

.field private static final DEFAULT_DARK_COLOR:I = -0xfffcd8

.field private static final DEFAULT_SCALE:F = 0.5f


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 21
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterAlfred;->setFilterType(B)V

    .line 22
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 27
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 28
    .local v7, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    .local v0, "outBitmap":Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 31
    .local v9, "tempBitmap":Landroid/graphics/Bitmap;
    const/high16 v4, 0x3f000000

    invoke-static {p1, v9, v4}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeSharpen(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 32
    const/high16 v4, 0x3e800000

    invoke-static {v9, v0, v4}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeHEQ(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 33
    new-instance v8, Lcom/sonymobile/china/photoeditor/DuoTone;

    const v4, -0x240001

    const v5, -0xfffcd8

    invoke-direct {v8, v4, v5, v2, v2}, Lcom/sonymobile/china/photoeditor/DuoTone;-><init>(IIII)V

    .line 36
    .local v8, "duoTone":Lcom/sonymobile/china/photoeditor/DuoTone;
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .local v1, "pixelMap":[I
    move v4, v2

    move v5, v2

    move v6, v3

    .line 37
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 40
    invoke-virtual {v8, v1}, Lcom/sonymobile/china/photoeditor/DuoTone;->getPixelMap([I)[I

    move-result-object v1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 43
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 44
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 45
    return-object v0
.end method
