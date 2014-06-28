.class final enum Lcom/sonyericsson/fmradio/service/AudioHandler$State$1;
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
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$State;-><init>(Ljava/lang/String;ILcom/sonyericsson/fmradio/service/AudioHandler$1;)V

    return-void
.end method


# virtual methods
.method public play(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface {p1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->requestFocus()Z

    .line 71
    invoke-interface {p1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->startPlayer()V

    .line 72
    sget-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State$1;->PLAYING:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;->setState(Lcom/sonyericsson/fmradio/service/AudioHandler$State;)V

    .line 73
    return-void
.end method
