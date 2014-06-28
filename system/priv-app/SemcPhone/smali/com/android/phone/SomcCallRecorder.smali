.class public Lcom/android/phone/SomcCallRecorder;
.super Ljava/lang/Object;
.source "SomcCallRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcCallRecorder$RecorderTask;,
        Lcom/android/phone/SomcCallRecorder$EventListener;,
        Lcom/android/phone/SomcCallRecorder$EventHandler;,
        Lcom/android/phone/SomcCallRecorder$RecordingMode;
    }
.end annotation


# instance fields
.field private final mCheckStorageRunnable:Ljava/lang/Runnable;

.field private mEventHandler:Lcom/android/phone/SomcCallRecorder$EventHandler;

.field private mEventListener:Lcom/android/phone/SomcCallRecorder$EventListener;

.field private mFilePath:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mRecMode:Lcom/android/phone/SomcCallRecorder$RecordingMode;

.field private mRecorderTask:Lcom/android/phone/SomcCallRecorder$RecorderTask;

.field private mSaveDirectory:Ljava/lang/String;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lcom/android/phone/SomcCallRecorder$RecordingMode;->INIT:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    iput-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mRecMode:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    .line 146
    iput-object v1, p0, Lcom/android/phone/SomcCallRecorder;->mFilePath:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Lcom/android/phone/SomcCallRecorder;->mSaveDirectory:Ljava/lang/String;

    .line 245
    new-instance v0, Lcom/android/phone/SomcCallRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcCallRecorder$1;-><init>(Lcom/android/phone/SomcCallRecorder;)V

    iput-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mCheckStorageRunnable:Ljava/lang/Runnable;

    .line 262
    iput-object p1, p0, Lcom/android/phone/SomcCallRecorder;->mHandler:Landroid/os/Handler;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/recorder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mSaveDirectory:Ljava/lang/String;

    .line 264
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SomcCallRecorder;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcCallRecorder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/phone/SomcCallRecorder;->createNewFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/android/phone/SomcCallRecorder;->checkStorageSpace()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/SomcCallRecorder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcCallRecorder;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/phone/SomcCallRecorder;->handleError(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SomcCallRecorder;)Lcom/android/phone/SomcCallRecorder$EventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcCallRecorder;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mEventListener:Lcom/android/phone/SomcCallRecorder$EventListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/SomcCallRecorder;)Lcom/android/phone/SomcCallRecorder$RecordingMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcCallRecorder;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mRecMode:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/SomcCallRecorder;Lcom/android/phone/SomcCallRecorder$RecordingMode;)Lcom/android/phone/SomcCallRecorder$RecordingMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcCallRecorder;
    .param p1, "x1"    # Lcom/android/phone/SomcCallRecorder$RecordingMode;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/phone/SomcCallRecorder;->mRecMode:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/phone/SomcCallRecorder;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcCallRecorder;
    .param p1, "x1"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/android/phone/SomcCallRecorder;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/android/phone/SomcCallRecorder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcCallRecorder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/phone/SomcCallRecorder;->mFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/SomcCallRecorder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcCallRecorder;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/phone/SomcCallRecorder;->handleEvent(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/SomcCallRecorder;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcCallRecorder;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mCheckStorageRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/SomcCallRecorder;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcCallRecorder;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/SomcCallRecorder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcCallRecorder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/phone/SomcCallRecorder;->mSaveDirectory:Ljava/lang/String;

    return-object p1
.end method

.method private static checkStorageSpace()Z
    .locals 5

    .prologue
    .line 406
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, "statfs":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x100000

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createNewFile()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v2, p0, Lcom/android/phone/SomcCallRecorder;->mSaveDirectory:Ljava/lang/String;

    .line 379
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v1, "filePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 381
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/phone/SomcCallRecorder;->generateFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 384
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static generateFilename()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 388
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 390
    .local v0, "cal":Ljava/util/Calendar;
    const-string v2, "%d-%02d-%02d-%02d-%02d-%02d.amr"

    .line 391
    .local v2, "format":Ljava/lang/String;
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 392
    .local v7, "year":I
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v5, v8, 0x1

    .line 393
    .local v5, "month":I
    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 394
    .local v1, "day":I
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 395
    .local v3, "hour":I
    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 396
    .local v4, "minute":I
    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 397
    .local v6, "second":I
    const-string v8, "%d-%02d-%02d-%02d-%02d-%02d.amr"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    const/4 v10, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private handleError(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 367
    packed-switch p1, :pswitch_data_0

    .line 375
    :goto_0
    return-void

    .line 369
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mEventListener:Lcom/android/phone/SomcCallRecorder$EventListener;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mEventListener:Lcom/android/phone/SomcCallRecorder$EventListener;

    invoke-interface {v0}, Lcom/android/phone/SomcCallRecorder$EventListener;->onNotEnoughStorage()V

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SomcCallRecorder;->stop()V

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method

.method private handleEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mEventHandler:Lcom/android/phone/SomcCallRecorder$EventHandler;

    if-nez v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mEventHandler:Lcom/android/phone/SomcCallRecorder$EventHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcCallRecorder$EventHandler;->handleEvent(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearFilePath()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mFilePath:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public getDuration()J
    .locals 4

    .prologue
    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/SomcCallRecorder;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized isRecording()Z
    .locals 1

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mRecorderTask:Lcom/android/phone/SomcCallRecorder$RecorderTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mRecorderTask:Lcom/android/phone/SomcCallRecorder$RecorderTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSecureMode()Z
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mRecMode:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    sget-object v1, Lcom/android/phone/SomcCallRecorder$RecordingMode;->SECURE_REC_WITH_MIC:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mRecMode:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    sget-object v1, Lcom/android/phone/SomcCallRecorder$RecordingMode;->SECURE_REC_WITH_DOWNLINK:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerEventHandler(Lcom/android/phone/SomcCallRecorder$EventHandler;)V
    .locals 0
    .param p1, "eventHandler"    # Lcom/android/phone/SomcCallRecorder$EventHandler;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/phone/SomcCallRecorder;->mEventHandler:Lcom/android/phone/SomcCallRecorder$EventHandler;

    .line 274
    return-void
.end method

.method public setEventListener(Lcom/android/phone/SomcCallRecorder$EventListener;)V
    .locals 0
    .param p1, "eventListener"    # Lcom/android/phone/SomcCallRecorder$EventListener;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/phone/SomcCallRecorder;->mEventListener:Lcom/android/phone/SomcCallRecorder$EventListener;

    .line 291
    return-void
.end method

.method public setRecordingMode(Lcom/android/phone/SomcCallRecorder$RecordingMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/android/phone/SomcCallRecorder$RecordingMode;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/phone/SomcCallRecorder;->mRecMode:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    .line 418
    return-void
.end method

.method public setSaveDirectory(Ljava/lang/String;)V
    .locals 0
    .param p1, "directory"    # Ljava/lang/String;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/phone/SomcCallRecorder;->mSaveDirectory:Ljava/lang/String;

    .line 437
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/phone/SomcCallRecorder;->checkStorageSpace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/android/phone/SomcCallRecorder;->handleEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :goto_0
    monitor-exit p0

    return-void

    .line 303
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/phone/SomcCallRecorder$RecorderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/SomcCallRecorder$RecorderTask;-><init>(Lcom/android/phone/SomcCallRecorder;Lcom/android/phone/SomcCallRecorder$1;)V

    iput-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mRecorderTask:Lcom/android/phone/SomcCallRecorder$RecorderTask;

    .line 304
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mRecorderTask:Lcom/android/phone/SomcCallRecorder$RecorderTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 316
    :goto_0
    monitor-exit p0

    return-void

    .line 313
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mRecorderTask:Lcom/android/phone/SomcCallRecorder$RecorderTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mRecorderTask:Lcom/android/phone/SomcCallRecorder$RecorderTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterEventHandler()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcCallRecorder;->mEventHandler:Lcom/android/phone/SomcCallRecorder$EventHandler;

    .line 282
    return-void
.end method
