.class public Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterStraighten.java"


# instance fields
.field private final mConfig:Landroid/graphics/Bitmap$Config;

.field private mRotation:F

.field private mZoomFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 25
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 32
    const-string v0, "Straighten"

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "rotation"    # F
    .param p2, "zoomFactor"    # F

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 25
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 44
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;->mRotation:F

    .line 45
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;->mZoomFactor:F

    .line 46
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 63
    .local v1, "temp":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    .local v12, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v12}, Landroid/graphics/Canvas;->save()I

    .line 65
    new-instance v11, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v11, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 66
    .local v11, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v16, v0

    .line 67
    .local v16, "w":F
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 68
    .local v13, "h":F
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float v15, v3, v4

    .line 69
    .local v15, "mw":F
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float v14, v3, v4

    .line 71
    .local v14, "mh":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;->mZoomFactor:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;->mZoomFactor:F

    invoke-virtual {v12, v3, v4, v15, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 72
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;->mRotation:F

    invoke-virtual {v12, v3, v15, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 73
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 74
    invoke-virtual {v12}, Landroid/graphics/Canvas;->restore()V

    .line 76
    mul-float v3, v16, v13

    float-to-int v3, v3

    new-array v2, v3, [I

    .line 77
    .local v2, "pixels":[I
    const/4 v3, 0x0

    move/from16 v0, v16

    float-to-int v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v16

    float-to-int v7, v0

    float-to-int v8, v13

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 78
    const/4 v5, 0x0

    move/from16 v0, v16

    float-to-int v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v16

    float-to-int v9, v0

    float-to-int v10, v13

    move-object/from16 v3, p1

    move-object v4, v2

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 79
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    const/4 v1, 0x0

    .line 81
    const/4 v2, 0x0

    .line 82
    return-object p1
.end method

.method public clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;

    .line 38
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;->mRotation:F

    iput v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;->mRotation:F

    .line 39
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;->mZoomFactor:F

    iput v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;->mZoomFactor:F

    .line 40
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;->clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;->mRotation:F

    .line 50
    return-void
.end method

.method public setRotationZoomFactor(F)V
    .locals 0
    .param p1, "zoomFactor"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterStraighten;->mZoomFactor:F

    .line 54
    return-void
.end method
