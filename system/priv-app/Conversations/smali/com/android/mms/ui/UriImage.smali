.class public Lcom/android/mms/ui/UriImage;
.super Ljava/lang/Object;
.source "UriImage.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final LOCAL_LOGV:Z = true

.field private static final NUMBER_OF_RESIZE_ATTEMPTS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "UriImage"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private mIsBrief:Z

.field private mPath:Ljava/lang/String;

.field private mSrc:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isBrief"    # Z

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/UriImage;->mIsBrief:Z

    .line 78
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 79
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 82
    :cond_1
    iput-boolean p3, p0, Lcom/android/mms/ui/UriImage;->mIsBrief:Z

    .line 83
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 90
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const/16 v2, 0x20

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->decodeBoundsInfo()V

    .line 102
    return-void

    .line 86
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromFile(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private decodeBoundsInfo()V
    .locals 9

    .prologue
    .line 174
    const/4 v2, 0x0

    .line 176
    .local v2, "input":Ljava/io/InputStream;
    :try_start_0
    iget-boolean v6, p0, Lcom/android/mms/ui/UriImage;->mIsBrief:Z

    if-eqz v6, :cond_0

    .line 177
    iget-object v6, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v5

    .line 178
    .local v5, "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    iget-object v6, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->loadPartForBriefImage(Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 179
    .local v0, "briefImagePart":Lcom/google/android/mms/pdu/PduPart;
    if-eqz v0, :cond_0

    .line 180
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v2    # "input":Ljava/io/InputStream;
    .local v3, "input":Ljava/io/InputStream;
    move-object v2, v3

    .line 183
    .end local v0    # "briefImagePart":Lcom/google/android/mms/pdu/PduPart;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v5    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .restart local v2    # "input":Ljava/io/InputStream;
    :cond_0
    if-nez v2, :cond_1

    .line 184
    iget-object v6, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 187
    :cond_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 188
    .local v4, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 189
    const/4 v6, 0x0

    invoke-static {v2, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 190
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v6, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 191
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v6, p0, Lcom/android/mms/ui/UriImage;->mHeight:I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    if-eqz v2, :cond_2

    .line 200
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    .end local v4    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :goto_0
    return-void

    .line 201
    .restart local v4    # "opt":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "UriImage"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 192
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "opt":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v6

    .line 198
    if-eqz v2, :cond_2

    .line 200
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 201
    :catch_2
    move-exception v1

    .line 203
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "UriImage"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 194
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 196
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v6, "UriImage"

    const-string v7, "IOException caught while opening stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    if-eqz v2, :cond_2

    .line 200
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 201
    :catch_4
    move-exception v1

    .line 203
    const-string v6, "UriImage"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 198
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_3

    .line 200
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 204
    :cond_3
    :goto_1
    throw v6

    .line 201
    :catch_5
    move-exception v1

    .line 203
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "UriImage"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getResizedImageData(III)[B
    .locals 26
    .param p1, "widthLimit"    # I
    .param p2, "heightLimit"    # I
    .param p3, "byteLimit"    # I

    .prologue
    .line 252
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    move/from16 v19, v0

    .line 253
    .local v19, "outWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    move/from16 v18, v0

    .line 255
    .local v18, "outHeight":I
    const/16 v23, 0x1

    .line 256
    .local v23, "scaleFactor":I
    :goto_0
    div-int v3, v19, v23

    move/from16 v0, p1

    if-gt v3, v0, :cond_0

    div-int v3, v18, v23

    move/from16 v0, p2

    if-le v3, v0, :cond_1

    .line 257
    :cond_0
    mul-int/lit8 v23, v23, 0x2

    goto :goto_0

    .line 261
    :cond_1
    const-string v3, "UriImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResizedImageData: wlimit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hlimit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sizeLimit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", initialScaleFactor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v11, 0x0

    .line 269
    .local v11, "input":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 270
    .local v16, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x1

    .line 271
    .local v9, "attempts":I
    const/16 v22, 0x0

    .line 272
    .local v22, "rotatedBmp":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 273
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v23

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 275
    const/16 v20, 0x50

    .line 276
    .local v20, "quality":I
    const/4 v3, 0x0

    invoke-static {v11, v3, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 277
    .local v2, "b":Landroid/graphics/Bitmap;
    if-nez v2, :cond_3

    .line 278
    const/4 v3, 0x0

    .line 374
    if-eqz v11, :cond_2

    .line 376
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 379
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v20    # "quality":I
    :cond_2
    :goto_1
    return-object v3

    .line 377
    .restart local v2    # "b":Landroid/graphics/Bitmap;
    .restart local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v20    # "quality":I
    :catch_0
    move-exception v10

    .line 378
    .local v10, "e":Ljava/io/IOException;
    const-string v4, "UriImage"

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 280
    .end local v10    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v7, 0x0

    .line 281
    .local v7, "m":Landroid/graphics/Matrix;
    const/4 v13, 0x0

    .line 282
    .local v13, "needRotate":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_4

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/util/ExifUtil;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v15

    .line 284
    .local v15, "orientation":I
    invoke-static {v15}, Lcom/sonyericsson/conversations/util/ExifUtil;->getTransformationMatrix(I)Landroid/graphics/Matrix;

    move-result-object v7

    .line 285
    if-eqz v7, :cond_4

    .line 286
    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_6

    const/4 v13, 0x1

    .line 290
    .end local v15    # "orientation":I
    :cond_4
    :goto_2
    const/16 v20, 0x50

    .line 293
    :try_start_3
    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p1

    if-gt v3, v0, :cond_5

    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    if-le v3, v0, :cond_7

    .line 296
    :cond_5
    div-int v25, v19, v23

    .line 297
    .local v25, "scaledWidth":I
    div-int v24, v18, v23

    .line 300
    .local v24, "scaledHeight":I
    const-string v3, "UriImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResizedImageData: retry scaling using Bitmap.createScaledBitmap: w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    div-int v3, v19, v23

    div-int v4, v18, v23

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 307
    if-nez v2, :cond_7

    .line 308
    const/4 v3, 0x0

    .line 374
    if-eqz v11, :cond_2

    .line 376
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 377
    :catch_1
    move-exception v10

    .line 378
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v4, "UriImage"

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 286
    .end local v10    # "e":Ljava/io/IOException;
    .end local v24    # "scaledHeight":I
    .end local v25    # "scaledWidth":I
    .restart local v15    # "orientation":I
    :cond_6
    const/4 v13, 0x0

    goto :goto_2

    .line 317
    .end local v15    # "orientation":I
    :cond_7
    :try_start_5
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 318
    .end local v16    # "os":Ljava/io/ByteArrayOutputStream;
    .local v17, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_6
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 319
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    .line 320
    .local v12, "jpgFileSize":I
    move/from16 v0, p3

    if-le v12, v0, :cond_8

    .line 321
    mul-int v3, v20, p3

    div-int v21, v3, v12

    .line 322
    .local v21, "reducedQuality":I
    const/16 v3, 0x32

    move/from16 v0, v21

    if-lt v0, v3, :cond_8

    .line 323
    move/from16 v20, v21

    .line 326
    const-string v3, "UriImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResizedImageData: compress(2) w/ quality="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 330
    .end local v17    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v16    # "os":Ljava/io/ByteArrayOutputStream;
    :try_start_7
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v17, v16

    .line 333
    .end local v16    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v21    # "reducedQuality":I
    .restart local v17    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_8
    if-eqz v13, :cond_10

    if-eqz v17, :cond_10

    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    move/from16 v0, p3

    if-gt v3, v0, :cond_10

    .line 334
    if-eqz v2, :cond_9

    .line 335
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 338
    :cond_9
    if-eqz v22, :cond_a

    .line 339
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 340
    move-object/from16 v2, v22

    .line 341
    const/4 v13, 0x0

    .line 343
    :cond_a
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 344
    .end local v17    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v16    # "os":Ljava/io/ByteArrayOutputStream;
    :try_start_9
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 353
    .end local v12    # "jpgFileSize":I
    :goto_3
    :try_start_a
    const-string v4, "UriImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attempt="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v16, :cond_d

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " width="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int v5, v19, v23

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " height="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int v5, v18, v23

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " scaleFactor="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " quality="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    mul-int/lit8 v23, v23, 0x2

    .line 362
    add-int/lit8 v9, v9, 0x1

    .line 363
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v3

    move/from16 v0, p3

    if-le v3, v0, :cond_c

    :cond_b
    const/4 v3, 0x4

    if-lt v9, v3, :cond_4

    .line 365
    :cond_c
    if-nez v16, :cond_e

    const/4 v3, 0x0

    .line 374
    :goto_5
    if-eqz v11, :cond_2

    .line 376
    :try_start_b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_1

    .line 377
    :catch_2
    move-exception v10

    .line 378
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v4, "UriImage"

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 346
    .end local v10    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v10

    .line 347
    .local v10, "e":Ljava/lang/OutOfMemoryError;
    :goto_6
    :try_start_c
    const-string v3, "UriImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResizedImageData - image too big (OutOfMemoryError), will try  with smaller scale factor, cur scale factor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    .line 366
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v7    # "m":Landroid/graphics/Matrix;
    .end local v10    # "e":Ljava/lang/OutOfMemoryError;
    .end local v13    # "needRotate":Z
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v20    # "quality":I
    :catch_4
    move-exception v10

    .line 367
    .local v10, "e":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_d
    const-string v3, "UriImage"

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 368
    const/4 v3, 0x0

    .line 374
    if-eqz v11, :cond_2

    .line 376
    :try_start_e
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_1

    .line 377
    :catch_5
    move-exception v10

    .line 378
    .local v10, "e":Ljava/io/IOException;
    const-string v4, "UriImage"

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 353
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v2    # "b":Landroid/graphics/Bitmap;
    .restart local v7    # "m":Landroid/graphics/Matrix;
    .restart local v13    # "needRotate":Z
    .restart local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v20    # "quality":I
    :cond_d
    :try_start_f
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    goto/16 :goto_4

    .line 365
    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v3

    goto :goto_5

    .line 369
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v7    # "m":Landroid/graphics/Matrix;
    .end local v13    # "needRotate":Z
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v20    # "quality":I
    :catch_6
    move-exception v10

    .line 370
    .local v10, "e":Ljava/lang/OutOfMemoryError;
    :try_start_10
    const-string v3, "UriImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResizedImageData - image too big (OutOfMemoryError), will try  with smaller scale factor, cur scale factor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 372
    const/4 v3, 0x0

    .line 374
    if-eqz v11, :cond_2

    .line 376
    :try_start_11
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_1

    .line 377
    :catch_7
    move-exception v10

    .line 378
    .local v10, "e":Ljava/io/IOException;
    const-string v4, "UriImage"

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 374
    .end local v10    # "e":Ljava/io/IOException;
    .end local v16    # "os":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_f

    .line 376
    :try_start_12
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    .line 379
    :cond_f
    :goto_8
    throw v3

    .line 377
    :catch_8
    move-exception v10

    .line 378
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v4, "UriImage"

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 366
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v2    # "b":Landroid/graphics/Bitmap;
    .restart local v7    # "m":Landroid/graphics/Matrix;
    .restart local v13    # "needRotate":Z
    .restart local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v17    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v20    # "quality":I
    :catch_9
    move-exception v10

    move-object/from16 v16, v17

    .end local v17    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v16    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 346
    .end local v16    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_a
    move-exception v10

    move-object/from16 v16, v17

    .end local v17    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v16    # "os":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_6

    .end local v16    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "jpgFileSize":I
    .restart local v17    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_10
    move-object/from16 v16, v17

    .end local v17    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v16    # "os":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_3
.end method

.method private initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 110
    const/4 v11, 0x0

    .line 111
    .local v11, "part":Lcom/google/android/mms/pdu/PduPart;
    iget-boolean v0, p0, Lcom/android/mms/ui/UriImage;->mIsBrief:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v12

    .line 114
    .local v12, "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :try_start_0
    invoke-virtual {v12, p2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->loadPartForBriefImage(Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduPart;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 118
    if-eqz v11, :cond_0

    .line 119
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    .line 120
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 123
    .end local v12    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :cond_0
    if-nez v11, :cond_3

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 127
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns null result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    .end local v7    # "c":Landroid/database/Cursor;
    .restart local v12    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :catch_0
    move-exception v8

    .line 116
    .local v8, "e":Lcom/google/android/mms/MmsException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 132
    .end local v8    # "e":Lcom/google/android/mms/MmsException;
    .end local v12    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :catch_1
    move-exception v8

    .line 166
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v0, "UriImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFromContentUri couldn\'t load image uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 171
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :goto_0
    return-void

    .line 137
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_4
    :try_start_3
    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v10

    .line 138
    .local v10, "isDocumentDownload":Z
    const/4 v9, 0x0

    .line 139
    .local v9, "filePath":Ljava/lang/String;
    if-nez v10, :cond_7

    invoke-static {p2}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 140
    const-string v0, "fn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 141
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 144
    :cond_5
    const-string v0, "ct"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 164
    :cond_6
    :goto_1
    iput-object v9, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 146
    :cond_7
    :try_start_4
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 147
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v9

    .line 150
    :cond_8
    :try_start_5
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 158
    :goto_2
    :try_start_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    const-string v0, "_display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 151
    :catch_2
    move-exception v8

    .line 156
    .restart local v8    # "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "mimetype"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 168
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "filePath":Ljava/lang/String;
    .end local v10    # "isDocumentDownload":Z
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private initFromFile(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 105
    invoke-static {p2}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeTypeFromFileUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 106
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    return v0
.end method

.method public getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    .locals 8
    .param p1, "widthLimit"    # I
    .param p2, "heightLimit"    # I
    .param p3, "byteLimit"    # I

    .prologue
    .line 226
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 228
    .local v2, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/UriImage;->getResizedImageData(III)[B

    move-result-object v1

    .line 229
    .local v1, "data":[B
    if-nez v1, :cond_0

    .line 231
    const-string v6, "UriImage"

    const-string v7, "Resize image failed."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v2, 0x0

    .line 246
    .end local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    :goto_0
    return-object v2

    .line 236
    .restart local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 237
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 238
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "src":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 240
    .local v5, "srcBytes":[B
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 241
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 242
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 243
    .local v3, "period":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 244
    .local v0, "contentId":[B
    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_0

    .end local v0    # "contentId":[B
    :cond_1
    move-object v0, v5

    .line 243
    goto :goto_1
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    return v0
.end method
