.class Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;
.super Ljava/lang/Object;
.source "AudioHandler.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/AudioHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateContextQualcommImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/fmradio/service/AudioHandler;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/fmradio/service/AudioHandler;Lcom/sonyericsson/fmradio/service/AudioHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/fmradio/service/AudioHandler;
    .param p2, "x1"    # Lcom/sonyericsson/fmradio/service/AudioHandler$1;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;-><init>(Lcom/sonyericsson/fmradio/service/AudioHandler;)V

    return-void
.end method


# virtual methods
.method public abandonFocus()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$400(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$700(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    .line 278
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public requestFocus()Z
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$400(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$700(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    move-result v0

    return v0
.end method

.method public setState(Lcom/sonyericsson/fmradio/service/AudioHandler$State;)V
    .locals 1
    .param p1, "state"    # Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # setter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;
    invoke-static {v0, p1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$802(Lcom/sonyericsson/fmradio/service/AudioHandler;Lcom/sonyericsson/fmradio/service/AudioHandler$State;)Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    .line 283
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 258
    const/high16 v0, 0x3f800000

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # invokes: Lcom/sonyericsson/fmradio/service/AudioHandler;->startFmAudio()V
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$500(Lcom/sonyericsson/fmradio/service/AudioHandler;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # invokes: Lcom/sonyericsson/fmradio/service/AudioHandler;->stopFmAudio()V
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$600(Lcom/sonyericsson/fmradio/service/AudioHandler;)V

    goto :goto_0
.end method

.method public startPlayer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$400(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mSpeakerAudio:Z
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$300(Lcom/sonyericsson/fmradio/service/AudioHandler;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;->setSpeakerMediaOn(Z)V

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # invokes: Lcom/sonyericsson/fmradio/service/AudioHandler;->startFmAudio()V
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$500(Lcom/sonyericsson/fmradio/service/AudioHandler;)V

    .line 246
    return-void
.end method

.method public stopPlayer()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$400(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;->setSpeakerMediaOn(Z)V

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextQualcommImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # invokes: Lcom/sonyericsson/fmradio/service/AudioHandler;->stopFmAudio()V
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$600(Lcom/sonyericsson/fmradio/service/AudioHandler;)V

    .line 252
    return-void
.end method
