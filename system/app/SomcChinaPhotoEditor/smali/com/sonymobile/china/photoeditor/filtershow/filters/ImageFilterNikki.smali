.class public Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterNikki;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterNikki.java"


# static fields
.field private static final DEFAULT_AUTOFIX_SCALE:F = 0.25f

.field private static final DEFAULT_SATURATE_SCALE:F = 0.15f


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 17
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterNikki;->setFilterType(B)V

    .line 18
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 23
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 24
    .local v0, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 25
    .local v1, "outBitmap":Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 26
    .local v2, "temp":Landroid/graphics/Bitmap;
    const v4, 0x3e19999a

    invoke-static {p1, v2, v4}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeSaturation(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 27
    const/high16 v4, 0x3e800000

    invoke-static {v2, v1, v4}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeHEQ(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 28
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 29
    return-object v1
.end method
