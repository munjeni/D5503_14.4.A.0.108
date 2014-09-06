.class Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;
.super Ljava/lang/Object;
.source "ExifOption.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifOption"


# instance fields
.field public mDateTime:Ljava/lang/String;

.field public mGPSOption:Landroid/location/Location;

.field public mMake:Ljava/lang/String;

.field public mModel:Ljava/lang/String;

.field public mOrientation:I

.field public mPixelXDimension:J

.field public mPixelYDimension:J

.field public mThumbnailData:[B

.field public mThumbnailDataLength:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mOrientation:I

    return-void
.end method

.method public static create(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;[B)Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;
    .locals 3
    .param p0, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;
    .param p1, "thumbnailData"    # [B

    .prologue
    .line 71
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;-><init>()V

    .line 73
    .local v0, "exifOption":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mMake:Ljava/lang/String;

    .line 74
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mModel:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getOrientation()I

    move-result v1

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->getExifOrientation(I)S

    move-result v1

    iput v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mOrientation:I

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->getExifDate(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mDateTime:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getWidth()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mPixelXDimension:J

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getHeight()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mPixelYDimension:J

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mGPSOption:Landroid/location/Location;

    .line 83
    if-nez p1, :cond_0

    .line 86
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailData:[B

    .line 87
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    .line 95
    :goto_0
    return-object v0

    .line 89
    :cond_0
    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailData:[B

    .line 90
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailData:[B

    array-length v1, v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    goto :goto_0
.end method

.method public static getExifDate(J)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # J

    .prologue
    .line 141
    const-string v0, "yyyy:MM:dd kk:mm:ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExifOrientation(I)S
    .locals 1
    .param p0, "degrees"    # I

    .prologue
    .line 116
    if-gez p0, :cond_0

    .line 117
    add-int/lit16 p0, p0, 0x168

    .line 119
    :cond_0
    const/4 v0, 0x1

    .line 120
    .local v0, "orientation":S
    sparse-switch p0, :sswitch_data_0

    .line 134
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    .line 122
    :sswitch_0
    const/4 v0, 0x1

    .line 123
    goto :goto_0

    .line 125
    :sswitch_1
    const/4 v0, 0x6

    .line 126
    goto :goto_0

    .line 128
    :sswitch_2
    const/4 v0, 0x3

    .line 129
    goto :goto_0

    .line 131
    :sswitch_3
    const/16 v0, 0x8

    .line 132
    goto :goto_0

    .line 120
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private static log(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)V
    .locals 4
    .param p0, "exifOption"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;

    .prologue
    .line 99
    const-string v0, "ExifOption"

    const-string v1, "dump of exifOption: "

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v0, "ExifOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMake = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mMake:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "ExifOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mModel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v0, "ExifOption"

    const-string v1, "mOrientation = "

    iget v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mOrientation:I

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->showOrientation(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    const-string v0, "ExifOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDateTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mDateTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v0, "ExifOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPixelXDimension = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mPixelXDimension:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "ExifOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPixelYDimension = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mPixelYDimension:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v0, "ExifOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGPSOption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mGPSOption:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v0, "ExifOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mThumbnailDataLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method
