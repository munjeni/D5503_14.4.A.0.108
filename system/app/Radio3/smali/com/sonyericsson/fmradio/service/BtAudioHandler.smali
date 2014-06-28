.class public Lcom/sonyericsson/fmradio/service/BtAudioHandler;
.super Ljava/lang/Object;
.source "BtAudioHandler.java"


# static fields
.field private static final BT_AUDIO_START_DELAY_MS:I = 0xc8


# instance fields
.field private mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

.field private mBtRecorder:Landroid/media/MediaRecorder;

.field private mBtRecorderFile:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mIsBtMediaEnabled:Z

.field private mMediaStartHandler:Landroid/os/Handler;

.field private mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mIsBtMediaEnabled:Z

    .line 24
    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mContext:Landroid/content/Context;

    .line 25
    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorder:Landroid/media/MediaRecorder;

    .line 26
    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorderFile:Ljava/io/File;

    .line 27
    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    .line 28
    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mMediaStartHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/sonyericsson/fmradio/service/BtAudioHandler$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/service/BtAudioHandler$1;-><init>(Lcom/sonyericsson/fmradio/service/BtAudioHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 58
    new-instance v0, Lcom/sonyericsson/fmradio/service/BtAudioHandler$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/service/BtAudioHandler$2;-><init>(Lcom/sonyericsson/fmradio/service/BtAudioHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/fmradio/service/BtAudioHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->startBtMediaRecorder()Z

    move-result v0

    return v0
.end method

.method private startBtMediaRecorder()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 104
    iget-boolean v5, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mIsBtMediaEnabled:Z

    if-nez v5, :cond_0

    .line 138
    :goto_0
    return v3

    .line 109
    :cond_0
    new-instance v5, Landroid/media/MediaRecorder;

    invoke-direct {v5}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorder:Landroid/media/MediaRecorder;

    .line 110
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorder:Landroid/media/MediaRecorder;

    if-nez v5, :cond_1

    .line 111
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Could not instantiate recorder for FM radio on BT use case"

    aput-object v5, v4, v3

    invoke-static {v4}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    .local v2, "tempFileDir":Ljava/io/File;
    :try_start_1
    const-string v5, "FmOnBTRec"

    const-string v6, ".3gpp"

    invoke-static {v5, v6, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorderFile:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    :try_start_2
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 123
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 125
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorder:Landroid/media/MediaRecorder;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 126
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 127
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorderFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 128
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 129
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->prepare()V

    .line 130
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 137
    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "FM to BT recorder started"

    aput-object v6, v5, v3

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    move v3, v4

    .line 138
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    const/4 v4, 0x1

    :try_start_3
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Could not create file for FM radio on BT use case"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "tempFileDir":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 132
    .local v1, "exception":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurred! Resetting recorder... - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->stopBtMedia()Z

    goto/16 :goto_0
.end method


# virtual methods
.method public isBtConnected()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/PhfHandler;->isBtConnected()Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mIsBtMediaEnabled:Z

    goto :goto_0
.end method

.method public isBtMediaEnabled()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mIsBtMediaEnabled:Z

    return v0
.end method

.method public setAudioHandler(Lcom/sonyericsson/fmradio/service/AudioHandler;)V
    .locals 0
    .param p1, "audioHandler"    # Lcom/sonyericsson/fmradio/service/AudioHandler;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    .line 39
    return-void
.end method

.method public setPhfHandler(Lcom/sonyericsson/fmradio/service/PhfHandler;)V
    .locals 1
    .param p1, "phfHandler"    # Lcom/sonyericsson/fmradio/service/PhfHandler;

    .prologue
    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    .line 44
    return-void
.end method

.method public startBtMedia(Z)Z
    .locals 6
    .param p1, "doDelay"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    if-eqz p1, :cond_0

    const/16 v0, 0xc8

    .line 86
    .local v0, "delay":I
    :goto_0
    iget-boolean v3, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mIsBtMediaEnabled:Z

    if-eqz v3, :cond_1

    .line 97
    :goto_1
    return v1

    .end local v0    # "delay":I
    :cond_0
    move v0, v1

    .line 84
    goto :goto_0

    .line 89
    .restart local v0    # "delay":I
    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mMediaStartHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonyericsson/fmradio/service/BtAudioHandler$3;

    invoke-direct {v3, p0}, Lcom/sonyericsson/fmradio/service/BtAudioHandler$3;-><init>(Lcom/sonyericsson/fmradio/service/BtAudioHandler;)V

    int-to-long v4, v0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    iput-boolean v2, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mIsBtMediaEnabled:Z

    move v1, v2

    .line 97
    goto :goto_1
.end method

.method public stopBtMedia()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 145
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mMediaStartHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 147
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorder:Landroid/media/MediaRecorder;

    if-nez v3, :cond_0

    .line 148
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Trying to turn off BT via FM without it being initialised"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    .line 176
    :goto_0
    return v1

    .line 154
    :cond_0
    :try_start_0
    iget-boolean v3, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mIsBtMediaEnabled:Z

    if-eqz v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 156
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 157
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 158
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorder:Landroid/media/MediaRecorder;

    .line 159
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mIsBtMediaEnabled:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorderFile:Ljava/io/File;

    if-eqz v3, :cond_2

    .line 169
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->mBtRecorderFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    :cond_2
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "FM to BT recorder has been reset."

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    move v1, v2

    .line 176
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not stop FM recorder for BT usecase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Could not create file for FM radio on BT use case"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    goto :goto_0
.end method
