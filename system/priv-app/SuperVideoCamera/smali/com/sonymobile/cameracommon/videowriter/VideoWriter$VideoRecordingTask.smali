.class Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoRecordingTask;
.super Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;
.source "VideoWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/videowriter/VideoWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoRecordingTask"
.end annotation


# instance fields
.field private final mVideoEncoder:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/videowriter/VideoWriter;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;Landroid/media/MediaMuxer;Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;)V
    .locals 0
    .param p2, "muxer"    # Landroid/media/MediaMuxer;
    .param p3, "videoEncoder"    # Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoRecordingTask;->this$0:Lcom/sonymobile/cameracommon/videowriter/VideoWriter;

    .line 413
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;-><init>(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;Landroid/media/MediaMuxer;)V

    .line 414
    iput-object p3, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoRecordingTask;->mVideoEncoder:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    .line 415
    return-void
.end method


# virtual methods
.method encoders()[Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    .locals 3

    .prologue
    .line 434
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoRecordingTask;->mVideoEncoder:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    aput-object v2, v0, v1

    return-object v0
.end method

.method releaseInputDataSource()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method startInputDataSource()V
    .locals 0

    .prologue
    .line 420
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
    .line 424
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoRecordingTask;->mVideoEncoder:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 425
    return-void
.end method
