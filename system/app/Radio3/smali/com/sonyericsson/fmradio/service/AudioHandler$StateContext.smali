.class interface abstract Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;
.super Ljava/lang/Object;
.source "AudioHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/AudioHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "StateContext"
.end annotation


# virtual methods
.method public abstract abandonFocus()V
.end method

.method public abstract release()V
.end method

.method public abstract requestFocus()Z
.end method

.method public abstract setState(Lcom/sonyericsson/fmradio/service/AudioHandler$State;)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract startPlayer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stopPlayer()V
.end method
