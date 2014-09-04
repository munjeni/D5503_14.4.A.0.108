.class public Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final COMPRESS_JPEG_QUALITY:I = 0x5a

.field public static final UNCONSTRAINED:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 292
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 293
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 294
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;I)[B
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "quality"    # I

    .prologue
    .line 313
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 314
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 315
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static computeInitialSampleSize(IIII)I
    .locals 7
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "minSideLength"    # I
    .param p3, "maxNumOfPixels"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v6, -0x1

    .line 76
    if-ne p3, v6, :cond_1

    if-ne p2, v6, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    if-ne p3, v6, :cond_2

    .line 82
    .local v0, "lowerBound":I
    :goto_1
    if-eq p2, v6, :cond_0

    .line 85
    div-int v2, p0, p2

    div-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 86
    .local v1, "sampleSize":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 79
    .end local v0    # "lowerBound":I
    .end local v1    # "sampleSize":I
    :cond_2
    mul-int v2, p0, p1

    int-to-double v2, v2

    int-to-double v4, p3

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_1
.end method

.method public static computeSampleSize(F)I
    .locals 5
    .param p0, "scale"    # F

    .prologue
    const/4 v2, 0x1

    .line 111
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 112
    const/high16 v1, 0x3f800000

    div-float/2addr v1, p0

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 113
    .local v0, "initialSize":I
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->nextPowerOf2(I)I

    move-result v1

    :goto_1
    return v1

    .line 111
    .end local v0    # "initialSize":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 113
    .restart local v0    # "initialSize":I
    :cond_1
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_1
.end method

.method public static computeSampleSize(IIII)I
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "minSideLength"    # I
    .param p3, "maxNumOfPixels"    # I

    .prologue
    .line 70
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->computeInitialSampleSize(IIII)I

    move-result v0

    .line 72
    .local v0, "initialSize":I
    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->nextPowerOf2(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static computeSampleSizeLarger(F)I
    .locals 4
    .param p0, "scale"    # F

    .prologue
    const/4 v1, 0x1

    .line 102
    const/high16 v2, 0x3f800000

    div-float/2addr v2, p0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 103
    .local v0, "initialSize":I
    if-gt v0, v1, :cond_0

    .line 106
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static computeSampleSizeLarger(III)I
    .locals 4
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "minSideLength"    # I

    .prologue
    const/4 v1, 0x1

    .line 93
    div-int v2, p0, p2

    div-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 94
    .local v0, "initialSize":I
    if-gt v0, v1, :cond_0

    .line 97
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v2, 0x0

    .line 236
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 238
    .local v4, "instance":Ljava/lang/Object;
    :try_start_0
    const-string v6, "android.media.MediaMetadataRetriever"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 241
    const-string v6, "setDataSource"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 242
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-gt v6, v7, :cond_1

    .line 246
    const-string v6, "captureFrame"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    if-eqz v4, :cond_0

    .line 283
    :try_start_1
    const-string v7, "release"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11

    .line 288
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v6

    .line 248
    .restart local v4    # "instance":Ljava/lang/Object;
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :try_start_2
    const-string v6, "getEmbeddedPicture"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v3, v0

    .line 249
    .local v3, "data":[B
    if-eqz v3, :cond_3

    .line 250
    const/4 v6, 0x0

    array-length v7, v3

    invoke-static {v3, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 251
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 282
    if-eqz v4, :cond_2

    .line 283
    :try_start_3
    const-string v6, "release"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10

    :cond_2
    :goto_1
    move-object v6, v1

    .line 286
    goto :goto_0

    .line 254
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :try_start_4
    const-string v6, "getFrameAtTime"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    if-eqz v4, :cond_0

    .line 283
    :try_start_5
    const-string v7, "release"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v7

    goto :goto_0

    .line 256
    .end local v3    # "data":[B
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v6

    .line 282
    if-eqz v4, :cond_4

    .line 283
    :try_start_6
    const-string v6, "release"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f

    .line 288
    :cond_4
    :goto_2
    const/4 v6, 0x0

    goto :goto_0

    .line 258
    :catch_2
    move-exception v6

    .line 282
    if-eqz v4, :cond_4

    .line 283
    :try_start_7
    const-string v6, "release"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 285
    :catch_3
    move-exception v6

    goto :goto_2

    .line 260
    :catch_4
    move-exception v6

    .line 282
    if-eqz v4, :cond_4

    .line 283
    :try_start_8
    const-string v6, "release"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    .line 285
    :catch_5
    move-exception v6

    goto :goto_2

    .line 264
    :catch_6
    move-exception v6

    .line 282
    if-eqz v4, :cond_4

    .line 283
    :try_start_9
    const-string v6, "release"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_2

    .line 285
    :catch_7
    move-exception v6

    goto :goto_2

    .line 268
    :catch_8
    move-exception v6

    .line 282
    if-eqz v4, :cond_4

    .line 283
    :try_start_a
    const-string v6, "release"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_2

    .line 285
    :catch_9
    move-exception v6

    goto :goto_2

    .line 272
    :catch_a
    move-exception v6

    .line 282
    if-eqz v4, :cond_4

    .line 283
    :try_start_b
    const-string v6, "release"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_2

    .line 285
    :catch_b
    move-exception v6

    goto :goto_2

    .line 276
    :catch_c
    move-exception v6

    .line 282
    if-eqz v4, :cond_4

    .line 283
    :try_start_c
    const-string v6, "release"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_2

    .line 285
    :catch_d
    move-exception v6

    goto :goto_2

    .line 281
    :catchall_0
    move-exception v6

    .line 282
    if-eqz v4, :cond_5

    .line 283
    :try_start_d
    const-string v7, "release"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    .line 286
    :cond_5
    :goto_3
    throw v6

    .line 285
    :catch_e
    move-exception v7

    goto :goto_3

    :catch_f
    move-exception v6

    goto/16 :goto_2

    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "data":[B
    .restart local v4    # "instance":Ljava/lang/Object;
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :catch_10
    move-exception v6

    goto/16 :goto_1

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "data":[B
    :catch_11
    move-exception v7

    goto/16 :goto_0
.end method

.method public static cropCenter(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "recycle"    # Z

    .prologue
    const/4 v8, 0x0

    .line 169
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 170
    .local v5, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 171
    .local v1, "height":I
    if-ne v5, v1, :cond_0

    .line 182
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 173
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 175
    .local v3, "size":I
    invoke-static {p0}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v3, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 176
    .local v4, "target":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 177
    .local v0, "canvas":Landroid/graphics/Canvas;
    sub-int v6, v3, v5

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-int v7, v3, v1

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 178
    new-instance v2, Landroid/graphics/Paint;

    const/4 v6, 0x2

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 179
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p0, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 180
    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v4

    .line 182
    goto :goto_0
.end method

.method private static getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 142
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    .line 143
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 145
    :cond_0
    return-object v0
.end method

.method public static isRotationSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 306
    if-nez p0, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 309
    :goto_0
    return v0

    .line 308
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 309
    const-string v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSupportedByRegionDecoder(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 298
    if-nez p0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v0

    .line 300
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 301
    const-string v1, "image/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "image/gif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static recycleSilently(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 208
    if-nez p0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 211
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F
    .param p2, "recycle"    # Z

    .prologue
    const/4 v6, 0x0

    .line 126
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 127
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 128
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v1, v5, :cond_0

    .line 137
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 130
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 131
    .local v3, "target":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 133
    new-instance v2, Landroid/graphics/Paint;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 134
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 135
    if-eqz p2, :cond_1

    .line 136
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v3

    .line 137
    goto :goto_0
.end method

.method public static resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "size"    # I
    .param p2, "recycle"    # Z

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 187
    .local v7, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 188
    .local v1, "h":I
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 189
    .local v3, "minSide":I
    if-ne v7, v1, :cond_0

    if-gt v3, p1, :cond_0

    .line 204
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 191
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 193
    int-to-float v9, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 194
    .local v5, "scale":F
    invoke-static {p0}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-static {p1, p1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 195
    .local v6, "target":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 196
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 197
    .local v2, "height":I
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 198
    .local v0, "canvas":Landroid/graphics/Canvas;
    sub-int v9, p1, v8

    int-to-float v9, v9

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sub-int v10, p1, v2

    int-to-float v10, v10

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 199
    invoke-virtual {v0, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 200
    new-instance v4, Landroid/graphics/Paint;

    const/4 v9, 0x6

    invoke-direct {v4, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 201
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, p0, v9, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 202
    if-eqz p2, :cond_1

    .line 203
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v6

    .line 204
    goto :goto_0
.end method

.method public static resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxLength"    # I
    .param p2, "recycle"    # Z

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 150
    .local v2, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 151
    .local v1, "srcHeight":I
    int-to-float v3, p1

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p1

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 152
    .local v0, "scale":F
    const/high16 v3, 0x3f800000

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 154
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p0, v0, p2}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static resizeDownIfTooBig(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "targetSize"    # I
    .param p2, "recycle"    # Z

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 160
    .local v2, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 161
    .local v1, "srcHeight":I
    int-to-float v3, p1

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p1

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 162
    .local v0, "scale":F
    const/high16 v3, 0x3f000000

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 164
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p0, v0, p2}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static resizeDownToPixels(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "targetPixels"    # I
    .param p2, "recycle"    # Z

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 118
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 119
    .local v0, "height":I
    int-to-double v3, p1

    mul-int v5, v2, v0

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 120
    .local v1, "scale":F
    const/high16 v3, 0x3f800000

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    .line 122
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p0, v1, p2}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "rotation"    # I
    .param p2, "recycle"    # Z

    .prologue
    const/4 v1, 0x0

    .line 220
    if-nez p1, :cond_0

    .line 229
    .end local p0    # "source":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 222
    .restart local p0    # "source":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 223
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 224
    .local v4, "h":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 225
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 226
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 227
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_1

    .line 228
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v7

    .line 229
    goto :goto_0
.end method
