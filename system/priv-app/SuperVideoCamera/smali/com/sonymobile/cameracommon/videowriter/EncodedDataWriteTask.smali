.class Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;
.super Ljava/lang/Object;
.source "EncodedDataWriteTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask$EncodedDataWriteListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_DIFF:J = 0x0L

.field private static final OUTPUTBUFFER_TIMEOUT_NANOSECONDS:J = 0x5f5e100L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCodec:Landroid/media/MediaCodec;

.field private final mListener:Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask$EncodedDataWriteListener;

.field private final mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerIndex:I

.field private final mName:Ljava/lang/String;

.field private mTimeDiff:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaMuxer;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask$EncodedDataWriteListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "muxer"    # Landroid/media/MediaMuxer;
    .param p2, "encoder"    # Landroid/media/MediaCodec;
    .param p3, "listener"    # Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask$EncodedDataWriteListener;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p4, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mName:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    .line 48
    iput-object p2, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    .line 49
    iput-object p3, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask$EncodedDataWriteListener;

    .line 50
    return-void
.end method

.method private awaitEncoderFormat()Z
    .locals 5

    .prologue
    .line 159
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 161
    .local v0, "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :cond_0
    invoke-static {}, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->canceled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    const-wide/32 v3, 0x5f5e100

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 165
    .local v1, "info":I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 167
    const/4 v2, 0x1

    .line 175
    .end local v1    # "info":I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static canceled()Z
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    const/4 v12, 0x4

    const/4 v11, 0x0

    .line 54
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->awaitEncoderFormat()Z

    move-result v7

    if-nez v7, :cond_0

    .line 156
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v7, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 60
    .local v4, "outputBuffers":[Ljava/nio/ByteBuffer;
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 62
    .local v1, "info":Landroid/media/MediaCodec$BufferInfo;
    const-wide/16 v5, -0x1

    .line 63
    .local v5, "presentationTime":J
    iput-wide v13, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mTimeDiff:J

    .line 66
    iget-object v7, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 67
    .local v0, "format":Landroid/media/MediaFormat;
    iget-object v7, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    iput v7, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mMuxerIndex:I

    .line 69
    iget-object v7, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask$EncodedDataWriteListener;

    if-eqz v7, :cond_1

    .line 70
    iget-object v7, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask$EncodedDataWriteListener;

    invoke-interface {v7, v0}, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask$EncodedDataWriteListener;->onEncoderFormatChanged(Landroid/media/MediaFormat;)V

    .line 73
    :cond_1
    :goto_1
    invoke-static {}, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->canceled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 74
    iget-object v7, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    const-wide/32 v8, 0x5f5e100

    invoke-virtual {v7, v1, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 77
    .local v3, "outputBufferIndex":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_3

    .line 79
    invoke-static {}, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->canceled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 155
    .end local v3    # "outputBufferIndex":I
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask$EncodedDataWriteListener;

    invoke-interface {v7}, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask$EncodedDataWriteListener;->onEncoderFinished()V

    goto :goto_0

    .line 87
    .restart local v3    # "outputBufferIndex":I
    :cond_3
    if-ltz v3, :cond_9

    .line 88
    invoke-static {}, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->canceled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 90
    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 97
    :cond_4
    aget-object v2, v4, v3

    .line 98
    .local v2, "outbuffer":Ljava/nio/ByteBuffer;
    iget-wide v7, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v7, v5, v7

    if-ltz v7, :cond_5

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 106
    :cond_5
    iget-wide v7, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mTimeDiff:J

    cmp-long v7, v7, v13

    if-nez v7, :cond_6

    .line 107
    iget-wide v7, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v7, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mTimeDiff:J

    .line 112
    :cond_6
    iget-wide v7, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v9, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mTimeDiff:J

    sub-long/2addr v7, v9

    iput-wide v7, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 114
    iget-object v7, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    iget v8, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mMuxerIndex:I

    invoke-virtual {v7, v8, v2, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 115
    iget-wide v5, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 116
    iget-object v7, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask$EncodedDataWriteListener;

    if-eqz v7, :cond_7

    .line 117
    iget-object v7, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask$EncodedDataWriteListener;

    invoke-interface {v7, v5, v6}, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask$EncodedDataWriteListener;->onEncodedDataWritten(J)V

    .line 132
    :cond_7
    :goto_3
    iget-object v7, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7, v3, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 134
    invoke-static {}, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->canceled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 139
    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-ne v7, v12, :cond_1

    goto :goto_2

    .line 120
    :cond_8
    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-ne v7, v12, :cond_7

    .line 121
    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    iput-wide v7, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 122
    iput v11, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 128
    iget-object v7, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    iget v8, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mMuxerIndex:I

    invoke-virtual {v7, v8, v2, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 129
    iget-wide v5, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_3

    .line 146
    .end local v2    # "outbuffer":Ljava/nio/ByteBuffer;
    :cond_9
    const/4 v7, -0x3

    if-ne v3, v7, :cond_a

    .line 148
    iget-object v7, p0, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    goto/16 :goto_1

    .line 150
    :cond_a
    const/4 v7, -0x2

    if-ne v3, v7, :cond_1

    goto/16 :goto_1
.end method
