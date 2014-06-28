.class public Lcom/android/mms/model/ImageModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "ImageModel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "ImageModel"

.field public static final THUMBNAIL_BOUNDS_LIMIT:I = 0x140


# instance fields
.field private mBrief:Z

.field private mHeight:I

.field private volatile mIsLocation:Z

.field private mPileViewBitmapCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "region"    # Lcom/android/mms/model/RegionModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 75
    const-string v0, "img"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 69
    iput-boolean v1, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/mms/model/ImageModel;->mIsLocation:Z

    .line 71
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mPileViewBitmapCache:Ljava/lang/ref/SoftReference;

    .line 76
    invoke-direct {p0, p2}, Lcom/android/mms/model/ImageModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "region"    # Lcom/android/mms/model/RegionModel;
    .param p4, "isLocation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 82
    const-string v0, "img"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 69
    iput-boolean v1, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/mms/model/ImageModel;->mIsLocation:Z

    .line 71
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mPileViewBitmapCache:Ljava/lang/ref/SoftReference;

    .line 83
    invoke-direct {p0, p2}, Lcom/android/mms/model/ImageModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    .line 85
    iput-boolean p4, p0, Lcom/android/mms/model/ImageModel;->mIsLocation:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "region"    # Lcom/android/mms/model/RegionModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 90
    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 69
    iput-boolean v7, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    .line 70
    iput-boolean v7, p0, Lcom/android/mms/model/ImageModel;->mIsLocation:Z

    .line 71
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mPileViewBitmapCache:Ljava/lang/ref/SoftReference;

    .line 92
    iget-boolean v0, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    invoke-direct {p0, v0}, Lcom/android/mms/model/ImageModel;->decodeImageBounds(Z)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;[B)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "region"    # Lcom/android/mms/model/RegionModel;
    .param p6, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 97
    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/android/mms/model/RegionModel;)V

    .line 69
    iput-boolean v7, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    .line 70
    iput-boolean v7, p0, Lcom/android/mms/model/ImageModel;->mIsLocation:Z

    .line 71
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mPileViewBitmapCache:Ljava/lang/ref/SoftReference;

    .line 99
    invoke-virtual {p0, p4}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    .line 101
    iget-boolean v0, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    invoke-direct {p0, v0}, Lcom/android/mms/model/ImageModel;->decodeImageBounds(Z)V

    .line 102
    return-void
.end method

.method private createThumbnailBitmap(IILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 302
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 303
    .local v15, "outWidth":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 305
    .local v14, "outHeight":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v15, v14}, Lcom/android/mms/model/ImageModel;->getSampleSize(IIII)I

    move-result v17

    .line 311
    .local v17, "s":I
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 312
    .local v12, "options":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v17

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 314
    const/4 v11, 0x0

    .line 316
    .local v11, "input":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 317
    const/4 v4, 0x0

    iput-boolean v4, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 318
    const/4 v4, 0x0

    invoke-static {v11, v4, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 319
    .local v3, "bmp":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/sonyericsson/conversations/util/ExifUtil;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v13

    .line 321
    .local v13, "orientation":I
    invoke-static {v13}, Lcom/sonyericsson/conversations/util/ExifUtil;->getTransformationMatrix(I)Landroid/graphics/Matrix;

    move-result-object v8

    .line 322
    .local v8, "m":Landroid/graphics/Matrix;
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_0

    .line 323
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 325
    .local v16, "rotatedBmp":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_0

    .line 326
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    move-object/from16 v3, v16

    .line 341
    .end local v8    # "m":Landroid/graphics/Matrix;
    .end local v13    # "orientation":I
    .end local v16    # "rotatedBmp":Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v11, :cond_1

    .line 343
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 338
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v3

    .line 332
    :catch_0
    move-exception v10

    .line 333
    .local v10, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v10, v1}, Lcom/android/mms/model/ImageModel;->logImageModelException(Ljava/lang/Exception;Landroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    const/4 v3, 0x0

    .line 341
    if-eqz v11, :cond_1

    .line 343
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 344
    :catch_1
    move-exception v10

    .line 345
    .local v10, "e":Ljava/io/IOException;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v10, v1}, Lcom/android/mms/model/ImageModel;->logImageModelException(Ljava/lang/Exception;Landroid/net/Uri;)V

    goto :goto_0

    .line 336
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v10

    .line 337
    .local v10, "e":Ljava/lang/OutOfMemoryError;
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v10, v1}, Lcom/android/mms/model/ImageModel;->logImageModelException(Ljava/lang/Error;Landroid/net/Uri;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 338
    const/4 v3, 0x0

    .line 341
    if-eqz v11, :cond_1

    .line 343
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 344
    :catch_3
    move-exception v10

    goto :goto_1

    .line 341
    .end local v10    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    if-eqz v11, :cond_2

    .line 343
    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 341
    :cond_2
    :goto_2
    throw v4

    .line 344
    :catch_4
    move-exception v10

    .line 345
    .local v10, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v10, v1}, Lcom/android/mms/model/ImageModel;->logImageModelException(Ljava/lang/Exception;Landroid/net/Uri;)V

    goto :goto_2

    .line 344
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v3    # "bmp":Landroid/graphics/Bitmap;
    :catch_5
    move-exception v10

    goto :goto_1
.end method

.method private createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "thumbnailBoundsLimit"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 298
    invoke-direct {p0, p1, p1, p2}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmap(IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private createThumbnailBitmapForBriefView(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 19
    .param p1, "thumbnailBoundsLimit"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/MediaModel;->getData()[B

    move-result-object v9

    .line 245
    .local v9, "bytes":[B
    if-eqz v9, :cond_5

    array-length v3, v9

    if-lez v3, :cond_5

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/ImageModel;->mWidth:I

    move/from16 v16, v0

    .line 247
    .local v16, "outWidth":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 249
    .local v15, "outHeight":I
    const/16 v18, 0x1

    .line 250
    .local v18, "s":I
    :goto_0
    div-int v3, v16, v18

    move/from16 v0, p1

    if-gt v3, v0, :cond_0

    div-int v3, v15, v18

    move/from16 v0, p1

    if-le v3, v0, :cond_1

    .line 251
    :cond_0
    mul-int/lit8 v18, v18, 0x2

    goto :goto_0

    .line 256
    :cond_1
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 257
    .local v13, "options":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v18

    iput v0, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 259
    const/4 v11, 0x0

    .line 261
    .local v11, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .end local v11    # "input":Ljava/io/InputStream;
    .local v12, "input":Ljava/io/InputStream;
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 263
    const/4 v3, 0x0

    invoke-static {v12, v3, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 264
    .local v2, "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/MediaModel;->getData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/conversations/util/ExifUtil;->getImageOrientation([B)I

    move-result v14

    .line 266
    .local v14, "orientation":I
    if-eqz v14, :cond_2

    .line 267
    invoke-static {v14}, Lcom/sonyericsson/conversations/util/ExifUtil;->getTransformationMatrix(I)Landroid/graphics/Matrix;

    move-result-object v7

    .line 268
    .local v7, "m":Landroid/graphics/Matrix;
    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_2

    .line 269
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 271
    .local v17, "rotatedBmp":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_2

    .line 272
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 273
    move-object/from16 v2, v17

    .line 284
    .end local v7    # "m":Landroid/graphics/Matrix;
    .end local v14    # "orientation":I
    .end local v17    # "rotatedBmp":Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v12, :cond_3

    .line 286
    :try_start_2
    invoke-virtual {v12}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 293
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v12    # "input":Ljava/io/InputStream;
    .end local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v15    # "outHeight":I
    .end local v16    # "outWidth":I
    .end local v18    # "s":I
    :cond_3
    :goto_1
    return-object v2

    .line 279
    .restart local v11    # "input":Ljava/io/InputStream;
    .restart local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v15    # "outHeight":I
    .restart local v16    # "outWidth":I
    .restart local v18    # "s":I
    :catch_0
    move-exception v10

    .line 280
    .local v10, "e":Ljava/lang/OutOfMemoryError;
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lcom/android/mms/model/ImageModel;->logImageModelException(Ljava/lang/Error;Landroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    const/4 v2, 0x0

    .line 284
    if-eqz v11, :cond_3

    .line 286
    :try_start_4
    invoke-virtual {v11}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 287
    :catch_1
    move-exception v10

    .line 288
    .end local v11    # "input":Ljava/io/InputStream;
    .local v10, "e":Ljava/io/IOException;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lcom/android/mms/model/ImageModel;->logImageModelException(Ljava/lang/Exception;Landroid/net/Uri;)V

    goto :goto_1

    .line 284
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v11    # "input":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v11, :cond_4

    .line 286
    :try_start_5
    invoke-virtual {v11}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 284
    :cond_4
    :goto_5
    throw v3

    .line 293
    .end local v11    # "input":Ljava/io/InputStream;
    .end local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v15    # "outHeight":I
    .end local v16    # "outWidth":I
    .end local v18    # "s":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 287
    .restart local v11    # "input":Ljava/io/InputStream;
    .restart local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v15    # "outHeight":I
    .restart local v16    # "outWidth":I
    .restart local v18    # "s":I
    :catch_2
    move-exception v10

    .line 288
    .restart local v10    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lcom/android/mms/model/ImageModel;->logImageModelException(Ljava/lang/Exception;Landroid/net/Uri;)V

    goto :goto_5

    .line 287
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "input":Ljava/io/InputStream;
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    .restart local v12    # "input":Ljava/io/InputStream;
    :catch_3
    move-exception v10

    goto :goto_3

    .line 284
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v3

    move-object v11, v12

    .end local v12    # "input":Ljava/io/InputStream;
    .restart local v11    # "input":Ljava/io/InputStream;
    goto :goto_4

    .line 279
    .end local v11    # "input":Ljava/io/InputStream;
    .restart local v12    # "input":Ljava/io/InputStream;
    :catch_4
    move-exception v10

    move-object v11, v12

    .end local v12    # "input":Ljava/io/InputStream;
    .restart local v11    # "input":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private decodeImageBounds(Z)V
    .locals 3
    .param p1, "isBrief"    # Z

    .prologue
    .line 126
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 127
    .local v0, "uriImage":Lcom/android/mms/ui/UriImage;
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 128
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 133
    return-void
.end method

.method private getSampleSize(IIII)I
    .locals 4
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .prologue
    .line 362
    const/4 v2, 0x1

    .line 363
    .local v2, "s":I
    sub-int v0, p4, p2

    .line 364
    .local v0, "diffHeight":I
    sub-int v1, p3, p1

    .line 366
    .local v1, "diffWidth":I
    if-gez v1, :cond_0

    if-gez v0, :cond_0

    .line 367
    const/4 v2, 0x1

    .line 373
    :goto_0
    return v2

    .line 368
    :cond_0
    if-le v1, v0, :cond_1

    .line 369
    mul-int/lit8 v3, p3, 0x2

    div-int/2addr v3, p1

    add-int/lit8 v2, v3, -0x1

    goto :goto_0

    .line 371
    :cond_1
    mul-int/lit8 v3, p4, 0x2

    div-int/2addr v3, p2

    add-int/lit8 v2, v3, -0x1

    goto :goto_0
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 107
    .local v0, "uriImage":Lcom/android/mms/ui/UriImage;
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Type of media is unknown."

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 112
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 113
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 114
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    if-gez v1, :cond_2

    .line 115
    :cond_1
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Illegal Size."

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_2
    return-void
.end method

.method private logImageModelException(Ljava/lang/Error;Landroid/net/Uri;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Error;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 382
    const-string v0, "ImageModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " URI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [W,H]=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    return-void
.end method

.method private logImageModelException(Ljava/lang/Exception;Landroid/net/Uri;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 377
    const-string v0, "ImageModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " URI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [W,H]=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    return-void
.end method


# virtual methods
.method protected checkContentRestriction()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 184
    .local v0, "cr":Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    .line 185
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/mms/model/ContentRestriction;->checkResolution(II)V

    .line 186
    return-void
.end method

.method public createThumbnail()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    const/high16 v2, 0x43a00000

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/MediaUtil;->dp2px(Landroid/content/Context;F)F

    move-result v1

    float-to-int v0, v1

    .line 225
    .local v0, "matchLimit":I
    iget-boolean v1, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmapForBriefView(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 228
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/android/mms/model/ImageModel;->createThumbnail(II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public createThumbnail(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmap(IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapForPileView(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "pileViewThumbBoundsLimit"    # I

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mPileViewBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 235
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 237
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/mms/model/ImageModel;->mPileViewBitmapCache:Ljava/lang/ref/SoftReference;

    .line 239
    :cond_0
    return-object v0
.end method

.method public getDimensions()Lcom/sonyericsson/conversations/model/Dimension;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Lcom/sonyericsson/conversations/model/Dimension;

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/model/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    return v0
.end method

.method public getImageThumbnailAsync(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;Lcom/sonyericsson/conversations/model/Dimension;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "softCallback"    # Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;
    .param p3, "parentDim"    # Lcom/sonyericsson/conversations/model/Dimension;
    .param p4, "orientation"    # I

    .prologue
    .line 203
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchImageThumbnailTask;

    invoke-direct {v0, p2, p0, p3, p4}, Lcom/sonyericsson/conversations/ui/util/tasks/FetchImageThumbnailTask;-><init>(Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;Lcom/android/mms/model/ImageModel;Lcom/sonyericsson/conversations/model/Dimension;I)V

    .line 205
    .local v0, "f":Lcom/sonyericsson/conversations/ui/util/tasks/FetchImageThumbnailTask;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 206
    return-void
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    return v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 5
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    iput-boolean v4, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 143
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 145
    .local v0, "action":Lcom/android/mms/model/MediaModel$MediaAction;
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 146
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 152
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/mms/model/MediaModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 155
    .end local v0    # "action":Lcom/android/mms/model/MediaModel$MediaAction;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 156
    return-void

    .line 139
    :cond_3
    iget-short v1, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    if-eq v1, v4, :cond_0

    .line 140
    iput-boolean v3, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0

    .line 147
    .restart local v0    # "action":Lcom/android/mms/model/MediaModel$MediaAction;
    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 148
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    goto :goto_1

    .line 149
    :cond_5
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    goto :goto_1
.end method

.method public isBrief()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    return v0
.end method

.method public declared-synchronized isLocation()Z
    .locals 2

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/model/ImageModel;->mIsLocation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    const-string v1, "location_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocation(Z)V
    .locals 1
    .param p1, "isLocation"    # Z

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/mms/model/ImageModel;->mIsLocation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
