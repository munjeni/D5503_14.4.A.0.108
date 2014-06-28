.class Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;
.super Ljava/lang/Object;
.source "AndroidAudioMediaWrapper.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;
    }
.end annotation


# static fields
.field private static final NO_VOLUME:I = -0x1


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field public mHandler:Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;

.field private storedVolume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->storedVolume:I

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 38
    new-instance v0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;-><init>(Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mHandler:Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 3
    .param p1, "listener"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    const/4 v1, 0x1

    .line 50
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    .line 51
    .local v0, "result":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    return-object v0
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    const/4 v1, 0x1

    .line 43
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 45
    .local v0, "result":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFmReceiverOn(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 83
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 84
    .local v0, "state":I
    :goto_0
    const/high16 v2, 0x80000

    const-string v3, ""

    invoke-static {v2, v0, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 85
    if-eqz p1, :cond_1

    iget v2, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->storedVolume:I

    if-le v2, v4, :cond_1

    .line 86
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->storedVolume:I

    invoke-virtual {v2, v5, v3, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 87
    iput v4, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->storedVolume:I

    .line 91
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 92
    return-void

    .end local v0    # "state":I
    :cond_0
    move v0, v1

    .line 83
    goto :goto_0

    .line 89
    .restart local v0    # "state":I
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->storedVolume:I

    goto :goto_1
.end method

.method public setSpeakerMediaOn(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mHandler:Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mHandler:Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mHandler:Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mHandler:Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;->removeMessages()V

    .line 71
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mHandler:Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 79
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 71
    goto :goto_0

    .line 74
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mHandler:Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mHandler:Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    move v0, v1

    .line 74
    goto :goto_2
.end method
