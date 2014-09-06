.class abstract Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;
.super Ljava/lang/Object;
.source "VideoWriter.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask$EncodedDataWriteListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/videowriter/VideoWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseRecordingTask"
.end annotation


# instance fields
.field private mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

.field private mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/videowriter/VideoWriter;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;Landroid/media/MediaMuxer;)V
    .locals 0
    .param p2, "muxer"    # Landroid/media/MediaMuxer;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->this$0:Lcom/sonymobile/cameracommon/videowriter/VideoWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->mMuxer:Landroid/media/MediaMuxer;

    .line 221
    return-void
.end method

.method private startMediaMuxerAfterEncodedFormatIsFixed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 346
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 350
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 352
    return-void
.end method


# virtual methods
.method abstract encoders()[Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
.end method

.method public onEncodedDataWritten(J)V
    .locals 0
    .param p1, "presentationTime"    # J

    .prologue
    .line 323
    return-void
.end method

.method public onEncoderFinished()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 339
    return-void
.end method

.method public onEncoderFormatChanged(Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method releaseEncoders()V
    .locals 5

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->encoders()[Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 387
    .local v1, "encoder":Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    iget-object v4, v1, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 386
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    .end local v1    # "encoder":Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    :cond_0
    return-void
.end method

.method abstract releaseInputDataSource()V
.end method

.method releaseMuxer()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 402
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 244
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->encoders()[Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 245
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 246
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->encoders()[Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

    .line 248
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->startEncoders()V

    .line 251
    iget-object v1, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->this$0:Lcom/sonymobile/cameracommon/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mReferenceClock:Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->access$200(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;)Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;->start()V

    .line 252
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->startInputDataSource()V

    .line 255
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->startEncodedDataWriteTasks()V

    .line 270
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->startMediaMuxerAfterEncodedFormatIsFixed()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    iget-object v1, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->this$0:Lcom/sonymobile/cameracommon/videowriter/VideoWriter;

    # invokes: Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->sendOnStartedEvent()V
    invoke-static {v1}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->access$300(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;)V

    .line 283
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->this$0:Lcom/sonymobile/cameracommon/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->access$400(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 291
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->stopInputDataSource()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 299
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 305
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->stopEncoders()V

    .line 306
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->stopMuxer()V

    .line 309
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->releaseInputDataSource()V

    .line 310
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->releaseEncoders()V

    .line 311
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->releaseMuxer()V

    .line 313
    iget-object v1, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->this$0:Lcom/sonymobile/cameracommon/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mReferenceClock:Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->access$200(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;)Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;->stop()V

    .line 315
    iget-object v1, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->this$0:Lcom/sonymobile/cameracommon/videowriter/VideoWriter;

    # invokes: Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->sendOnFinishedEvent()V
    invoke-static {v1}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->access$500(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;)V

    .line 318
    :goto_3
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->stopEncoders()V

    goto :goto_3

    .line 292
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    goto :goto_1

    .line 302
    :catch_2
    move-exception v1

    goto :goto_2

    .line 284
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method startEncodedDataWriteTasks()V
    .locals 9

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->encoders()[Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    move-result-object v5

    array-length v5, v5

    invoke-static {v5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 358
    .local v3, "inputEncodedDataThreadPool":Ljava/util/concurrent/ExecutorService;
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->encoders()[Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 359
    .local v1, "encoder":Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    new-instance v5, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;

    iget-object v6, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v7, v1, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->mimeType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, p0, v8}, Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask;-><init>(Landroid/media/MediaMuxer;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/videowriter/EncodedDataWriteTask$EncodedDataWriteListener;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    .end local v1    # "encoder":Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    :cond_0
    return-void
.end method

.method startEncoders()V
    .locals 5

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->encoders()[Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 371
    .local v1, "encoder":Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    iget-object v4, v1, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 370
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    .end local v1    # "encoder":Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    :cond_0
    return-void
.end method

.method abstract startInputDataSource()V
.end method

.method stopEncoders()V
    .locals 5

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->encoders()[Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 379
    .local v1, "encoder":Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    iget-object v4, v1, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    .end local v1    # "encoder":Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    :cond_0
    return-void
.end method

.method abstract stopInputDataSource()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method stopMuxer()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 396
    return-void
.end method
