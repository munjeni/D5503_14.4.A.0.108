.class Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
.super Ljava/lang/Object;
.source "VideoWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/videowriter/VideoWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Encoder"
.end annotation


# instance fields
.field public final codec:Landroid/media/MediaCodec;

.field public final format:Landroid/media/MediaFormat;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V
    .locals 0
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "codec"    # Landroid/media/MediaCodec;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->format:Landroid/media/MediaFormat;

    .line 170
    iput-object p2, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->codec:Landroid/media/MediaCodec;

    .line 171
    return-void
.end method

.method public static createAudioEncoder(Landroid/media/CamcorderProfile;)Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    .locals 4
    .param p0, "profile"    # Landroid/media/CamcorderProfile;

    .prologue
    .line 190
    const-string v1, "audio/mp4a-latm"

    iget v2, p0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iget v3, p0, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 192
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "bitrate"

    iget v2, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 193
    const-string v1, "aac-profile"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 196
    invoke-static {v0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->createEncoderWith(Landroid/media/MediaFormat;)Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    move-result-object v1

    return-object v1
.end method

.method private static createEncoderWith(Landroid/media/MediaFormat;)Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    .locals 3
    .param p0, "format"    # Landroid/media/MediaFormat;

    .prologue
    const/4 v2, 0x0

    .line 200
    const-string v1, "mime"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 202
    .local v0, "codec":Landroid/media/MediaCodec;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 204
    new-instance v1, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;-><init>(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V

    return-object v1
.end method

.method public static createVideoEncoder(Landroid/media/CamcorderProfile;)Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    .locals 4
    .param p0, "profile"    # Landroid/media/CamcorderProfile;

    .prologue
    .line 178
    const-string v1, "video/avc"

    iget v2, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v3, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 180
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 182
    const-string v1, "bitrate"

    iget v2, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 183
    const-string v1, "frame-rate"

    iget v2, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 184
    const-string v1, "i-frame-interval"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 186
    invoke-static {v0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->createEncoderWith(Landroid/media/MediaFormat;)Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public mimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->format:Landroid/media/MediaFormat;

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
