.class public Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;
.super Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;
.source "Mp3AudioMediaWrapper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIdMusic:I

.field private mIdNoise:I

.field private mReceiver:Lcom/sonyericsson/fmradio/mock/MockReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/fmradio/mock/MockReceiver;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;
    .param p3, "idMusic"    # I
    .param p4, "idNoise"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;->mReceiver:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    .line 37
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;->mContext:Landroid/content/Context;

    .line 38
    iput p3, p0, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;->mIdMusic:I

    .line 39
    iput p4, p0, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;->mIdNoise:I

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 1
    .param p1, "x0"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    move-result v0

    return v0
.end method

.method public createMediaPlayer()Landroid/media/MediaPlayer;
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;->mReceiver:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;->mIdMusic:I

    iget v3, p0, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;->mIdNoise:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->getMockMediaPlayer(Landroid/content/Context;II)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 1
    .param p1, "x0"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setFmReceiverOn(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->setFmReceiverOn(Z)V

    return-void
.end method

.method public setSpeakerMediaOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 56
    return-void
.end method
