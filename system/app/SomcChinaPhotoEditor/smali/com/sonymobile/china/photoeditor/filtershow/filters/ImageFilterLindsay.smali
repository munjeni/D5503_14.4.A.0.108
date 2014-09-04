.class public Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterLindsay;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterLindsay.java"


# static fields
.field private static final DEFAULT_BRIGHT_COLOR:I = -0x2b2c

.field private static final DEFAULT_DARK_COLOR:I = -0xceffcd


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 25
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterLindsay;->setFilterType(B)V

    .line 26
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private loadMask()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 58
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 59
    invoke-static {}, Lcom/sonymobile/china/photoeditor/PhotoEditorApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d8

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 31
    .local v4, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 32
    .local v8, "height":I
    new-instance v10, Lcom/sonymobile/china/photoeditor/DuoTone;

    const/16 v1, -0x2b2c

    const v3, -0xceffcd

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v10, v1, v3, v5, v6}, Lcom/sonymobile/china/photoeditor/DuoTone;-><init>(IIII)V

    .line 35
    .local v10, "duoTone":Lcom/sonymobile/china/photoeditor/DuoTone;
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 36
    .local v2, "pixelMap":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 39
    invoke-virtual {v10, v2}, Lcom/sonymobile/china/photoeditor/DuoTone;->getPixelMap([I)[I

    move-result-object v2

    .line 42
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 44
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 45
    .local v12, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 46
    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 47
    .local v9, "canvas":Landroid/graphics/Canvas;
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterLindsay;->loadMask()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 48
    .local v11, "maskBitmap":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 49
    .local v13, "scaleMatrix":Landroid/graphics/Matrix;
    int-to-float v1, v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v14, v1, v3

    .line 50
    .local v14, "scaleX":F
    int-to-float v1, v8

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v15, v1, v3

    .line 51
    .local v15, "scaleY":F
    invoke-virtual {v13, v14, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 52
    invoke-virtual {v9, v11, v13, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 53
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 54
    return-object p1
.end method
