.class public Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterMaya;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterMaya.java"


# static fields
.field private static final DEFAULT_BRIGHT_COLOR:I = -0x190068

.field private static final DEFAULT_DARK_COLOR:I = -0xb29868

.field private static final DEFAULT_SCALE:F = 0.25f


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 20
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterMaya;->setFilterType(B)V

    .line 21
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 22
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
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 29
    .local v9, "outBitmap":Landroid/graphics/Bitmap;
    new-instance v8, Lcom/sonymobile/china/photoeditor/DuoTone;

    const v0, -0x190068

    const v4, -0xb29868

    const/4 v5, 0x1

    invoke-direct {v8, v0, v4, v2, v5}, Lcom/sonymobile/china/photoeditor/DuoTone;-><init>(IIII)V

    .line 32
    .local v8, "duoTone":Lcom/sonymobile/china/photoeditor/DuoTone;
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixelMap":[I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 33
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 36
    invoke-virtual {v8, v1}, Lcom/sonymobile/china/photoeditor/DuoTone;->getPixelMap([I)[I

    move-result-object v1

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 39
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 40
    const/high16 v0, 0x3e800000

    invoke-static {p1, v9, v0}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeHEQ(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 41
    return-object v9
.end method
