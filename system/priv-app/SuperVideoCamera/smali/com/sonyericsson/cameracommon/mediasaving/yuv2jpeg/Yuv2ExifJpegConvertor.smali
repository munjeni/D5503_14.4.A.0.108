.class public Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;
.super Ljava/lang/Object;
.source "Yuv2ExifJpegConvertor.java"


# static fields
.field private static final APP0_MARKER:[B

.field private static final APP1_MARKER:[B

.field private static final EXIF_THUMBNAIL_HEIGHT:I = 0x78

.field private static final EXIF_THUMBNAIL_WIDTH:I = 0xa0

.field public static final HEADER_MARGIN:I = 0x400

.field private static final JPEG_COMPRESS_QUALITY:I = 0x5d

.field private static final M_DHT:I = 0xc4

.field private static final M_DQT:I = 0xdb

.field private static final M_MARKER:I = 0xff

.field private static final M_SOI:I = 0xd8

.field private static final M_SOS:I = 0xda

.field private static final SIZE_OF_ONE_BYTE:I = 0x8

.field private static final SOI_MARKER:[B

.field private static final TAG:Ljava/lang/String; = "Yuv2ExifJpegConvertor"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 173
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    .line 176
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP0_MARKER:[B

    .line 179
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP1_MARKER:[B

    return-void

    .line 173
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    .line 176
    nop

    :array_1
    .array-data 1
        -0x1t
        -0x20t
    .end array-data

    .line 179
    nop

    :array_2
    .array-data 1
        -0x1t
        -0x1ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExifHeader(Ljava/io/OutputStream;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;[B)I
    .locals 7
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;
    .param p2, "thumbnailData"    # [B

    .prologue
    .line 353
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->create(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;[B)Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;

    move-result-object v2

    .line 355
    .local v2, "exifOption":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->getLength()I

    move-result v4

    iget-wide v5, v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    long-to-int v5, v5

    add-int/2addr v4, v5

    new-array v0, v4, [B

    .line 356
    .local v0, "buffer":[B
    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->generate([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)I

    move-result v3

    .line 358
    .local v3, "length":I
    if-lez v3, :cond_0

    .line 360
    :try_start_0
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 361
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 362
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 363
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    array-length v4, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v4

    .line 370
    :cond_0
    :goto_0
    return v3

    .line 364
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Yuv2ExifJpegConvertor"

    const-string v5, "Add exif header failed."

    invoke-static {v4, v5, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static addExifToPlainJpeg([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B
    .locals 6
    .param p0, "plainJpeg"    # [B
    .param p1, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

    .prologue
    const/4 v3, 0x0

    .line 79
    if-nez p0, :cond_0

    .line 98
    :goto_0
    return-object v3

    .line 84
    :cond_0
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getExifThumbnail([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B

    move-result-object v2

    .line 87
    .local v2, "thumbnailData":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    .local v0, "dstOs":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, p1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->addExifHeader(Ljava/io/OutputStream;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;[B)I

    move-result v1

    .line 91
    .local v1, "exifHeaderLength":I
    if-lez v1, :cond_1

    .line 92
    array-length v3, p0

    invoke-static {v0, p0, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->appendOnlyImageFromJpegData(Ljava/io/OutputStream;[BI)V

    .line 98
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_0

    .line 94
    :cond_1
    const-string v4, "Yuv2ExifJpegConvertor"

    const-string v5, "convertYuvToExifJpeg():[Add EXIF header failed.]"

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static appendOnlyImageFromJpegData(Ljava/io/OutputStream;[BI)V
    .locals 4
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "jpegByte"    # [B
    .param p2, "length"    # I

    .prologue
    .line 375
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->skipApp0OrApp1Marker([B)I

    move-result v1

    .line 379
    .local v1, "index":I
    if-lez v1, :cond_0

    .line 382
    sub-int v2, p2, v1

    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 383
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Yuv2ExifJpegConvertor"

    const-string v3, "Append image data failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static convertBitmapToExifJpeg(Landroid/graphics/Bitmap;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

    .prologue
    const/4 v1, 0x0

    .line 60
    if-nez p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v1

    .line 64
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->convertBitmapToPlainJpeg(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 65
    .local v0, "plainJpeg":[B
    if-eqz v0, :cond_0

    .line 69
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->addExifToPlainJpeg([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static convertBitmapToPlainJpeg(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 73
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 75
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static convertYuvToExifJpeg(Landroid/graphics/YuvImage;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B
    .locals 2
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p1, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->convertYuvToPlainJpeg(Landroid/graphics/YuvImage;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B

    move-result-object v0

    .line 52
    .local v0, "plainJpeg":[B
    if-nez v0, :cond_0

    .line 53
    const/4 v1, 0x0

    .line 56
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->addExifToPlainJpeg([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static convertYuvToPlainJpeg(Landroid/graphics/YuvImage;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B
    .locals 5
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p1, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

    .prologue
    .line 110
    :try_start_0
    const-string v3, "com.sonymobile.imageprocessor.jpegencoder.JpegEncoder"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 111
    invoke-static {}, Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;->create()Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;

    move-result-object v1

    .line 112
    .local v1, "encoder":Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getHeight()I

    move-result v4

    invoke-static {v1, p0, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->convertYuvToPlainJpegWithImageProcessor(Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;Landroid/graphics/YuvImage;II)[B

    move-result-object v2

    .line 114
    .local v2, "result":[B
    invoke-virtual {v1}, Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;->release()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1    # "encoder":Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;
    :goto_0
    return-object v2

    .line 116
    .end local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 119
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getHeight()I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->convertYuvToPlainJpegWithoutImageProcessor(Landroid/graphics/YuvImage;II)[B

    move-result-object v2

    .restart local v2    # "result":[B
    goto :goto_0
.end method

.method protected static convertYuvToPlainJpegWithImageProcessor(Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;Landroid/graphics/YuvImage;II)[B
    .locals 4
    .param p0, "encoder"    # Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;
    .param p1, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 128
    new-instance v1, Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder$Parameters;

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvFormat()I

    move-result v2

    const/16 v3, 0x5d

    invoke-direct {v1, p2, p3, v2, v3}, Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder$Parameters;-><init>(IIII)V

    .line 131
    .local v1, "params":Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder$Parameters;
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;->process([BLcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder$Parameters;)Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder$Result;

    move-result-object v0

    .line 132
    .local v0, "encResult":Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder$Result;
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder$Result;->imageBuffer:[B

    return-object v2
.end method

.method protected static convertYuvToPlainJpegWithoutImageProcessor(Landroid/graphics/YuvImage;II)[B
    .locals 9
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v7, 0x0

    .line 137
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v5, "srcOs":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7, v7, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 141
    .local v2, "frameRect":Landroid/graphics/Rect;
    const/16 v7, 0x5d

    invoke-virtual {p0, v2, v7, v5}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v3

    .line 146
    .local v3, "isCompressSuccess":Z
    if-nez v3, :cond_0

    .line 147
    const-string v7, "Yuv2ExifJpegConvertor"

    const-string v8, "convertYuvToExifJpeg():[Compress failed]"

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v7, 0x0

    .line 166
    :goto_0
    return-object v7

    .line 152
    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 153
    .local v4, "srcImage":[B
    array-length v7, v4

    add-int/lit16 v7, v7, 0x400

    new-array v6, v7, [B

    .line 158
    .local v6, "tmpImageBuffer":[B
    :try_start_0
    invoke-static {v4, v6}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->integrateJfif([B[B)I
    :try_end_0
    .catch Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 166
    .local v0, "actualLength":I
    :goto_1
    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    goto :goto_0

    .line 159
    .end local v0    # "actualLength":I
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
    const-string v7, "Yuv2ExifJpegConvertor"

    const-string v8, "convertYuvToExifJpeg():[JFIF integration failed.]"

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;->printStackTrace()V

    .line 163
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 164
    array-length v0, v6

    .restart local v0    # "actualLength":I
    goto :goto_1
.end method

.method public static getExifThumbnail([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B
    .locals 29
    .param p0, "jfifData"    # [B
    .param p1, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

    .prologue
    .line 471
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getWidth()I

    move-result v26

    move/from16 v0, v26

    div-int/lit16 v0, v0, 0xa0

    move/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getHeight()I

    move-result v27

    div-int/lit8 v27, v27, 0x78

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 476
    .local v16, "sampleSize":I
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 477
    .local v12, "option":Landroid/graphics/BitmapFactory$Options;
    const/16 v26, 0x0

    move/from16 v0, v26

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 478
    const/16 v26, 0x0

    move/from16 v0, v26

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 479
    sget-object v26, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v26

    iput-object v0, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 480
    move/from16 v0, v16

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 482
    const/16 v26, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 484
    .local v21, "srcBitmap":Landroid/graphics/Bitmap;
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 486
    .local v13, "outputStream":Ljava/io/ByteArrayOutputStream;
    if-eqz v21, :cond_4

    .line 487
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    .line 488
    .local v22, "srcHeight":I
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    .line 489
    .local v24, "srcWidth":I
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x42f00000

    div-float v8, v26, v27

    .line 490
    .local v8, "heightRate":F
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x43200000

    div-float v25, v26, v27

    .line 493
    .local v25, "widhtRate":F
    cmpl-float v26, v8, v25

    if-lez v26, :cond_3

    .line 494
    const/16 v17, 0x78

    .line 495
    .local v17, "scaledHeight":I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v26, v26, v8

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v19, v0

    .line 509
    .local v19, "scaledWidth":I
    :goto_0
    const/16 v26, 0xa0

    const/16 v27, 0x78

    sget-object v28, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v26 .. v28}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 511
    .local v5, "dstBitmap":Landroid/graphics/Bitmap;
    const/high16 v26, -0x1000000

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 513
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 514
    .local v4, "c":Landroid/graphics/Canvas;
    move/from16 v0, v19

    rsub-int v0, v0, 0xa0

    move/from16 v26, v0

    div-int/lit8 v15, v26, 0x2

    .line 515
    .local v15, "paddingWidth":I
    rsub-int/lit8 v26, v17, 0x78

    div-int/lit8 v14, v26, 0x2

    .line 517
    .local v14, "paddingHeight":I
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 520
    .local v18, "scaledThumbnailBitmap":Landroid/graphics/Bitmap;
    int-to-float v0, v15

    move/from16 v26, v0

    int-to-float v0, v14

    move/from16 v27, v0

    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 521
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v26

    if-nez v26, :cond_0

    .line 522
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 525
    :cond_0
    sget-object v26, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v27, 0x64

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 526
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v26

    if-nez v26, :cond_1

    .line 527
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 534
    :cond_1
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v26

    if-nez v26, :cond_2

    .line 535
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    .line 538
    :cond_2
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v23

    .line 539
    .local v23, "srcImage":[B
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    add-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v10, v0, [B

    .line 541
    .local v10, "integratedImage":[B
    const/4 v9, 0x0

    .line 543
    .local v9, "imageLength":I
    :try_start_0
    move-object/from16 v0, v23

    invoke-static {v0, v10}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->integrateJfif([B[B)I
    :try_end_0
    .catch Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 551
    :goto_1
    invoke-static {v10}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->skipApp0OrApp1Marker([B)I

    move-result v11

    .line 552
    .local v11, "offset":I
    sub-int v26, v9, v11

    sget-object v27, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    add-int v20, v26, v27

    .line 553
    .local v20, "size":I
    move/from16 v0, v20

    new-array v6, v0, [B

    .line 556
    .local v6, "dstImage":[B
    const/16 v26, 0x0

    sget-object v27, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    const/16 v28, 0x0

    aget-byte v27, v27, v28

    aput-byte v27, v6, v26

    .line 557
    const/16 v26, 0x1

    sget-object v27, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    const/16 v28, 0x1

    aget-byte v27, v27, v28

    aput-byte v27, v6, v26

    .line 560
    sget-object v26, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    array-length v0, v6

    move/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v10, v11, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    const/4 v10, 0x0

    .line 566
    :try_start_1
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 571
    .end local v4    # "c":Landroid/graphics/Canvas;
    .end local v5    # "dstBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "dstImage":[B
    .end local v8    # "heightRate":F
    .end local v9    # "imageLength":I
    .end local v10    # "integratedImage":[B
    .end local v11    # "offset":I
    .end local v14    # "paddingHeight":I
    .end local v15    # "paddingWidth":I
    .end local v17    # "scaledHeight":I
    .end local v18    # "scaledThumbnailBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "scaledWidth":I
    .end local v20    # "size":I
    .end local v22    # "srcHeight":I
    .end local v23    # "srcImage":[B
    .end local v24    # "srcWidth":I
    .end local v25    # "widhtRate":F
    :goto_2
    return-object v6

    .line 497
    .restart local v8    # "heightRate":F
    .restart local v22    # "srcHeight":I
    .restart local v24    # "srcWidth":I
    .restart local v25    # "widhtRate":F
    :cond_3
    const/16 v19, 0xa0

    .line 498
    .restart local v19    # "scaledWidth":I
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v26, v26, v25

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v17, v0

    .restart local v17    # "scaledHeight":I
    goto/16 :goto_0

    .line 530
    .end local v8    # "heightRate":F
    .end local v17    # "scaledHeight":I
    .end local v19    # "scaledWidth":I
    .end local v22    # "srcHeight":I
    .end local v24    # "srcWidth":I
    .end local v25    # "widhtRate":F
    :cond_4
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v6, v0, [B

    goto :goto_2

    .line 544
    .restart local v4    # "c":Landroid/graphics/Canvas;
    .restart local v5    # "dstBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "heightRate":F
    .restart local v9    # "imageLength":I
    .restart local v10    # "integratedImage":[B
    .restart local v14    # "paddingHeight":I
    .restart local v15    # "paddingWidth":I
    .restart local v17    # "scaledHeight":I
    .restart local v18    # "scaledThumbnailBitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "scaledWidth":I
    .restart local v22    # "srcHeight":I
    .restart local v23    # "srcImage":[B
    .restart local v24    # "srcWidth":I
    .restart local v25    # "widhtRate":F
    :catch_0
    move-exception v7

    .line 546
    .local v7, "e":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
    move-object/from16 v10, v23

    .line 547
    array-length v9, v10

    goto :goto_1

    .line 567
    .end local v7    # "e":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
    .restart local v6    # "dstImage":[B
    .restart local v11    # "offset":I
    .restart local v20    # "size":I
    :catch_1
    move-exception v7

    .line 568
    .local v7, "e":Ljava/io/IOException;
    const-string v26, "Yuv2ExifJpegConvertor"

    const-string v27, "Closing output stream failed."

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static integrateJfif([B[B)I
    .locals 28
    .param p0, "srcJpegData"    # [B
    .param p1, "dstJpegData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
        }
    .end annotation

    .prologue
    .line 204
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v25, v0

    .line 207
    .local v25, "srcJpegDataLength":I
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v15, v0, [B

    .line 209
    .local v15, "getData":[B
    const/4 v9, 0x0

    .line 212
    .local v9, "accessCount":I
    const/4 v8, 0x0

    .line 213
    .local v8, "FFDB_seg_length":I
    const/4 v6, 0x0

    .line 214
    .local v6, "FFC4_seg_length":I
    const/4 v7, 0x0

    .line 215
    .local v7, "FFDB_orgfile_length":I
    const/4 v5, 0x0

    .line 219
    .local v5, "FFC4_orgfile_length":I
    :cond_0
    :goto_0
    add-int/lit8 v26, v9, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 221
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v15, v26

    .line 222
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v15, v26

    .line 223
    add-int/lit8 v9, v9, 0x2

    .line 226
    const/16 v26, -0x1

    const/16 v27, 0x0

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 227
    new-instance v26, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    const-string v27, "No \'FF\' marker."

    invoke-direct/range {v26 .. v27}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 231
    :cond_1
    const/16 v26, -0x26

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 259
    :cond_2
    add-int/lit8 v26, v8, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 260
    .local v20, "pFFDB":[B
    add-int/lit8 v26, v6, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 263
    .local v18, "pFFC4":[B
    const/16 v26, 0x0

    const/16 v27, -0x1

    aput-byte v27, v20, v26

    .line 264
    const/16 v26, 0x1

    const/16 v27, -0x25

    aput-byte v27, v20, v26

    .line 265
    const/16 v26, 0x0

    const/16 v27, -0x1

    aput-byte v27, v18, v26

    .line 266
    const/16 v26, 0x1

    const/16 v27, -0x3c

    aput-byte v27, v18, v26

    .line 268
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 269
    .local v14, "ffdb_length":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 271
    .local v13, "ffc4_length":Ljava/lang/String;
    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 272
    .local v11, "bigIntLen":Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    .line 273
    .local v12, "bytes":[B
    const/16 v26, 0x2

    const/16 v27, 0x0

    aget-byte v27, v12, v27

    aput-byte v27, v20, v26

    .line 274
    const/16 v26, 0x3

    const/16 v27, 0x1

    aget-byte v27, v12, v27

    aput-byte v27, v20, v26

    .line 276
    new-instance v11, Ljava/math/BigInteger;

    .end local v11    # "bigIntLen":Ljava/math/BigInteger;
    invoke-direct {v11, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 277
    .restart local v11    # "bigIntLen":Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    .line 278
    const/16 v26, 0x2

    const/16 v27, 0x0

    aget-byte v27, v12, v27

    aput-byte v27, v18, v26

    .line 279
    const/16 v26, 0x3

    const/16 v27, 0x1

    aget-byte v27, v12, v27

    aput-byte v27, v18, v26

    .line 281
    const/16 v21, 0x4

    .line 282
    .local v21, "pFFDBPos":I
    const/16 v19, 0x4

    .line 285
    .local v19, "pFFC4Pos":I
    sub-int v26, v25, v7

    sub-int v26, v26, v5

    add-int v26, v26, v8

    add-int/lit8 v26, v26, 0x2

    add-int v26, v26, v6

    add-int/lit8 v16, v26, 0x2

    .line 292
    .local v16, "integratedJpegDataLength":I
    move-object/from16 v22, p1

    .line 295
    .local v22, "pIntegratedJpegData":[B
    const/4 v9, 0x0

    .line 296
    const/16 v23, 0x0

    .line 297
    .local v23, "pos":I
    :goto_1
    add-int/lit8 v26, v9, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 298
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v15, v26

    .line 299
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v15, v26

    .line 300
    add-int/lit8 v9, v9, 0x2

    .line 302
    const/16 v26, -0x1

    const/16 v27, 0x0

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    .line 303
    new-instance v26, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    const-string v27, "No \'FF\' marker."

    invoke-direct/range {v26 .. v27}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 233
    .end local v11    # "bigIntLen":Ljava/math/BigInteger;
    .end local v12    # "bytes":[B
    .end local v13    # "ffc4_length":Ljava/lang/String;
    .end local v14    # "ffdb_length":Ljava/lang/String;
    .end local v16    # "integratedJpegDataLength":I
    .end local v18    # "pFFC4":[B
    .end local v19    # "pFFC4Pos":I
    .end local v20    # "pFFDB":[B
    .end local v21    # "pFFDBPos":I
    .end local v22    # "pIntegratedJpegData":[B
    .end local v23    # "pos":I
    :cond_3
    const/16 v26, -0x28

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 239
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 240
    .local v17, "len":[B
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v17, v26

    .line 241
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v17, v26

    .line 242
    new-instance v10, Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 243
    .local v10, "bi":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v24

    .line 245
    .local v24, "segmentLength":I
    const/16 v26, -0x3c

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 248
    if-nez v6, :cond_5

    move/from16 v26, v24

    :goto_2
    add-int v6, v6, v26

    .line 249
    add-int/lit8 v26, v24, 0x2

    add-int v5, v5, v26

    .line 256
    :cond_4
    :goto_3
    add-int v9, v9, v24

    .line 257
    goto/16 :goto_0

    .line 248
    :cond_5
    add-int/lit8 v26, v24, -0x2

    goto :goto_2

    .line 250
    :cond_6
    const/16 v26, -0x25

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 253
    if-nez v8, :cond_7

    move/from16 v26, v24

    :goto_4
    add-int v8, v8, v26

    .line 254
    add-int/lit8 v26, v24, 0x2

    add-int v7, v7, v26

    goto :goto_3

    .line 253
    :cond_7
    add-int/lit8 v26, v24, -0x2

    goto :goto_4

    .line 306
    .end local v10    # "bi":Ljava/math/BigInteger;
    .end local v17    # "len":[B
    .end local v24    # "segmentLength":I
    .restart local v11    # "bigIntLen":Ljava/math/BigInteger;
    .restart local v12    # "bytes":[B
    .restart local v13    # "ffc4_length":Ljava/lang/String;
    .restart local v14    # "ffdb_length":Ljava/lang/String;
    .restart local v16    # "integratedJpegDataLength":I
    .restart local v18    # "pFFC4":[B
    .restart local v19    # "pFFC4Pos":I
    .restart local v20    # "pFFDB":[B
    .restart local v21    # "pFFDBPos":I
    .restart local v22    # "pIntegratedJpegData":[B
    .restart local v23    # "pos":I
    :cond_8
    const/16 v26, -0x26

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 310
    const/16 v26, 0x0

    add-int/lit8 v27, v8, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    add-int/lit8 v26, v8, 0x2

    add-int v23, v23, v26

    .line 313
    const/16 v26, 0x0

    add-int/lit8 v27, v6, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    add-int/lit8 v26, v6, 0x2

    add-int v23, v23, v26

    .line 317
    add-int/lit8 v26, v9, -0x2

    add-int/lit8 v27, v9, -0x2

    sub-int v27, v25, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    :cond_9
    return v16

    .line 320
    :cond_a
    const/16 v26, -0x28

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 322
    add-int/lit8 v26, v9, -0x2

    const/16 v27, 0x0

    aget-byte v27, v15, v27

    aput-byte v27, v22, v26

    .line 323
    add-int/lit8 v26, v9, -0x1

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    aput-byte v27, v22, v26

    .line 324
    add-int/lit8 v23, v23, 0x2

    .line 325
    goto/16 :goto_1

    .line 328
    :cond_b
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 329
    .restart local v17    # "len":[B
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v17, v26

    .line 330
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v17, v26

    .line 331
    new-instance v10, Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 332
    .restart local v10    # "bi":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v24

    .line 334
    .restart local v24    # "segmentLength":I
    const/16 v26, -0x3c

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 335
    add-int/lit8 v26, v9, 0x2

    add-int/lit8 v27, v24, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    add-int/lit8 v26, v24, -0x2

    add-int v19, v19, v26

    .line 345
    :goto_5
    add-int v9, v9, v24

    .line 346
    goto/16 :goto_1

    .line 337
    :cond_c
    const/16 v26, -0x25

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 338
    add-int/lit8 v26, v9, 0x2

    add-int/lit8 v27, v24, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    add-int/lit8 v26, v24, -0x2

    add-int v21, v21, v26

    goto :goto_5

    .line 341
    :cond_d
    add-int/lit8 v26, v9, -0x2

    add-int/lit8 v27, v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    add-int/lit8 v26, v24, 0x2

    add-int v23, v23, v26

    goto :goto_5
.end method

.method public static skipApp0OrApp1Marker([B)I
    .locals 7
    .param p0, "inputByte"    # [B

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "byteCnt":I
    const/4 v2, 0x0

    .line 406
    .local v2, "siftSize":I
    array-length v3, p0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    aget-byte v3, p0, v5

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    aget-byte v3, p0, v6

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    aget-byte v4, v4, v6

    if-eq v3, v4, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v1

    .line 414
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 417
    :goto_1
    array-length v3, p0

    add-int/lit8 v3, v3, -0x3

    if-ge v0, v3, :cond_0

    .line 420
    aget-byte v3, p0, v0

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP0_MARKER:[B

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_2

    aget-byte v3, p0, v0

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP1_MARKER:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 425
    :cond_2
    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int v2, v3, v4

    .line 429
    aget-byte v3, p0, v0

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP0_MARKER:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP0_MARKER:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_3

    .line 431
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP0_MARKER:[B

    array-length v3, v3

    add-int/2addr v3, v0

    add-int v1, v3, v2

    .line 436
    .local v1, "index":I
    goto :goto_0

    .line 439
    .end local v1    # "index":I
    :cond_3
    aget-byte v3, p0, v0

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP1_MARKER:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP1_MARKER:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_4

    .line 441
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP1_MARKER:[B

    array-length v3, v3

    add-int/2addr v3, v0

    add-int v1, v3, v2

    .line 447
    .restart local v1    # "index":I
    goto :goto_0

    .line 451
    .end local v1    # "index":I
    :cond_4
    add-int/2addr v0, v2

    goto :goto_1
.end method
