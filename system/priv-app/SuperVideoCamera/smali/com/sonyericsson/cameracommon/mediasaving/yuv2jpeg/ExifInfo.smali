.class public Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;
.super Ljava/lang/Object;
.source "ExifInfo.java"


# instance fields
.field private final mHeight:I

.field private final mLocation:Landroid/location/Location;

.field private final mOrientation:I

.field private mTimestamp:J

.field private final mWidth:I


# direct methods
.method public constructor <init>(JILandroid/location/Location;II)V
    .locals 2
    .param p1, "timeStamp"    # J
    .param p3, "orientation"    # I
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    .line 37
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    .line 38
    iput p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mOrientation:I

    .line 39
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mLocation:Landroid/location/Location;

    .line 40
    iput p5, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mWidth:I

    .line 41
    iput p6, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mHeight:I

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    .line 46
    iget-wide v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->dateTaken:J

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    .line 47
    iget v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->orientation:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mOrientation:I

    .line 48
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->location:Landroid/location/Location;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mLocation:Landroid/location/Location;

    .line 49
    iget v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->width:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mWidth:I

    .line 50
    iget v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->height:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mHeight:I

    .line 51
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mHeight:I

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mOrientation:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mWidth:I

    return v0
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    .line 64
    return-void
.end method
