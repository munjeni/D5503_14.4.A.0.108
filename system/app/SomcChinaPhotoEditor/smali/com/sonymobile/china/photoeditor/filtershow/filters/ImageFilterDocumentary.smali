.class public Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterDocumentary;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterDocumentary.java"


# static fields
.field private static final DEFAULT_BLACK_SCALE:F = 0.0f

.field private static final DEFAULT_GRAY_SCALE:F = 1.0f

.field private static final DEFAULT_VIGNETTING_SCALE:F = 0.83f

.field private static final DEFAULT_WHITE_SCALE:F = 0.5f


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 21
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterDocumentary;->setFilterType(B)V

    .line 22
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 28
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 29
    .local v0, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 30
    .local v1, "outBitmap":Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 31
    .local v2, "temp":Landroid/graphics/Bitmap;
    const/high16 v4, 0x3f000000

    const/4 v5, 0x0

    invoke-static {p1, v1, v4, v5}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeWhiteBlack(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FF)V

    .line 32
    const/high16 v4, 0x3f800000

    invoke-static {v1, v2, v4}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeGrayscale(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 33
    const v4, 0x3f547ae1

    invoke-static {v2, v1, v4}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeVignetting(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 34
    return-object v1
.end method
