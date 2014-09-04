.class public Lcom/sonymobile/china/collage/utils/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/collage/utils/ImageUtils$ScaleMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final JPG_IMAGE_EXT:Ljava/lang/String; = ".jpg"

.field private static final JPG_IMAGE_QUALITY:I = 0x5a

.field private static final PREFIX_FILE_NAME:Ljava/lang/String; = "collage-"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/sonymobile/china/collage/utils/ImageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/utils/ImageUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static convertBitmap(Landroid/content/Context;Landroid/net/Uri;IILcom/sonymobile/china/collage/utils/ImageUtils$ScaleMode;)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I
    .param p4, "mode"    # Lcom/sonymobile/china/collage/utils/ImageUtils$ScaleMode;

    .prologue
    .line 237
    const/4 v12, 0x0

    .line 241
    .local v12, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 242
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 243
    .local v14, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 244
    const/4 v4, 0x0

    invoke-static {v12, v4, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 245
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 246
    const/16 v16, 0x1

    .line 247
    .local v16, "resizeFactor":I
    iget v4, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 248
    .local v13, "longestSide":I
    int-to-double v4, v13

    move/from16 v0, p3

    int-to-double v6, v0

    div-double v10, v4, v6

    .line 249
    .local v10, "initialFactor":D
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v16, v0

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 253
    move/from16 v0, v16

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 254
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v14, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 255
    const/4 v4, 0x0

    iput-boolean v4, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 256
    const/4 v4, 0x0

    invoke-static {v12, v4, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 258
    .local v3, "bmp":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 260
    invoke-static/range {p0 .. p1}, Lcom/sonymobile/china/collage/utils/ExifUtil;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v15

    .line 261
    .local v15, "orientation":I
    invoke-static {v15}, Lcom/sonymobile/china/collage/utils/ExifUtil;->getTransformationMatrix(I)Landroid/graphics/Matrix;

    move-result-object v8

    .line 262
    .local v8, "m":Landroid/graphics/Matrix;
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_0

    .line 263
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 265
    .local v17, "rotatedBmp":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_0

    .line 266
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 267
    move-object/from16 v3, v17

    .line 272
    .end local v17    # "rotatedBmp":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    move/from16 v0, p2

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 273
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 276
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v3, v0, v1, v2}, Lcom/sonymobile/china/collage/utils/ImageUtils;->getScaledBitmap(Landroid/graphics/Bitmap;IILcom/sonymobile/china/collage/utils/ImageUtils$ScaleMode;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 288
    .end local v8    # "m":Landroid/graphics/Matrix;
    .end local v15    # "orientation":I
    :cond_1
    if-eqz v12, :cond_2

    .line 290
    :try_start_1
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 299
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v10    # "initialFactor":D
    .end local v13    # "longestSide":I
    .end local v14    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v16    # "resizeFactor":I
    :cond_2
    :goto_0
    return-object v3

    .line 279
    :catch_0
    move-exception v4

    .line 288
    if-eqz v12, :cond_3

    .line 290
    :try_start_2
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 299
    :cond_3
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 283
    :catch_1
    move-exception v4

    .line 288
    if-eqz v12, :cond_3

    .line 290
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 291
    :catch_2
    move-exception v4

    goto :goto_1

    .line 288
    :catchall_0
    move-exception v4

    if-eqz v12, :cond_4

    .line 290
    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 295
    :cond_4
    :goto_2
    throw v4

    .line 291
    .restart local v3    # "bmp":Landroid/graphics/Bitmap;
    .restart local v10    # "initialFactor":D
    .restart local v13    # "longestSide":I
    .restart local v14    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v16    # "resizeFactor":I
    :catch_3
    move-exception v4

    goto :goto_0

    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v10    # "initialFactor":D
    .end local v13    # "longestSide":I
    .end local v14    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v16    # "resizeFactor":I
    :catch_4
    move-exception v4

    goto :goto_1

    :catch_5
    move-exception v5

    goto :goto_2
.end method

.method public static createInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 199
    const/4 v3, 0x0

    .line 202
    .local v3, "is":Ljava/io/InputStream;
    if-eqz p2, :cond_0

    .line 203
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    move-object v3, v4

    .line 209
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_0
    if-nez v3, :cond_1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 210
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_1
    move-object v5, v3

    .line 220
    :goto_0
    return-object v5

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/io/FileNotFoundException;
    move-object v0, p2

    .line 214
    .local v0, "badName":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 215
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_2
    sget-object v5, Lcom/sonymobile/china/collage/utils/ImageUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create input stream for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static decodeImage(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v1, 0x0

    .line 102
    if-nez p0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v1

    .line 106
    :cond_1
    const/4 v1, 0x0

    .line 109
    .local v1, "result":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 111
    if-eqz p0, :cond_0

    .line 113
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/sonymobile/china/collage/utils/ImageUtils;->TAG:Ljava/lang/String;

    const-string v3, "Failed to close file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz p0, :cond_2

    .line 113
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    :cond_2
    :goto_1
    throw v2

    .line 114
    :catch_1
    move-exception v0

    .line 115
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/sonymobile/china/collage/utils/ImageUtils;->TAG:Ljava/lang/String;

    const-string v4, "Failed to close file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static deleteRecursively(Ljava/lang/String;)V
    .locals 7
    .param p0, "dirName"    # Ljava/lang/String;

    .prologue
    .line 387
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .local v3, "dir":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 390
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 391
    .local v2, "childs":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 392
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 393
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/china/collage/utils/ImageUtils;->deleteRecursively(Ljava/lang/String;)V

    .line 392
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "childs":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 403
    :cond_1
    return-void
.end method

.method public static getBackgroundPics(Landroid/content/Context;Landroid/net/Uri;)[Landroid/graphics/Bitmap;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 548
    const/4 v8, 0x2

    new-array v15, v8, [Landroid/graphics/Bitmap;

    .line 549
    .local v15, "result":[Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 550
    .local v14, "length":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14, v14}, Lcom/sonymobile/china/collage/utils/ImageUtils;->getBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 555
    .local v19, "src":Landroid/graphics/Bitmap;
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-object v15

    .line 558
    :cond_1
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 559
    .local v21, "srcW":I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 564
    .local v20, "srcH":I
    const/high16 v10, 0x3f400000

    .line 565
    .local v10, "SCALE":F
    const/4 v11, 0x2

    .line 567
    .local v11, "SIZE_BUFFER":I
    const/4 v12, 0x0

    .line 568
    .local v12, "bitmapH":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 570
    .local v13, "bitmapV":Landroid/graphics/Bitmap;
    move v6, v14

    .line 571
    .local v6, "dstW":I
    int-to-float v8, v14

    const/high16 v9, 0x3f400000

    mul-float/2addr v8, v9

    float-to-int v7, v8

    .line 573
    .local v7, "dstH":I
    sub-int v8, v21, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_4

    sub-int v8, v20, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_4

    .line 574
    move-object/from16 v12, v19

    .line 614
    :cond_2
    :goto_1
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 615
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 616
    int-to-float v8, v14

    const/high16 v9, 0x3f400000

    mul-float/2addr v8, v9

    float-to-int v6, v8

    .line 617
    move v7, v14

    .line 618
    sub-int v8, v21, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_9

    sub-int v8, v20, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_9

    .line 619
    move-object/from16 v13, v19

    .line 658
    :cond_3
    :goto_2
    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    .line 659
    const/4 v8, 0x0

    aput-object v12, v15, v8

    .line 660
    const/4 v8, 0x1

    aput-object v13, v15, v8

    goto :goto_0

    .line 576
    :cond_4
    int-to-float v8, v6

    move/from16 v0, v21

    int-to-float v9, v0

    div-float v18, v8, v9

    .line 577
    .local v18, "scaleW":F
    int-to-float v8, v7

    move/from16 v0, v20

    int-to-float v9, v0

    div-float v16, v8, v9

    .line 578
    .local v16, "scaleH":F
    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 579
    .local v17, "scaleM":F
    move/from16 v0, v21

    int-to-float v8, v0

    mul-float v8, v8, v17

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 580
    move/from16 v0, v20

    int-to-float v8, v0

    mul-float v8, v8, v17

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 585
    const/4 v8, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 586
    .local v3, "dstBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 587
    .local v4, "startX":I
    const/4 v5, 0x0

    .line 588
    .local v5, "startY":I
    move/from16 v0, v21

    if-le v0, v6, :cond_7

    .line 589
    sub-int v8, v21, v6

    div-int/lit8 v4, v8, 0x2

    .line 596
    :cond_5
    :goto_3
    move/from16 v0, v20

    if-le v0, v7, :cond_8

    .line 597
    sub-int v8, v20, v7

    div-int/lit8 v5, v8, 0x2

    .line 604
    :cond_6
    :goto_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 605
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_2

    const/high16 v8, 0x3f800000

    sub-float v8, v17, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v22, 0x3eb0c6f7a0b5ed8dL

    cmpl-double v8, v8, v22

    if-lez v8, :cond_2

    .line 606
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    .line 590
    :cond_7
    move/from16 v0, v21

    if-ge v0, v6, :cond_5

    .line 591
    move/from16 v6, v21

    goto :goto_3

    .line 598
    :cond_8
    move/from16 v0, v20

    if-ge v0, v7, :cond_6

    .line 599
    move/from16 v7, v20

    goto :goto_4

    .line 621
    .end local v3    # "dstBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "startX":I
    .end local v5    # "startY":I
    .end local v16    # "scaleH":F
    .end local v17    # "scaleM":F
    .end local v18    # "scaleW":F
    :cond_9
    const/4 v3, 0x0

    .line 622
    .restart local v3    # "dstBitmap":Landroid/graphics/Bitmap;
    int-to-float v8, v6

    move/from16 v0, v21

    int-to-float v9, v0

    div-float v18, v8, v9

    .line 623
    .restart local v18    # "scaleW":F
    int-to-float v8, v7

    move/from16 v0, v20

    int-to-float v9, v0

    div-float v16, v8, v9

    .line 624
    .restart local v16    # "scaleH":F
    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 625
    .restart local v17    # "scaleM":F
    move/from16 v0, v21

    int-to-float v8, v0

    mul-float v8, v8, v17

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 626
    move/from16 v0, v20

    int-to-float v8, v0

    mul-float v8, v8, v17

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 630
    const/4 v8, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 631
    const/4 v4, 0x0

    .line 632
    .restart local v4    # "startX":I
    const/4 v5, 0x0

    .line 633
    .restart local v5    # "startY":I
    move/from16 v0, v21

    if-le v0, v6, :cond_c

    .line 634
    sub-int v8, v21, v6

    div-int/lit8 v4, v8, 0x2

    .line 641
    :cond_a
    :goto_5
    move/from16 v0, v20

    if-le v0, v7, :cond_d

    .line 642
    sub-int v8, v20, v7

    div-int/lit8 v5, v8, 0x2

    .line 649
    :cond_b
    :goto_6
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 650
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 651
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 635
    :cond_c
    move/from16 v0, v21

    if-ge v0, v6, :cond_a

    .line 636
    move/from16 v6, v21

    goto :goto_5

    .line 643
    :cond_d
    move/from16 v0, v20

    if-ge v0, v7, :cond_b

    .line 644
    move/from16 v7, v20

    goto :goto_6
.end method

.method public static getBgByFill(ILandroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "resId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLand"    # Z

    .prologue
    .line 746
    const/4 v15, 0x0

    .line 747
    .local v15, "result":Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    move-object/from16 v16, v15

    .line 789
    .end local v15    # "result":Landroid/graphics/Bitmap;
    .local v16, "result":Landroid/graphics/Bitmap;
    :goto_0
    return-object v16

    .line 750
    .end local v16    # "result":Landroid/graphics/Bitmap;
    .restart local v15    # "result":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 751
    .local v17, "soc":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v20

    if-eqz v20, :cond_2

    :cond_1
    move-object/from16 v16, v15

    .line 752
    .end local v15    # "result":Landroid/graphics/Bitmap;
    .restart local v16    # "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 754
    .end local v16    # "result":Landroid/graphics/Bitmap;
    .restart local v15    # "result":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 755
    .local v18, "socH":I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 757
    .local v19, "socW":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f090005

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 758
    .local v12, "length":I
    const/high16 v4, 0x3f400000

    .line 759
    .local v4, "SCALE":F
    if-eqz p2, :cond_4

    .line 760
    move v11, v12

    .line 761
    .local v11, "lW":I
    int-to-float v0, v12

    move/from16 v20, v0

    const/high16 v21, 0x3f400000

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v10, v0

    .line 762
    .local v10, "lH":I
    sget-object v20, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    invoke-static {v11, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 764
    div-int v7, v11, v19

    .line 765
    .local v7, "cntW":I
    div-int v6, v10, v18

    .line 766
    .local v6, "cntH":I
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 767
    .local v5, "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    add-int/lit8 v20, v7, 0x1

    move/from16 v0, v20

    if-ge v8, v0, :cond_6

    .line 768
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    add-int/lit8 v20, v6, 0x1

    move/from16 v0, v20

    if-ge v9, v0, :cond_3

    .line 769
    mul-int v20, v8, v19

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-int v21, v9, v18

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 768
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 767
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 773
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "cntH":I
    .end local v7    # "cntW":I
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v10    # "lH":I
    .end local v11    # "lW":I
    :cond_4
    int-to-float v0, v12

    move/from16 v20, v0

    const/high16 v21, 0x3f400000

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v14, v0

    .line 774
    .local v14, "pW":I
    move v13, v12

    .line 775
    .local v13, "pH":I
    sget-object v20, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    invoke-static {v14, v13, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 777
    div-int v7, v14, v19

    .line 778
    .restart local v7    # "cntW":I
    div-int v6, v13, v18

    .line 779
    .restart local v6    # "cntH":I
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 780
    .restart local v5    # "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    add-int/lit8 v20, v7, 0x1

    move/from16 v0, v20

    if-ge v8, v0, :cond_6

    .line 781
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_4
    add-int/lit8 v20, v6, 0x1

    move/from16 v0, v20

    if-ge v9, v0, :cond_5

    .line 782
    mul-int v20, v8, v19

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-int v21, v9, v18

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 781
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 780
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 786
    .end local v9    # "j":I
    .end local v13    # "pH":I
    .end local v14    # "pW":I
    :cond_6
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v20

    if-nez v20, :cond_7

    .line 787
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    move-object/from16 v16, v15

    .line 789
    .end local v15    # "result":Landroid/graphics/Bitmap;
    .restart local v16    # "result":Landroid/graphics/Bitmap;
    goto/16 :goto_0
.end method

.method public static getBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "approximateW"    # I
    .param p3, "approximateH"    # I

    .prologue
    .line 315
    const/4 v8, 0x0

    .line 319
    .local v8, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 320
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 321
    .local v9, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 322
    const/4 v2, 0x0

    invoke-static {v8, v2, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 323
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 324
    const/4 v11, 0x1

    .line 326
    .local v11, "resizeFactor":I
    iget v2, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p2

    if-le v2, v0, :cond_0

    iget v2, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p3

    if-le v2, v0, :cond_0

    .line 327
    iget v2, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    move/from16 v0, p2

    int-to-float v3, v0

    div-float/2addr v2, v3

    iget v3, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    move/from16 v0, p3

    int-to-float v4, v0

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    move/from16 v0, p2

    int-to-float v3, v0

    div-float v13, v2, v3

    .line 330
    .local v13, "scale":F
    :goto_0
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 337
    .end local v13    # "scale":F
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 338
    iput v11, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 339
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 340
    const/4 v2, 0x0

    iput-boolean v2, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 341
    const/4 v2, 0x0

    invoke-static {v8, v2, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 343
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 345
    invoke-static {p0, p1}, Lcom/sonymobile/china/collage/utils/ExifUtil;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v10

    .line 346
    .local v10, "orientation":I
    invoke-static {v10}, Lcom/sonymobile/china/collage/utils/ExifUtil;->getTransformationMatrix(I)Landroid/graphics/Matrix;

    move-result-object v6

    .line 347
    .local v6, "m":Landroid/graphics/Matrix;
    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_1

    .line 348
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 350
    .local v12, "rotatedBmp":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_1

    .line 351
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    move-object v1, v12

    .line 366
    .end local v6    # "m":Landroid/graphics/Matrix;
    .end local v10    # "orientation":I
    .end local v12    # "rotatedBmp":Landroid/graphics/Bitmap;
    :cond_1
    if-eqz v8, :cond_2

    .line 368
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 377
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v9    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "resizeFactor":I
    :cond_2
    :goto_1
    return-object v1

    .line 327
    .restart local v9    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "resizeFactor":I
    :cond_3
    :try_start_2
    iget v2, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-float v2, v2

    move/from16 v0, p3

    int-to-float v3, v0

    div-float v13, v2, v3

    goto :goto_0

    .line 357
    .end local v9    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "resizeFactor":I
    :catch_0
    move-exception v2

    .line 366
    if-eqz v8, :cond_4

    .line 368
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 377
    :cond_4
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 361
    :catch_1
    move-exception v2

    .line 366
    if-eqz v8, :cond_4

    .line 368
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 369
    :catch_2
    move-exception v2

    goto :goto_2

    .line 366
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_5

    .line 368
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 373
    :cond_5
    :goto_3
    throw v2

    .line 369
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    .restart local v9    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "resizeFactor":I
    :catch_3
    move-exception v2

    goto :goto_1

    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v9    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "resizeFactor":I
    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v3

    goto :goto_3
.end method

.method public static getPicturesDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 85
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 87
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "dir":Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPublicImageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 414
    const-string v0, "Collage"

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPublicImageFilename(J)Ljava/lang/String;
    .locals 2
    .param p0, "timestamp"    # J

    .prologue
    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collage-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScaledBitmap(Landroid/graphics/Bitmap;IILcom/sonymobile/china/collage/utils/ImageUtils$ScaleMode;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .param p3, "mode"    # Lcom/sonymobile/china/collage/utils/ImageUtils$ScaleMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 139
    if-nez p0, :cond_0

    .line 140
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "a bitmap must be provided"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 143
    :cond_0
    if-lt p2, v11, :cond_1

    if-ge p1, v11, :cond_2

    .line 144
    :cond_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "newHeight and newWidth must be > 0"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 147
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 148
    .local v2, "origWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 150
    .local v1, "origHeight":I
    if-ne v2, p1, :cond_3

    if-ne v1, p2, :cond_3

    .line 182
    .end local p0    # "bm":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 154
    .restart local p0    # "bm":Landroid/graphics/Bitmap;
    :cond_3
    int-to-float v9, p1

    int-to-float v10, v2

    div-float v5, v9, v10

    .line 155
    .local v5, "scaleRatioWidth":F
    int-to-float v9, p2

    int-to-float v10, v1

    div-float v4, v9, v10

    .line 159
    .local v4, "scaleRatioHeight":F
    sget-object v9, Lcom/sonymobile/china/collage/utils/ImageUtils$ScaleMode;->FIT:Lcom/sonymobile/china/collage/utils/ImageUtils$ScaleMode;

    if-ne p3, v9, :cond_4

    .line 160
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 165
    .local v3, "scaleRatio":F
    :goto_1
    int-to-float v9, v2

    mul-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 166
    .local v8, "scaledWidth":I
    int-to-float v9, v1

    mul-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 169
    .local v7, "scaledHeight":I
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 170
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 174
    const/4 v9, 0x1

    :try_start_0
    invoke-static {p0, v8, v7, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .local v6, "scaledBitmap":Landroid/graphics/Bitmap;
    move-object p0, v6

    .line 182
    goto :goto_0

    .line 162
    .end local v3    # "scaleRatio":F
    .end local v6    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "scaledHeight":I
    .end local v8    # "scaledWidth":I
    :cond_4
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .restart local v3    # "scaleRatio":F
    goto :goto_1

    .line 175
    .restart local v7    # "scaledHeight":I
    .restart local v8    # "scaledWidth":I
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static notifyMediaScanner(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 507
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 509
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "image/jpeg"

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 512
    :cond_0
    return-void
.end method

.method public static outPutBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "saveFileName"    # Ljava/lang/String;

    .prologue
    .line 672
    const/4 v4, 0x0

    .line 673
    .local v4, "result":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 674
    const/4 v2, 0x0

    .line 676
    .local v2, "outStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 677
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    .end local v2    # "outStream":Ljava/io/OutputStream;
    .local v3, "outStream":Ljava/io/OutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x32

    invoke-virtual {p0, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 679
    const/4 v4, 0x1

    .line 686
    if-eqz v3, :cond_0

    .line 687
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 694
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "outStream":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return v4

    .line 689
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "outStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/sonymobile/china/collage/utils/ImageUtils;->TAG:Ljava/lang/String;

    const-string v6, "IOException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 680
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "outStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v5

    .line 686
    :goto_1
    if-eqz v2, :cond_0

    .line 687
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 689
    :catch_2
    move-exception v0

    .line 690
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/sonymobile/china/collage/utils/ImageUtils;->TAG:Ljava/lang/String;

    const-string v6, "IOException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 685
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 686
    :goto_2
    if-eqz v2, :cond_1

    .line 687
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 691
    :cond_1
    :goto_3
    throw v5

    .line 689
    :catch_3
    move-exception v0

    .line 690
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/sonymobile/china/collage/utils/ImageUtils;->TAG:Ljava/lang/String;

    const-string v7, "IOException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 685
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outStream":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "outStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "outStream":Ljava/io/OutputStream;
    goto :goto_2

    .line 680
    .end local v2    # "outStream":Ljava/io/OutputStream;
    .restart local v3    # "outStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v5

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "outStream":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static pickImage(Ljava/lang/Object;I)V
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "requestCode"    # I

    .prologue
    .line 520
    if-eqz p0, :cond_0

    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_1

    instance-of v2, p0, Landroid/app/Fragment;

    if-nez v2, :cond_1

    .line 535
    .end local p0    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 523
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 524
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    :try_start_0
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 527
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/sonymobile/china/collage/utils/ImageUtils;->TAG:Ljava/lang/String;

    const-string v3, "No album application"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 528
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v2, p0, Landroid/app/Fragment;

    if-eqz v2, :cond_0

    .line 529
    check-cast p0, Landroid/app/Fragment;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0, v1, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "replace"    # Z

    .prologue
    const/4 v4, 0x0

    .line 445
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-object v4

    .line 449
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    .local v3, "subDirectory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 455
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 457
    .local v0, "file":Ljava/io/File;
    if-nez p3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 458
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 461
    :cond_3
    const/4 v1, 0x0

    .line 463
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {p0, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 465
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 472
    if-eqz v2, :cond_0

    .line 473
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 475
    :catch_0
    move-exception v5

    goto :goto_0

    .line 466
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    .line 472
    :goto_1
    if-eqz v1, :cond_0

    .line 473
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 475
    :catch_2
    move-exception v5

    goto :goto_0

    .line 471
    :catchall_0
    move-exception v4

    .line 472
    :goto_2
    if-eqz v1, :cond_4

    .line 473
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 479
    :cond_4
    :goto_3
    throw v4

    .line 475
    :catch_3
    move-exception v5

    goto :goto_3

    .line 471
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 466
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v5

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static savePublicImage(Landroid/content/Context;Landroid/graphics/Bitmap;J)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "modified"    # J

    .prologue
    .line 495
    invoke-static {p0}, Lcom/sonymobile/china/collage/utils/ImageUtils;->getPublicImageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/sonymobile/china/collage/utils/ImageUtils;->getPublicImageFilename(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/sonymobile/china/collage/utils/ImageUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
