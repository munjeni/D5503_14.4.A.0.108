.class final enum Lcom/sonyericsson/fmradio/service/AudioHandler$State$2;
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
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$State;-><init>(Ljava/lang/String;ILcom/sonyericsson/fmradio/service/AudioHandler$1;)V

    return-void
.end method


# virtual methods
.method public focusGained(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-interface {p1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->startPlayer()V

    .line 78
    sget-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State$2;->PLAYING:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setState(Lcom/sonyericsson/fmradio/service/AudioHandler$State;)V

    .line 79
    return-void
.end method

.method public focusLost(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;Z)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;
    .param p2, "canDuck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    if-eqz p2, :cond_0

    .line 83
    invoke-interface {p1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->startPlayer()V

    .line 84
    const v0, 0x3e99999a

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setVolume(F)V

    .line 85
    sget-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State$2;->DUCKING:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setState(Lcom/sonyericsson/fmradio/service/AudioHandler$State;)V

    .line 87
    :cond_0
    return-void
.end method

.method public stop(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    .prologue
    .line 90
    invoke-interface {p1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->abandonFocus()V

    .line 91
    sget-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State$2;->STOPPED:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setState(Lcom/sonyericsson/fmradio/service/AudioHandler$State;)V

    .line 92
    return-void
.end method
