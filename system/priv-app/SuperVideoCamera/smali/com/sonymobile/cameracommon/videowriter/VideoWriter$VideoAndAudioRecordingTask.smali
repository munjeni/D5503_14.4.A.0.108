.class Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoAndAudioRecordingTask;
.super Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;
.source "VideoWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/videowriter/VideoWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoAndAudioRecordingTask"
.end annotation


# instance fields
.field private final mAudioEncoder:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

.field private final mAudioSampleDataSource:Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;

.field private final mVideoEncoder:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/videowriter/VideoWriter;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;Landroid/media/MediaMuxer;Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;I)V
    .locals 5
    .param p2, "muxer"    # Landroid/media/MediaMuxer;
    .param p3, "videoEncoder"    # Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    .param p4, "audioEncoder"    # Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    .param p5, "audioFormat"    # I

    .prologue
    .line 451
    iput-object p1, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoAndAudioRecordingTask;->this$0:Lcom/sonymobile/cameracommon/videowriter/VideoWriter;

    .line 452
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;-><init>(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;Landroid/media/MediaMuxer;)V

    .line 453
    iput-object p3, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoAndAudioRecordingTask;->mVideoEncoder:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    .line 454
    iput-object p4, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoAndAudioRecordingTask;->mAudioEncoder:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    .line 456
    iget-object v3, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoAndAudioRecordingTask;->mAudioEncoder:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->format:Landroid/media/MediaFormat;

    const-string v4, "sample-rate"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 457
    .local v2, "sampleRate":I
    iget-object v3, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoAndAudioRecordingTask;->mAudioEncoder:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->format:Landroid/media/MediaFormat;

    const-string v4, "channel-count"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 458
    .local v1, "channelCount":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/16 v0, 0xc

    .line 460
    .local v0, "channelConfig":I
    :goto_0
    new-instance v3, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoAndAudioRecordingTask;->mAudioEncoder:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    iget-object v4, v4, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->codec:Landroid/media/MediaCodec;

    invoke-direct {v3, v4, v2, v0, p5}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;-><init>(Landroid/media/MediaCodec;III)V

    iput-object v3, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoAndAudioRecordingTask;->mAudioSampleDataSource:Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;

    .line 465
    return-void

    .line 458
    .end local v0    # "channelConfig":I
    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method


# virtual methods
.method encoders()[Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    .locals 3

    .prologue
    .line 485
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoAndAudioRecordingTask;->mVideoEncoder:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoAndAudioRecordingTask;->mAudioEncoder:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    aput-object v2, v0, v1

    return-object v0
.end method

.method releaseInputDataSource()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoAndAudioRecordingTask;->mAudioSampleDataSource:Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->release()V

    .line 481
    return-void
.end method

.method startInputDataSource()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoAndAudioRecordingTask;->mAudioSampleDataSource:Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->start()V

    .line 470
    return-void
.end method

.method stopInputDataSource()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoAndAudioRecordingTask;->mVideoEncoder:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 475
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoAndAudioRecordingTask;->mAudioSampleDataSource:Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->stop()V

    .line 476
    return-void
.end method
