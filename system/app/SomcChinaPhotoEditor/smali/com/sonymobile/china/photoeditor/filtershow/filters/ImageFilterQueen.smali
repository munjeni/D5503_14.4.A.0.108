.class public Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterQueen;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterQueen.java"


# static fields
.field private static final DEFAULT_SCALE:F = 0.5f


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 16
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterQueen;->setFilterType(B)V

    .line 17
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 23
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 24
    .local v0, "height":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 25
    .local v1, "outBitmap":Landroid/graphics/Bitmap;
    const/high16 v3, 0x3f000000

    invoke-static {p1, v1, v3}, Lcom/sonymobile/china/photoeditor/util/EffectsUtil;->nativeBacklight(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    .line 26
    return-object v1
.end method
