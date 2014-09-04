.class public Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterSandy;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterSandy.java"


# static fields
.field private static final DEFAULT_SCALE:F = 0.25f


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 25
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterSandy;->setFilterType(B)V

    .line 26
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private loadMask()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 51
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 52
    invoke-static {}, Lcom/sonymobile/china/photoeditor/PhotoEditorApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200db

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    .line 31
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 32
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 34
    .local v8, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 35
    .local v1, "height":I
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 36
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterSandy;->loadMask()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 37
    .local v2, "maskBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 38
    .local v5, "scaleMatrix":Landroid/graphics/Matrix;
    int-to-float v9, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v6, v9, v10

    .line 39
    .local v6, "scaleX":F
    int-to-float v9, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v7, v9, v10

    .line 40
    .local v7, "scaleY":F
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 41
    invoke-virtual {v0, v2, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 43
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 44
    .local v3, "outBitmap":Landroid/graphics/Bitmap;
    const/high16 v9, 0x3e800000

    invoke-static {p1, v3, v9}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeHEQ(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 45
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 46
    return-object v3
.end method
