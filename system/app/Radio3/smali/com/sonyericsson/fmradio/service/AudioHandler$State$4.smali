.class final enum Lcom/sonyericsson/fmradio/service/AudioHandler$State$4;
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
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$State;-><init>(Ljava/lang/String;ILcom/sonyericsson/fmradio/service/AudioHandler$1;)V

    return-void
.end method


# virtual methods
.method public focusGained(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    .prologue
    .line 113
    const/high16 v0, 0x3f800000

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setVolume(F)V

    .line 114
    sget-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State$4;->PLAYING:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setState(Lcom/sonyericsson/fmradio/service/AudioHandler$State;)V

    .line 115
    return-void
.end method

.method public focusLost(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;Z)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;
    .param p2, "canDuck"    # Z

    .prologue
    .line 118
    if-nez p2, :cond_0

    .line 119
    invoke-interface {p1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->stopPlayer()V

    .line 120
    sget-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State$4;->AWAITING_FOCUS:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setState(Lcom/sonyericsson/fmradio/service/AudioHandler$State;)V

    .line 122
    :cond_0
    return-void
.end method

.method public stop(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    .prologue
    .line 125
    invoke-interface {p1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->stopPlayer()V

    .line 126
    invoke-interface {p1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->abandonFocus()V

    .line 127
    sget-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State$4;->STOPPED:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setState(Lcom/sonyericsson/fmradio/service/AudioHandler$State;)V

    .line 128
    return-void
.end method
