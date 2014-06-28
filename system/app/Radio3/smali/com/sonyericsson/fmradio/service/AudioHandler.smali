.class public Lcom/sonyericsson/fmradio/service/AudioHandler;
.super Ljava/lang/Object;
.source "AudioHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;,
        Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;,
        Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;,
        Lcom/sonyericsson/fmradio/service/AudioHandler$State;,
        Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;
    }
.end annotation


# static fields
.field private static final FM_RADIO_STREAM_URI:Ljava/lang/String; = "fmradio://rx"

.field private static final VOLUME_DUCK:F = 0.3f

.field private static final VOLUME_NORMAL:F = 1.0f

.field private static sUseMediaPlayerAudio:Z


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

.field private mBtAudioHandler:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

.field private mListener:Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSpeakerAudio:Z

.field private mStateContext:Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;Lcom/sonyericsson/fmradio/service/BtAudioHandler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioMediaWrapper"    # Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;
    .param p3, "btAudioHandler"    # Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance v0, Lcom/sonyericsson/fmradio/service/AudioHandler$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/service/AudioHandler$1;-><init>(Lcom/sonyericsson/fmradio/service/AudioHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 151
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mContext:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    .line 153
    sget-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->STOPPED:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    .line 154
    iput-object p3, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mBtAudioHandler:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->useMediaPlayerForFM(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/fmradio/service/AudioHandler;->sUseMediaPlayerAudio:Z

    .line 156
    sget-boolean v0, Lcom/sonyericsson/fmradio/service/AudioHandler;->sUseMediaPlayerAudio:Z

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;-><init>(Lcom/sonyericsson/fmradio/service/AudioHandler;Lcom/sonyericsson/fmradio/service/AudioHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mStateContext:Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mSpeakerAudio:Z

    invoke-interface {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;->setSpeakerMediaOn(Z)V

    .line 162
    return-void

    .line 159
    :cond_0
    new-instance v0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;-><init>(Lcom/sonyericsson/fmradio/service/AudioHandler;Lcom/sonyericsson/fmradio/service/AudioHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mStateContext:Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/AudioHandler;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/AudioHandler;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mStateContext:Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/AudioHandler;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mListener:Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/fmradio/service/AudioHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/AudioHandler;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mSpeakerAudio:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/AudioHandler;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/fmradio/service/AudioHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/AudioHandler;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->startFmAudio()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/fmradio/service/AudioHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/AudioHandler;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->stopFmAudio()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/AudioHandler;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioHandler$State;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/AudioHandler;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sonyericsson/fmradio/service/AudioHandler;Lcom/sonyericsson/fmradio/service/AudioHandler$State;)Lcom/sonyericsson/fmradio/service/AudioHandler$State;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/AudioHandler;
    .param p1, "x1"    # Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/AudioHandler;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sonyericsson/fmradio/service/AudioHandler;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/AudioHandler;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private startFmAudio()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;->setFmReceiverOn(Z)V

    .line 413
    return-void
.end method

.method private stopFmAudio()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;->setFmReceiverOn(Z)V

    .line 421
    return-void
.end method

.method private useMediaPlayerForFM(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 433
    iget-object v4, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    invoke-interface {v4}, Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;->createMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    .line 435
    .local v1, "mp":Landroid/media/MediaPlayer;
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mContext:Landroid/content/Context;

    const-string v5, "fmradio://rx"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 436
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 443
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, ":Using MediaPlayer Audio solution"

    aput-object v5, v4, v3

    invoke-static {v4}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    .line 444
    :goto_0
    return v2

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, ":MediaPlayer FM Radio solution unavailable. Using CAF Audio solution."

    aput-object v5, v2, v4

    invoke-static {v2}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    move v2, v3

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    throw v2
.end method


# virtual methods
.method public isBtConnected()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mBtAudioHandler:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->isBtConnected()Z

    move-result v0

    return v0
.end method

.method public isPlayingBt()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mBtAudioHandler:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mBtAudioHandler:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->isBtMediaEnabled()Z

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpeakerAudio()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mSpeakerAudio:Z

    return v0
.end method

.method public play()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mStateContext:Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->play(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;)V

    .line 170
    return-void
.end method

.method public playBt(Z)V
    .locals 1
    .param p1, "doDelay"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mBtAudioHandler:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mBtAudioHandler:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->isBtConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mBtAudioHandler:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->isBtMediaEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mBtAudioHandler:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->startBtMedia(Z)Z

    .line 187
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mStateContext:Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    invoke-interface {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->release()V

    .line 214
    return-void
.end method

.method public setAudioListener(Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mListener:Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;

    .line 392
    return-void
.end method

.method public setSpeakerAudio(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 217
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 218
    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mSpeakerAudio:Z

    if-eq v1, p1, :cond_0

    .line 219
    iput-boolean p1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mSpeakerAudio:Z

    .line 220
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->isPlayingBt()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->stopBt()V

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->play()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/IOException;
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Couldn\'t start audio playback in speaker"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    goto :goto_0

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->isBtConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->stop()V

    .line 230
    invoke-virtual {p0, v3}, Lcom/sonyericsson/fmradio/service/AudioHandler;->playBt(Z)V

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    invoke-interface {v1, p1}, Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;->setSpeakerMediaOn(Z)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mStateContext:Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->stop(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;)V

    .line 177
    return-void
.end method

.method public stopBt()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mBtAudioHandler:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mBtAudioHandler:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->isBtMediaEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler;->mBtAudioHandler:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->stopBtMedia()Z

    .line 196
    :cond_0
    return-void
.end method
