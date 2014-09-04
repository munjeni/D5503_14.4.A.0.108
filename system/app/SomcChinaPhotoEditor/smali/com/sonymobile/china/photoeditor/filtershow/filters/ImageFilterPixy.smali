.class public Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterPixy;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterPixy.java"


# static fields
.field private static final DEFAULT_COLOR_SCALE:F = 0.25f

.field private static final DEFAULT_SCALE:F = -0.5f


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 20
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterPixy;->setFilterType(B)V

    .line 21
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    .line 25
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 26
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 28
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 29
    .local v0, "height":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 30
    .local v3, "tempBitmap":Landroid/graphics/Bitmap;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 31
    .local v1, "outBitmap":Landroid/graphics/Bitmap;
    const/high16 v5, -0x41000000

    invoke-static {p1, v3, v5}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeSaturation(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 32
    const/high16 v5, 0x3e800000

    invoke-static {v3, v1, v5}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeGrain(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 33
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    return-object v1
.end method
