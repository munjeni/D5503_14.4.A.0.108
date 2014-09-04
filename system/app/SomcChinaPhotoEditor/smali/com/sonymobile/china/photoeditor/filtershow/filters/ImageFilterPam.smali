.class public Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterPam;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterPam.java"


# static fields
.field private static final DEFAULT_BRIGHT_COLOR:I = -0x1

.field private static final DEFAULT_DARK_COLOR:I = -0x79cedf


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 18
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterPam;->setFilterType(B)V

    .line 19
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 24
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 25
    .local v7, "height":I
    new-instance v8, Lcom/sonymobile/china/photoeditor/DuoTone;

    const/4 v0, -0x1

    const v4, -0x79cedf

    invoke-direct {v8, v0, v4, v2, v2}, Lcom/sonymobile/china/photoeditor/DuoTone;-><init>(IIII)V

    .line 28
    .local v8, "duoTone":Lcom/sonymobile/china/photoeditor/DuoTone;
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixelMap":[I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 29
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 32
    invoke-virtual {v8, v1}, Lcom/sonymobile/china/photoeditor/DuoTone;->getPixelMap([I)[I

    move-result-object v1

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 35
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 37
    return-object p1
.end method
