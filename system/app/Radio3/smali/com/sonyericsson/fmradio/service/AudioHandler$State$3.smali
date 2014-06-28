.class final enum Lcom/sonyericsson/fmradio/service/AudioHandler$State$3;
.super Lcom/sonyericsson/fmradio/service/AudioHandler$State;
.source "AudioHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/AudioHandler$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$State;-><init>(Ljava/lang/String;ILcom/sonyericsson/fmradio/service/AudioHandler$1;)V

    return-void
.end method


# virtual methods
.method public focusLost(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;Z)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;
    .param p2, "canDuck"    # Z

    .prologue
    .line 96
    if-eqz p2, :cond_0

    .line 97
    const v0, 0x3e99999a

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setVolume(F)V

    .line 98
    sget-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State$3;->DUCKING:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setState(Lcom/sonyericsson/fmradio/service/AudioHandler$State;)V

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-interface {p1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->stopPlayer()V

    .line 101
    sget-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State$3;->AWAITING_FOCUS:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setState(Lcom/sonyericsson/fmradio/service/AudioHandler$State;)V

    goto :goto_0
.end method

.method public stop(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    .prologue
    .line 106
    invoke-interface {p1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->stopPlayer()V

    .line 107
    invoke-interface {p1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->abandonFocus()V

    .line 108
    sget-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State$3;->STOPPED:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setState(Lcom/sonyericsson/fmradio/service/AudioHandler$State;)V

    .line 109
    return-void
.end method
