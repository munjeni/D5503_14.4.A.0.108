.class public Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterLomoish;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterLomoish.java"


# static fields
.field private static final DEFAULT_BLACK_SCALE:F = 0.15f

.field private static final DEFAULT_BLUR_SCALE:F = 0.3f

.field private static final DEFAULT_VIGNETTING_SCALE:F = 0.73f

.field private static final DEFAULT_WHITE_SCALE:F = 0.8f


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 19
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterLomoish;->setFilterType(B)V

    .line 20
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 25
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 26
    .local v0, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 27
    .local v1, "outBitmap":Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 28
    .local v2, "temp":Landroid/graphics/Bitmap;
    const v4, 0x3e99999a

    invoke-static {p1, v2, v4}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 29
    invoke-static {v2, v1}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeCrossProcess(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 30
    const v4, 0x3f4ccccd

    const v5, 0x3e19999a

    invoke-static {v1, v2, v4, v5}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeWhiteBlack(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FF)V

    .line 31
    const v4, 0x3f3ae148

    invoke-static {v2, v1, v4}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeVignetting(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 32
    return-object v1
.end method
