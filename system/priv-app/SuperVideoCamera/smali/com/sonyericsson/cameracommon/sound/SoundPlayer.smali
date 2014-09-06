.class public Lcom/sonyericsson/cameracommon/sound/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundPlayer"

.field private static final sStreamType:I


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    const-class v0, Landroid/media/AudioManager;

    const-string v1, "STREAM_SYSTEM_ENFORCED"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/apihelper/ApiHelper;->getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I

    move-result v0

    sput v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->sStreamType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 37
    return-void
.end method

.method private playSound(Landroid/content/Context;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 86
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    monitor-enter v9

    .line 87
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 88
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_0

    .line 89
    const-string v0, "SoundPlayer"

    const-string v1, "playSound: open RawResourceFd fail"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    return-void

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget v1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->sStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 113
    monitor-exit v9

    goto :goto_0

    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 101
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v8

    .line 102
    .local v8, "ex":Ljava/io/IOException;
    :try_start_4
    const-string v0, "SoundPlayer"

    const-string v1, "playSound: IOException"

    invoke-static {v0, v1, v8}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_1

    .line 108
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 109
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "SoundPlayer"

    const-string v1, "playSound: close RawResourceFd fail"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private playSound(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    monitor-enter v2

    .line 63
    if-nez p1, :cond_0

    .line 64
    :try_start_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_0
    return-void

    .line 68
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget v3, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->sStreamType:I

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 71
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 78
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3
    const-string v1, "SoundPlayer"

    const-string v3, "playSound: IOException"

    invoke-static {v1, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public playAfSuccessSound()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "/system/media/audio/camera/common/af_success.m4a"

    .line 58
    .local v0, "filePath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->playSound(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public playShutterSound(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->playSound(Landroid/content/Context;I)V

    .line 54
    return-void
.end method

.method public playShutterSound(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->playSound(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 45
    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 83
    return-void
.end method
