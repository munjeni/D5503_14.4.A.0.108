.class public Lcom/sonyericsson/fmradio/mock/MockBtAudioHandler;
.super Lcom/sonyericsson/fmradio/service/BtAudioHandler;
.source "MockBtAudioHandler.java"


# instance fields
.field private mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

.field private mBtEnabled:Z

.field private mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/BtAudioHandler;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/mock/MockBtAudioHandler;->mBtEnabled:Z

    .line 20
    iput-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockBtAudioHandler;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    .line 21
    iput-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockBtAudioHandler;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    .line 25
    return-void
.end method


# virtual methods
.method public isBtConnected()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockBtAudioHandler;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockBtAudioHandler;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/PhfHandler;->isBtConnected()Z

    move-result v0

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBtMediaEnabled()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/mock/MockBtAudioHandler;->mBtEnabled:Z

    return v0
.end method

.method public setAudioHandler(Lcom/sonyericsson/fmradio/service/AudioHandler;)V
    .locals 0
    .param p1, "audioHandler"    # Lcom/sonyericsson/fmradio/service/AudioHandler;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockBtAudioHandler;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    .line 29
    return-void
.end method

.method public setPhfHandler(Lcom/sonyericsson/fmradio/service/PhfHandler;)V
    .locals 0
    .param p1, "phfHandler"    # Lcom/sonyericsson/fmradio/service/PhfHandler;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockBtAudioHandler;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    .line 33
    return-void
.end method

.method public startBtMedia(Z)Z
    .locals 1
    .param p1, "doDelay"    # Z

    .prologue
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/mock/MockBtAudioHandler;->mBtEnabled:Z

    .line 48
    return v0
.end method

.method public stopBtMedia()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/mock/MockBtAudioHandler;->mBtEnabled:Z

    .line 53
    return v0
.end method
