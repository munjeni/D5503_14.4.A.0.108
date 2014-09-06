.class Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;
.super Ljava/lang/Object;
.source "AudioSampleDataSource.java"

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# static fields
.field private static final INPUTBUFFER_TIMEOUT_MICROSECONDS:J = 0x186a0L

.field private static final NOTIFICATION_COUNT_PER_SECOND:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mAlreadyEos:Z

.field private final mAudioBuffer:Ljava/nio/ByteBuffer;

.field private final mAudioRecord:Landroid/media/AudioRecord;

.field private final mChannelConfig:I

.field private final mCodec:Landroid/media/MediaCodec;

.field private final mFormat:I

.field private final mNotificationPeriod:I

.field private mSampleCount:J

.field private final mSampleDataBytes:I

.field private final mSampleRate:I

.field private final mWorker:Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;III)V
    .locals 6
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "sampleRate"    # I
    .param p3, "channelConfig"    # I
    .param p4, "format"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mAlreadyEos:Z

    .line 57
    iput-object p1, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mCodec:Landroid/media/MediaCodec;

    .line 58
    iput p2, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mSampleRate:I

    .line 59
    iput p3, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mChannelConfig:I

    .line 60
    iput p4, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mFormat:I

    .line 62
    iget v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mSampleRate:I

    iget v1, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mChannelConfig:I

    iget v2, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mFormat:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v5, v0, 0x8

    .line 64
    .local v5, "bufferSize":I
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mSampleRate:I

    const/16 v3, 0xc

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    .line 71
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mAudioBuffer:Ljava/nio/ByteBuffer;

    .line 72
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->computeSampleDataBytes()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mSampleDataBytes:I

    .line 73
    iget v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mSampleRate:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mNotificationPeriod:I

    .line 75
    new-instance v0, Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;

    const-string v1, "AudioSampleDataReaderThread"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mWorker:Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->readSampleData(Z)V

    return-void
.end method

.method private bytesInFrame()I
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Specified Audio format is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :pswitch_0
    const/4 v0, 0x2

    .line 152
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private channels()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    return v0
.end method

.method private computeSampleDataBytes()I
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->bytesInFrame()I

    move-result v0

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->channels()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private getPresentationTime()J
    .locals 2

    .prologue
    .line 167
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->getPresentationTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getPresentationTime(J)J
    .locals 4
    .param p1, "additionalSampleCount"    # J

    .prologue
    .line 171
    const-wide/32 v0, 0xf4240

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mSampleCount:J

    add-long/2addr v2, p1

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static isCancelled()Z
    .locals 1

    .prologue
    .line 276
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method

.method private pushToEncoder([BIJZ[Ljava/nio/ByteBuffer;)V
    .locals 13
    .param p1, "rawData"    # [B
    .param p2, "rawDataBytes"    # I
    .param p3, "presentationTime"    # J
    .param p5, "eos"    # Z
    .param p6, "inputBuffers"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 236
    const/4 v10, 0x0

    .line 237
    .local v10, "writtenBytes":I
    const/4 v7, 0x0

    .line 239
    .local v7, "hasWrittenAll":Z
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v7, :cond_3

    .line 241
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mCodec:Landroid/media/MediaCodec;

    const-wide/32 v11, 0x186a0

    invoke-virtual {v0, v11, v12}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 242
    .local v1, "inputBufferIndex":I
    if-ltz v1, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->computeSampleDataBytes()I

    move-result v0

    div-int v0, v10, v0

    int-to-long v11, v0

    invoke-direct {p0, v11, v12}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->getPresentationTime(J)J

    move-result-wide v4

    .line 251
    .local v4, "currentPresentationTime":J
    aget-object v8, p6, v1

    .line 252
    .local v8, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    move-result v0

    sub-int v2, p2, v10

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 253
    .local v9, "requestBytes":I
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 254
    invoke-virtual {v8, p1, v10, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 256
    invoke-virtual {v8}, Ljava/nio/Buffer;->position()I

    move-result v3

    .line 257
    .local v3, "size":I
    add-int/2addr v10, v3

    .line 263
    if-lt v10, p2, :cond_1

    const/4 v7, 0x1

    .line 264
    :goto_1
    if-eqz v7, :cond_2

    if-eqz p5, :cond_2

    const/4 v6, 0x4

    .line 266
    .local v6, "flags":I
    :goto_2
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 263
    .end local v6    # "flags":I
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 264
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 273
    .end local v1    # "inputBufferIndex":I
    .end local v3    # "size":I
    .end local v4    # "currentPresentationTime":J
    .end local v8    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v9    # "requestBytes":I
    :cond_3
    return-void
.end method

.method private readSampleData(Z)V
    .locals 11
    .param p1, "requestEos"    # Z

    .prologue
    const/4 v9, 0x1

    .line 177
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mAlreadyEos:Z

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    :pswitch_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 184
    .local v6, "inputBuffers":[Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mAudioBuffer:Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mAudioBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/Buffer;->limit()I

    move-result v10

    invoke-virtual {v0, v1, v10}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 185
    .local v2, "readBytes":I
    packed-switch v2, :pswitch_data_0

    .line 196
    :goto_1
    iget v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mSampleDataBytes:I

    div-int v0, v2, v0

    int-to-long v7, v0

    .line 204
    .local v7, "readSampleCount":J
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->getPresentationTime()J

    move-result-wide v3

    .line 205
    .local v3, "presentationTime":J
    if-nez v2, :cond_2

    move v0, v9

    :goto_2
    or-int v5, v0, p1

    .line 211
    .local v5, "eos":Z
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mAudioBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->pushToEncoder([BIJZ[Ljava/nio/ByteBuffer;)V

    .line 217
    if-eqz v5, :cond_1

    .line 218
    iput-boolean v9, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mAlreadyEos:Z

    .line 221
    :cond_1
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mSampleCount:J

    add-long/2addr v0, v7

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mSampleCount:J

    goto :goto_0

    .line 193
    .end local v3    # "presentationTime":J
    .end local v5    # "eos":Z
    .end local v7    # "readSampleCount":J
    :pswitch_1
    const/4 v2, 0x0

    goto :goto_1

    .line 205
    .restart local v3    # "presentationTime":J
    .restart local v7    # "readSampleCount":J
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 185
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private requestToReadSampleData(Z)V
    .locals 2
    .param p1, "eos"    # Z

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mWorker:Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource$1;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource$1;-><init>(Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .locals 0
    .param p1, "recorder"    # Landroid/media/AudioRecord;

    .prologue
    .line 128
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 1
    .param p1, "recorder"    # Landroid/media/AudioRecord;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->readSampleData(Z)V

    .line 135
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 87
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 92
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mSampleCount:J

    .line 94
    iget-object v1, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    iget v2, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mNotificationPeriod:I

    invoke-virtual {v1, v2}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    move-result v0

    .line 95
    .local v0, "r":I
    if-eqz v0, :cond_0

    .line 96
    sget-object v1, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->TAG:Ljava/lang/String;

    const-string v2, "setPositionNotificationPeriod:failed"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mWorker:Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 99
    iget-object v1, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 103
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->requestToReadSampleData(Z)V

    .line 105
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->requestToReadSampleData(Z)V

    .line 119
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->mWorker:Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/videowriter/BackgroundWorker;->quit()V

    .line 123
    return-void
.end method
