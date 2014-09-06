.class Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;
.super Ljava/lang/Object;
.source "ExifFactory.java"


# static fields
.field private static APP1_HEADER:[B = null

.field private static APP1_LENGTH:I = 0x0

.field private static EXIF_IFD:[B = null

.field private static FIRST_IFD:[B = null

.field private static GPS_IFD:[B = null

.field private static final MAKER_NAME_LIMITATION:I = 0xe

.field private static final TAG:Ljava/lang/String; = "ExifFactory"

.field private static TIFF_HEADER:[B

.field private static ZERO_IFD:[B

.field private static ZERO_IFD_INT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->TIFF_HEADER:[B

    .line 28
    const/16 v0, 0xce

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD:[B

    .line 53
    const/16 v0, 0xa6

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->EXIF_IFD:[B

    .line 72
    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_INT:[B

    .line 77
    const/16 v0, 0x110

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->GPS_IFD:[B

    .line 108
    const/16 v0, 0x6a

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->FIRST_IFD:[B

    .line 121
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->TIFF_HEADER:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->EXIF_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_INT:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->GPS_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->FIRST_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_LENGTH:I

    return-void

    .line 24
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1ft
        0x3t
        0x1bt
        0x45t
        0x78t
        0x69t
        0x66t
        0x0t
        0x0t
    .end array-data

    .line 27
    nop

    :array_1
    .array-data 1
        0x4dt
        0x4dt
        0x0t
        0x2at
        0x0t
        0x0t
        0x0t
        0x8t
    .end array-data

    .line 28
    :array_2
    .array-data 1
        0x0t
        0xat
        0x1t
        0xft
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x7at
        0x1t
        0x10t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1et
        0x0t
        0x0t
        0x0t
        -0x6ct
        0x1t
        0x12t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x6t
        0x0t
        0x0t
        0x1t
        0x1at
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x4et
        0x1t
        0x1bt
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x46t
        0x1t
        0x28t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x1t
        0x32t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        -0x3et
        0x2t
        0x13t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x79t
        0x69t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x2at
        -0x78t
        0x25t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        -0x66t
        0x0t
        0x0t
        0x2t
        -0x56t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
    .end array-data

    .line 53
    nop

    :array_3
    .array-data 1
        0x0t
        0x9t
        -0x70t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x30t
        0x32t
        0x32t
        0x30t
        -0x70t
        0x3t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x1t
        0x54t
        -0x70t
        0x4t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x6ft
        0x1t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x1t
        0x2t
        0x3t
        0x0t
        -0x60t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x30t
        0x31t
        0x30t
        0x30t
        -0x60t
        0x1t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x60t
        0x2t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0xct
        -0x40t
        -0x60t
        0x3t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x60t
        0x5t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x7ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
    .end array-data

    .line 72
    nop

    :array_4
    .array-data 1
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x4t
        0x52t
        0x39t
        0x38t
        0x0t
        0x0t
        0x2t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x30t
        0x31t
        0x30t
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 77
    nop

    :array_5
    .array-data 1
        0x0t
        0xct
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x4t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x4et
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x2t
        0x30t
        0x0t
        0x3t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x2t
        0x48t
        0x0t
        0x5t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x2t
        0x60t
        0x0t
        0x7t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x2t
        0x68t
        0x0t
        0x9t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
        0x12t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x2t
        -0x80t
        0x0t
        0x1bt
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        -0x76t
        0x0t
        0x1dt
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0xbt
        0x0t
        0x0t
        0x2t
        -0x62t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x57t
        0x47t
        0x53t
        0x2dt
        0x38t
        0x34t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x0t
        0x0t
    .end array-data

    .line 108
    :array_6
    .array-data 1
        0x0t
        0x7t
        0x1t
        0x3t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x6t
        0x0t
        0x0t
        0x1t
        0x12t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x6t
        0x0t
        0x0t
        0x1t
        0x1at
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x3t
        0x4t
        0x1t
        0x1bt
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x3t
        0xct
        0x1t
        0x28t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x2t
        0x1t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x3t
        0x14t
        0x2t
        0x2t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkArguments([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)V
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "option"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;

    .prologue
    .line 160
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mDateTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailData:[B

    if-nez v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_1
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mGPSOption:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mGPSOption:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mGPSOption:Landroid/location/Location;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 173
    :cond_2
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailData:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "thumbnail data length too big"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_3
    array-length v0, p0

    int-to-long v0, v0

    sget v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_LENGTH:I

    int-to-long v2, v2

    iget-wide v4, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_4
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mDateTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "YYYY:MM:DD hh:mm:ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 181
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "model or datetime too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_6
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_7

    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mDateTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "YYYY:MM:DD hh:mm:ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_8

    .line 185
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "model or datetime too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_8
    return-void
.end method

.method private static fillNullValue([BII)V
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "count"    # I

    .prologue
    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 404
    add-int v1, p1, v0

    const/4 v2, 0x0

    aput-byte v2, p0, v1

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_0
    return-void
.end method

.method public static generate([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)I
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "option"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;

    .prologue
    .line 138
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->checkArguments([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)V

    .line 140
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeTemplate([B)I

    move-result v0

    .line 142
    .local v0, "last":I
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mMake:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateMake([BLjava/lang/String;)V

    .line 143
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mModel:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateModel([BLjava/lang/String;)V

    .line 144
    iget v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mOrientation:I

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateOrientation([BI)V

    .line 145
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mDateTime:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateDateTime([BLjava/lang/String;)V

    .line 146
    iget-wide v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mPixelXDimension:J

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updatePixelXDimension([BJ)V

    .line 147
    iget-wide v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mPixelYDimension:J

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updatePixelYDimension([BJ)V

    .line 148
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mGPSOption:Landroid/location/Location;

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateGpsFields([BLandroid/location/Location;)V

    .line 149
    iget-wide v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateJpegInterchangeFormatLength([BJ)V

    .line 150
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailData:[B

    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    long-to-int v3, v3

    invoke-static {v1, v2, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    int-to-long v1, v0

    iget-wide v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 153
    add-int/lit8 v1, v0, -0x2

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateExifSize([BI)V

    .line 155
    return v0
.end method

.method public static getLength()I
    .locals 1

    .prologue
    .line 127
    sget v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_LENGTH:I

    return v0
.end method

.method private static removeGpsInfoFromHeader([B)V
    .locals 3
    .param p0, "buffer"    # [B

    .prologue
    .line 340
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x9

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeShortValue([BII)V

    .line 341
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x76

    const/16 v1, 0xb

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->fillNullValue([BII)V

    .line 342
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x76

    const-wide/16 v1, 0x2aa

    invoke-static {p0, v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 343
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x19a

    const/16 v1, 0x110

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->fillNullValue([BII)V

    .line 344
    return-void
.end method

.method private static updateDateTime([BLjava/lang/String;)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 212
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0xc2

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 213
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x154

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 214
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x168

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 215
    return-void
.end method

.method private static updateExifSize([BI)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "size"    # I

    .prologue
    .line 352
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x8

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeShortValue([BII)V

    .line 353
    return-void
.end method

.method private static updateGpsFields([BLandroid/location/Location;)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 228
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeGpsInfoToHeader([BLandroid/location/Location;)Z

    move-result v0

    .line 229
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 237
    .end local v0    # "ret":Z
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->removeGpsInfoFromHeader([B)V

    goto :goto_0
.end method

.method private static updateJpegInterchangeFormatLength([BJ)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "thumbnailDataLength"    # J

    .prologue
    .line 348
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x2fc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 349
    return-void
.end method

.method private static updateMake([BLjava/lang/String;)V
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "make"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xe

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 192
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "limitedString":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x86

    invoke-static {p0, v2, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    move-result v0

    .line 198
    .local v0, "length":I
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeShortValue([BII)V

    .line 199
    return-void

    .line 194
    .end local v0    # "length":I
    .end local v1    # "limitedString":Ljava/lang/String;
    :cond_0
    move-object v1, p1

    .restart local v1    # "limitedString":Ljava/lang/String;
    goto :goto_0
.end method

.method private static updateModel([BLjava/lang/String;)V
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 202
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    add-int/lit16 v1, v1, 0x94

    invoke-static {p0, v1, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    move-result v0

    .line 203
    .local v0, "length":I
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1a

    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-static {p0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 204
    return-void
.end method

.method private static updateOrientation([BI)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "orientation"    # I

    .prologue
    .line 207
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2a

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeShortValue([BII)V

    .line 208
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x2c0

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeShortValue([BII)V

    .line 209
    return-void
.end method

.method private static updatePixelXDimension([BJ)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "pixelXDimension"    # J

    .prologue
    .line 218
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x134

    add-int/lit8 v0, v0, -0xc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 219
    return-void
.end method

.method private static updatePixelYDimension([BJ)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "pixelYDimension"    # J

    .prologue
    .line 222
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x140

    add-int/lit8 v0, v0, -0xc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 223
    return-void
.end method

.method private static writeASCIIValue([BILjava/lang/String;)I
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 375
    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 376
    .local v0, "dst":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    array-length v1, v0

    return v1
.end method

.method private static writeByteValue([BII)V
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # I

    .prologue
    .line 381
    add-int/lit8 v0, p1, 0x0

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 382
    return-void
.end method

.method private static writeGpsInfoToHeader([BLandroid/location/Location;)Z
    .locals 21
    .param p0, "buffer"    # [B
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 241
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 242
    .local v10, "calendar":Ljava/util/Calendar;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    .line 245
    .local v13, "latitude":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v13, v2

    if-gez v2, :cond_0

    .line 246
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1b0

    const-string v3, "S"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 250
    neg-double v13, v13

    .line 253
    :cond_0
    const/16 v16, 0x0

    .line 255
    .local v16, "latitudeStr":Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_0
    invoke-static {v13, v14, v2}, Landroid/location/Location;->convert(DI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 260
    const-string v2, ":"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 263
    .local v15, "latitudeParts":[Ljava/lang/String;
    :try_start_1
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x230

    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 265
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x238

    const/4 v2, 0x1

    aget-object v2, v15, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 267
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x240

    const/4 v2, 0x2

    aget-object v2, v15, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v4, 0x447a0000

    mul-float/2addr v2, v4

    float-to-long v4, v2

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v17

    .line 276
    .local v17, "longitude":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v17, v2

    if-gez v2, :cond_1

    .line 277
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1c8

    const-string v3, "W"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 281
    move-wide/from16 v0, v17

    neg-double v0, v0

    move-wide/from16 v17, v0

    .line 284
    :cond_1
    const/16 v20, 0x0

    .line 286
    .local v20, "longitudeStr":Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_2
    move-wide/from16 v0, v17

    invoke-static {v0, v1, v2}, Landroid/location/Location;->convert(DI)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v20

    .line 292
    const-string v2, ":"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 295
    .local v19, "longitudeParts":[Ljava/lang/String;
    :try_start_3
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x248

    const/4 v2, 0x0

    aget-object v2, v19, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 297
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x250

    const/4 v2, 0x1

    aget-object v2, v19, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 299
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x258

    const/4 v2, 0x2

    aget-object v2, v19, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v4, 0x447a0000

    mul-float/2addr v2, v4

    float-to-long v4, v2

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    .line 308
    .local v8, "altitude":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v8, v2

    if-gez v2, :cond_2

    .line 309
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1e0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeByteValue([BII)V

    .line 311
    :cond_2
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x260

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v4, v8

    double-to-long v4, v4

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 314
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 316
    const/4 v12, 0x0

    .line 318
    .local v12, "gpsDateStamp":Ljava/lang/String;
    :try_start_4
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x268

    const/16 v2, 0xb

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 320
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x270

    const/16 v2, 0xc

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v4, v2

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 322
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x278

    const/16 v2, 0xd

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 326
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%04d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v12

    .line 333
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x29e

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 335
    const/4 v2, 0x1

    .end local v8    # "altitude":D
    .end local v12    # "gpsDateStamp":Ljava/lang/String;
    .end local v15    # "latitudeParts":[Ljava/lang/String;
    .end local v17    # "longitude":D
    .end local v19    # "longitudeParts":[Ljava/lang/String;
    .end local v20    # "longitudeStr":Ljava/lang/String;
    :goto_0
    return v2

    .line 256
    :catch_0
    move-exception v11

    .line 258
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0

    .line 270
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v15    # "latitudeParts":[Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 272
    .local v11, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0

    .line 287
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v17    # "longitude":D
    .restart local v20    # "longitudeStr":Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 289
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0

    .line 302
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v19    # "longitudeParts":[Ljava/lang/String;
    :catch_3
    move-exception v11

    .line 304
    .local v11, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0

    .line 328
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "altitude":D
    .restart local v12    # "gpsDateStamp":Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 330
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static writeLongValue([BIJ)V
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # J

    .prologue
    const-wide/16 v3, 0x100

    .line 390
    add-int/lit8 v0, p1, 0x0

    const-wide/32 v1, 0x1000000

    div-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 391
    add-int/lit8 v0, p1, 0x1

    const-wide/32 v1, 0x10000

    div-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 392
    add-int/lit8 v0, p1, 0x2

    div-long v1, p2, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 393
    add-int/lit8 v0, p1, 0x3

    rem-long v1, p2, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 394
    return-void
.end method

.method private static writeRationalValue([BIJJ)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "denominator"    # J
    .param p4, "numerator"    # J

    .prologue
    .line 398
    add-int/lit8 v0, p1, 0x0

    invoke-static {p0, v0, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 399
    add-int/lit8 v0, p1, 0x4

    invoke-static {p0, v0, p4, p5}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 400
    return-void
.end method

.method private static writeShortValue([BII)V
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # I

    .prologue
    .line 385
    add-int/lit8 v0, p1, 0x0

    div-int/lit16 v1, p2, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 386
    add-int/lit8 v0, p1, 0x1

    rem-int/lit16 v1, p2, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 387
    return-void
.end method

.method private static writeTemplate([B)I
    .locals 4
    .param p0, "buffer"    # [B

    .prologue
    const/4 v3, 0x0

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "last":I
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 359
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->TIFF_HEADER:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->TIFF_HEADER:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->TIFF_HEADER:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 361
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 363
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->EXIF_IFD:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->EXIF_IFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->EXIF_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 365
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_INT:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_INT:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_INT:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 367
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->GPS_IFD:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->GPS_IFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->GPS_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 369
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->FIRST_IFD:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->FIRST_IFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->FIRST_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 371
    return v0
.end method
