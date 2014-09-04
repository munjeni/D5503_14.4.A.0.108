.class public Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterJackie;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterJackie.java"


# static fields
.field private static final DEFAULT_BRIGHT_COLOR:I = -0x190068

.field private static final DEFAULT_DARK_COLOR:I = -0x5d0000

.field private static final DEFAULT_SCALE:F = 0.25f


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 29
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterJackie;->setFilterType(B)V

    .line 30
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private loadMask()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 64
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 65
    invoke-static {}, Lcom/sonymobile/china/photoeditor/PhotoEditorApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d7

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 35
    .local v4, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 36
    .local v8, "height":I
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 37
    .local v12, "outBitmap":Landroid/graphics/Bitmap;
    new-instance v10, Lcom/sonymobile/china/photoeditor/DuoTone;

    const v1, -0x190068

    const/high16 v3, -0x5d0000

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v10, v1, v3, v5, v6}, Lcom/sonymobile/china/photoeditor/DuoTone;-><init>(IIII)V

    .line 40
    .local v10, "duoTone":Lcom/sonymobile/china/photoeditor/DuoTone;
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 41
    .local v2, "pixelMap":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 44
    invoke-virtual {v10, v2}, Lcom/sonymobile/china/photoeditor/DuoTone;->getPixelMap([I)[I

    move-result-object v2

    .line 47
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 49
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 50
    .local v13, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 51
    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 52
    .local v9, "canvas":Landroid/graphics/Canvas;
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterJackie;->loadMask()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 53
    .local v11, "maskBitmap":Landroid/graphics/Bitmap;
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 54
    .local v14, "scaleMatrix":Landroid/graphics/Matrix;
    int-to-float v1, v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v15, v1, v3

    .line 55
    .local v15, "scaleX":F
    int-to-float v1, v8

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v16, v1, v3

    .line 56
    .local v16, "scaleY":F
    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 57
    invoke-virtual {v9, v11, v14, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 58
    const/high16 v1, 0x3e800000

    move-object/from16 v0, p1

    invoke-static {v0, v12, v1}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeHEQ(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 59
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 60
    return-object v12
.end method
