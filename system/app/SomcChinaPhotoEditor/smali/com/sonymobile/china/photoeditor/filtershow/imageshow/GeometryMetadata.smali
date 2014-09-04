.class public Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;
.super Ljava/lang/Object;
.source "GeometryMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;
    }
.end annotation


# static fields
.field private static final mImageFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGeometry;


# instance fields
.field private mBounds:Landroid/graphics/RectF;

.field private final mCropBounds:Landroid/graphics/RectF;

.field private mFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

.field private final mPhotoBounds:Landroid/graphics/RectF;

.field private mRotation:F

.field private mScaleFactor:F

.field private mStraightenRotation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGeometry;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGeometry;-><init>()V

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mImageFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGeometry;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    .line 43
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mRotation:F

    .line 45
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    .line 51
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mBounds:Landroid/graphics/RectF;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;)V
    .locals 2
    .param p1, "g"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    .line 43
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mRotation:F

    .line 45
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    .line 51
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mBounds:Landroid/graphics/RectF;

    .line 63
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->set(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;)V

    .line 64
    return-void
.end method

.method public static buildCenteredCropMatrix(Landroid/graphics/RectF;F[F)Landroid/graphics/Matrix;
    .locals 4
    .param p0, "crop"    # Landroid/graphics/RectF;
    .param p1, "rotation"    # F
    .param p2, "newCenter"    # [F

    .prologue
    .line 469
    invoke-static {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->buildCropMatrix(Landroid/graphics/RectF;F)Landroid/graphics/Matrix;

    move-result-object v1

    .line 470
    .local v1, "m":Landroid/graphics/Matrix;
    const/4 v2, 0x2

    new-array v0, v2, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    aput v3, v0, v2

    .line 473
    .local v0, "center":[F
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 474
    invoke-static {v1, v0, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V

    .line 475
    return-object v1
.end method

.method public static buildCenteredPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;
    .locals 4
    .param p0, "photo"    # Landroid/graphics/RectF;
    .param p1, "crop"    # Landroid/graphics/RectF;
    .param p2, "rotation"    # F
    .param p3, "straighten"    # F
    .param p4, "type"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;
    .param p5, "newCenter"    # [F

    .prologue
    .line 450
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->buildPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 451
    .local v1, "m":Landroid/graphics/Matrix;
    const/4 v2, 0x2

    new-array v0, v2, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    aput v3, v0, v2

    .line 454
    .local v0, "center":[F
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 455
    invoke-static {v1, v0, p5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V

    .line 456
    return-object v1
.end method

.method public static buildCropMatrix(Landroid/graphics/RectF;F)Landroid/graphics/Matrix;
    .locals 3
    .param p0, "crop"    # Landroid/graphics/RectF;
    .param p1, "rotation"    # F

    .prologue
    .line 396
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 397
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 398
    return-object v0
.end method

.method public static buildPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;)Landroid/graphics/Matrix;
    .locals 3
    .param p0, "photo"    # Landroid/graphics/RectF;
    .param p1, "crop"    # Landroid/graphics/RectF;
    .param p2, "rotation"    # F
    .param p3, "straighten"    # F
    .param p4, "type"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .prologue
    .line 387
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 388
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, p3, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 389
    iget v1, p0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1, v2, p4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->concatMirrorMatrix(Landroid/graphics/Matrix;FFLcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;)V

    .line 390
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 392
    return-object v0
.end method

.method public static buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;
    .locals 4
    .param p0, "photo"    # Landroid/graphics/RectF;
    .param p1, "crop"    # Landroid/graphics/RectF;
    .param p2, "rotation"    # F
    .param p3, "straighten"    # F
    .param p4, "type"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;
    .param p5, "newCenter"    # [F

    .prologue
    .line 492
    invoke-static/range {p0 .. p5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->buildCenteredPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v0

    .line 493
    .local v0, "m":Landroid/graphics/Matrix;
    neg-float v1, p3

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 494
    return-object v0
.end method

.method protected static concatHorizontalMatrix(Landroid/graphics/Matrix;F)V
    .locals 2
    .param p0, "m"    # Landroid/graphics/Matrix;
    .param p1, "width"    # F

    .prologue
    .line 207
    const/high16 v0, -0x40800000

    const/high16 v1, 0x3f800000

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 209
    return-void
.end method

.method public static concatMirrorMatrix(Landroid/graphics/Matrix;FFLcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;)V
    .locals 1
    .param p0, "m"    # Landroid/graphics/Matrix;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "type"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .prologue
    .line 242
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->HORIZONTAL:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne p3, v0, :cond_1

    .line 243
    invoke-static {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->concatHorizontalMatrix(Landroid/graphics/Matrix;F)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->VERTICAL:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne p3, v0, :cond_2

    .line 245
    invoke-static {p0, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->concatVerticalMatrix(Landroid/graphics/Matrix;F)V

    goto :goto_0

    .line 246
    :cond_2
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->BOTH:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne p3, v0, :cond_0

    .line 247
    invoke-static {p0, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->concatVerticalMatrix(Landroid/graphics/Matrix;F)V

    .line 248
    invoke-static {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->concatHorizontalMatrix(Landroid/graphics/Matrix;F)V

    goto :goto_0
.end method

.method public static concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V
    .locals 3
    .param p0, "m"    # Landroid/graphics/Matrix;
    .param p1, "currentCenter"    # [F
    .param p2, "newCenter"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 402
    aget v0, p2, v1

    aget v1, p1, v1

    sub-float/2addr v0, v1

    aget v1, p2, v2

    aget v2, p1, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 403
    return-void
.end method

.method protected static concatVerticalMatrix(Landroid/graphics/Matrix;F)V
    .locals 2
    .param p0, "m"    # Landroid/graphics/Matrix;
    .param p1, "height"    # F

    .prologue
    .line 220
    const/high16 v0, 0x3f800000

    const/high16 v1, -0x40800000

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 222
    return-void
.end method

.method public static getFlipMatrix(FFLcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;)Landroid/graphics/Matrix;
    .locals 3
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "type"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .prologue
    .line 226
    sget-object v2, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->HORIZONTAL:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne p2, v2, :cond_0

    .line 227
    invoke-static {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getHorizontalMatrix(F)Landroid/graphics/Matrix;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    .line 228
    :cond_0
    sget-object v2, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->VERTICAL:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne p2, v2, :cond_1

    .line 229
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getVerticalMatrix(F)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_1
    sget-object v2, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->BOTH:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne p2, v2, :cond_2

    .line 231
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getVerticalMatrix(F)Landroid/graphics/Matrix;

    move-result-object v0

    .line 232
    .local v0, "flipper":Landroid/graphics/Matrix;
    invoke-static {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getHorizontalMatrix(F)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    .line 235
    .end local v0    # "flipper":Landroid/graphics/Matrix;
    :cond_2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 236
    .local v1, "m":Landroid/graphics/Matrix;
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    move-object v0, v1

    .line 237
    goto :goto_0
.end method

.method protected static getHorizontalMatrix(F)Landroid/graphics/Matrix;
    .locals 3
    .param p0, "width"    # F

    .prologue
    .line 200
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 201
    .local v0, "flipHorizontalMatrix":Landroid/graphics/Matrix;
    const/high16 v1, -0x40800000

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 202
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 203
    return-object v0
.end method

.method protected static getVerticalMatrix(F)Landroid/graphics/Matrix;
    .locals 3
    .param p0, "height"    # F

    .prologue
    .line 213
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 214
    .local v0, "flipVerticalMatrix":Landroid/graphics/Matrix;
    const/high16 v1, 0x3f800000

    const/high16 v2, -0x40800000

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 215
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 216
    return-object v0
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->hasModifications()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    .end local p1    # "original":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 91
    .restart local p1    # "original":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mImageFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGeometry;

    invoke-virtual {v1, p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGeometry;->setGeometryMetadata(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;)V

    .line 92
    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mImageFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGeometry;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGeometry;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "m":Landroid/graphics/Bitmap;
    move-object p1, v0

    .line 93
    goto :goto_0
.end method

.method public buildGeometryMatrix(FFFFFF)Landroid/graphics/Matrix;
    .locals 5
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "scaling"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F
    .param p6, "rotation"    # F

    .prologue
    const/high16 v3, 0x40000000

    .line 358
    div-float v0, p1, v3

    .line 359
    .local v0, "dx0":F
    div-float v1, p2, v3

    .line 360
    .local v1, "dy0":F
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getFlipMatrix(FF)Landroid/graphics/Matrix;

    move-result-object v2

    .line 361
    .local v2, "m":Landroid/graphics/Matrix;
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 362
    invoke-virtual {v2, p6}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 363
    invoke-virtual {v2, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 364
    invoke-virtual {v2, p4, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 365
    return-object v2
.end method

.method public buildGeometryMatrix(FFFFFZ)Landroid/graphics/Matrix;
    .locals 7
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "scaling"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F
    .param p6, "onlyRotate"    # Z

    .prologue
    .line 371
    iget v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mRotation:F

    .line 372
    .local v6, "rot":F
    if-nez p6, :cond_0

    .line 373
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    add-float/2addr v6, v0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 375
    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->buildGeometryMatrix(FFFFFF)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public buildGeometryUIMatrix(FFF)Landroid/graphics/Matrix;
    .locals 7
    .param p1, "scaling"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 381
    .local v1, "w":F
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 382
    .local v2, "h":F
    const/4 v6, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->buildGeometryMatrix(FFFFFZ)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public buildTotalXform(FF[F)Landroid/graphics/Matrix;
    .locals 11
    .param p1, "bmWidth"    # F
    .param p2, "bmHeight"    # F
    .param p3, "displayCenter"    # [F

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 417
    .local v9, "rp":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getPreviewCropBounds()Landroid/graphics/RectF;

    move-result-object v8

    .line 419
    .local v8, "rc":Landroid/graphics/RectF;
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v10

    .line 420
    .local v10, "scale":F
    invoke-static {v8, v10}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v1

    .line 421
    .local v1, "scaledCrop":Landroid/graphics/RectF;
    invoke-static {v9, v10}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    .line 423
    .local v0, "scaledPhoto":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getRotation()F

    move-result v2

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getStraightenRotation()F

    move-result v3

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getFlipType()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v4

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v7

    .line 425
    .local v7, "m1":Landroid/graphics/Matrix;
    const/4 v2, 0x2

    new-array v6, v2, [F

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    aput v3, v6, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    aput v3, v6, v2

    .line 428
    .local v6, "cropCenter":[F
    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 430
    invoke-static {v7, v6, p3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V

    .line 431
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getStraightenRotation()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v7, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 432
    return-object v7
.end method

.method public cropFitsInPhoto(Landroid/graphics/RectF;)Z
    .locals 1
    .param p1, "cropBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    if-ne p0, p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v1

    .line 170
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 171
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 173
    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    .line 174
    .local v0, "d":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    iget v4, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mRotation:F

    iget v4, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mRotation:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    iget v4, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getCropBounds(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 123
    const/high16 v0, 0x3f800000

    .line 124
    .local v0, "scale":F
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v0

    .line 126
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getFlipMatrix(FF)Landroid/graphics/Matrix;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getFlipType()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v0

    .line 348
    .local v0, "type":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;
    invoke-static {p1, p2, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getFlipMatrix(FFLcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;)Landroid/graphics/Matrix;

    move-result-object v1

    return-object v1
.end method

.method public getFlipType()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    return-object v0
.end method

.method public getMatrixOriginalOrientation(IFF)Landroid/graphics/Matrix;
    .locals 8
    .param p1, "orientation"    # I
    .param p2, "originalWidth"    # F
    .param p3, "originalHeight"    # F

    .prologue
    const/high16 v7, 0x43870000

    const/high16 v6, 0x42b40000

    const/high16 v5, 0x3f800000

    const/high16 v4, -0x40800000

    const/high16 v3, 0x40000000

    .line 254
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 255
    .local v0, "imageRotation":Landroid/graphics/Matrix;
    packed-switch p1, :pswitch_data_0

    .line 295
    :goto_0
    return-object v0

    .line 257
    :pswitch_0
    div-float v1, p2, v3

    div-float v2, p3, v3

    invoke-virtual {v0, v6, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 258
    sub-float v1, p2, p3

    neg-float v1, v1

    div-float/2addr v1, v3

    sub-float v2, p3, p2

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 263
    :pswitch_1
    const/high16 v1, 0x43340000

    div-float v2, p2, v3

    div-float v3, p3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    .line 267
    :pswitch_2
    div-float v1, p2, v3

    div-float v2, p3, v3

    invoke-virtual {v0, v7, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 268
    sub-float v1, p2, p3

    neg-float v1, v1

    div-float/2addr v1, v3

    sub-float v2, p3, p2

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 273
    :pswitch_3
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 277
    :pswitch_4
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 281
    :pswitch_5
    div-float v1, p2, v3

    div-float v2, p3, v3

    invoke-virtual {v0, v6, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 282
    sub-float v1, p2, p3

    neg-float v1, v1

    div-float/2addr v1, v3

    sub-float v2, p3, p2

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 284
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 288
    :pswitch_6
    div-float v1, p2, v3

    div-float v2, p3, v3

    invoke-virtual {v0, v7, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 289
    sub-float v1, p2, p3

    neg-float v1, v1

    div-float/2addr v1, v3

    sub-float v2, p3, p2

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 291
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public getOriginalToScreen(ZFFFF)Landroid/graphics/Matrix;
    .locals 20
    .param p1, "rotate"    # Z
    .param p2, "originalWidth"    # F
    .param p3, "originalHeight"    # F
    .param p4, "viewWidth"    # F
    .param p5, "viewHeight"    # F

    .prologue
    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v16

    .line 301
    .local v16, "photoBounds":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getPreviewCropBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 302
    .local v9, "cropBounds":Landroid/graphics/RectF;
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v13

    .line 303
    .local v13, "imageWidth":F
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v11

    .line 305
    .local v11, "imageHeight":F
    invoke-static {}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getZoomOrientation()I

    move-result v15

    .line 306
    .local v15, "orientation":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getMatrixOriginalOrientation(IFF)Landroid/graphics/Matrix;

    move-result-object v12

    .line 308
    .local v12, "imageRotation":Landroid/graphics/Matrix;
    const/4 v5, 0x6

    if-eq v15, v5, :cond_0

    const/16 v5, 0x8

    if-eq v15, v5, :cond_0

    const/4 v5, 0x5

    if-eq v15, v5, :cond_0

    const/4 v5, 0x7

    if-ne v15, v5, :cond_1

    .line 312
    :cond_0
    move/from16 v19, p2

    .line 313
    .local v19, "tmp":F
    move/from16 p2, p3

    .line 314
    move/from16 p3, v19

    .line 317
    .end local v19    # "tmp":F
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v6

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v5, v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v17

    .line 319
    .local v17, "preScale":F
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v13, v11, v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v18

    .line 321
    .local v18, "scale":F
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getRotation()F

    move-result v5

    const/high16 v6, 0x42b40000

    div-float/2addr v5, v6

    float-to-int v5, v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 322
    move/from16 v0, p5

    move/from16 v1, p4

    invoke-static {v13, v11, v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v18

    .line 325
    :cond_2
    move/from16 v0, v18

    invoke-static {v9, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    .line 326
    .local v4, "scaledCrop":Landroid/graphics/RectF;
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v3

    .line 327
    .local v3, "scaledPhoto":Landroid/graphics/RectF;
    const/4 v5, 0x2

    new-array v8, v5, [F

    const/4 v5, 0x0

    const/high16 v6, 0x40000000

    div-float v6, p4, v6

    aput v6, v8, v5

    const/4 v5, 0x1

    const/high16 v6, 0x40000000

    div-float v6, p5, v6

    aput v6, v8, v5

    .line 330
    .local v8, "displayCenter":[F
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getRotation()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getStraightenRotation()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getFlipType()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v7

    invoke-static/range {v3 .. v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v14

    .line 332
    .local v14, "m1":Landroid/graphics/Matrix;
    const/4 v5, 0x2

    new-array v10, v5, [F

    const/4 v5, 0x0

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    aput v6, v10, v5

    const/4 v5, 0x1

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    aput v6, v10, v5

    .line 335
    .local v10, "cropCenter":[F
    invoke-virtual {v14, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 336
    invoke-static {v14, v10, v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getStraightenRotation()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v14, v5, v6, v7}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 338
    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 339
    move/from16 v0, v17

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 340
    invoke-virtual {v14, v12}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 342
    return-object v14
.end method

.method public getPhotoBounds()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getPreviewCropBounds()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mRotation:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    return v0
.end method

.method public getStraightenRotation()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    return v0
.end method

.method public hasModifications()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 67
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    const/high16 v4, 0x3f800000

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v2

    .line 70
    :cond_1
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mRotation:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    .line 73
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->roundNearest(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    .line 77
    .local v0, "cropBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->roundNearest(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v1

    .line 78
    .local v1, "photoBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    sget-object v4, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasSwitchedWidthHeight()Z
    .locals 2

    .prologue
    .line 352
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mRotation:F

    const/high16 v1, 0x42b40000

    div-float/2addr v0, v1

    float-to-int v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 181
    const/16 v0, 0x17

    .line 182
    .local v0, "result":I
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mRotation:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x2c9

    .line 183
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 184
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 185
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 186
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 187
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 188
    return v0
.end method

.method public set(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;)V
    .locals 2
    .param p1, "g"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    .prologue
    .line 97
    iget v0, p1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    .line 98
    iget v0, p1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mRotation:F

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mRotation:F

    .line 99
    iget v0, p1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    .line 100
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 101
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 102
    iget-object v0, p1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 103
    iget-object v0, p1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mBounds:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mBounds:Landroid/graphics/RectF;

    .line 104
    return-void
.end method

.method public setCropBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "newCropBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 156
    return-void
.end method

.method public setFlipType(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;)V
    .locals 0
    .param p1, "flip"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 144
    return-void
.end method

.method public setPhotoBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "newPhotoBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 160
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 147
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mRotation:F

    .line 148
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 139
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    .line 140
    return-void
.end method

.method public setStraightenRotation(F)V
    .locals 0
    .param p1, "straighten"    # F

    .prologue
    .line 151
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    .line 152
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mRotation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",straighten="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",cropRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",photoRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
