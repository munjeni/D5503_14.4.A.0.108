.class public Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterJaida;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterJaida.java"


# static fields
.field private static final DEFAULT_BRIGHT_COLOR:I = -0x445

.field private static final DEFAULT_DARK_COLOR:I = -0xffdff8

.field private static final DEFAULT_SCALE:F = 0.5f


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 29
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterJaida;->setFilterType(B)V

    .line 30
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private loadMask()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 69
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 70
    invoke-static {}, Lcom/sonymobile/china/photoeditor/PhotoEditorApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d4

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 19
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 35
    .local v5, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 36
    .local v9, "height":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 37
    .local v13, "outBitmap":Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 39
    .local v18, "tempBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Lcom/sonymobile/china/photoeditor/DuoTone;

    const/16 v2, -0x445

    const v4, -0xffdff8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v11, v2, v4, v6, v7}, Lcom/sonymobile/china/photoeditor/DuoTone;-><init>(IIII)V

    .line 42
    .local v11, "duoTone":Lcom/sonymobile/china/photoeditor/DuoTone;
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 43
    .local v3, "pixelMap":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 46
    invoke-virtual {v11, v3}, Lcom/sonymobile/china/photoeditor/DuoTone;->getPixelMap([I)[I

    move-result-object v3

    .line 49
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 50
    const/high16 v2, 0x3f000000

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeSaturation(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 52
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 53
    .local v14, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 54
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    .local v10, "canvas":Landroid/graphics/Canvas;
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterJaida;->loadMask()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 56
    .local v12, "maskBitmap":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 57
    .local v15, "scaleMatrix":Landroid/graphics/Matrix;
    int-to-float v2, v5

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v16, v2, v4

    .line 58
    .local v16, "scaleX":F
    int-to-float v2, v9

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v17, v2, v4

    .line 59
    .local v17, "scaleY":F
    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 60
    invoke-virtual {v10, v12, v15, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 62
    const/high16 v2, 0x3e800000

    move-object/from16 v0, v18

    invoke-static {v0, v13, v2}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeHEQ(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 63
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 64
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    return-object v13
.end method
