.class Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;
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
    name = "StateContextMediaPlayerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/fmradio/service/AudioHandler;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/fmradio/service/AudioHandler;Lcom/sonyericsson/fmradio/service/AudioHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/fmradio/service/AudioHandler;
    .param p2, "x1"    # Lcom/sonyericsson/fmradio/service/AudioHandler$1;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;-><init>(Lcom/sonyericsson/fmradio/service/AudioHandler;)V

    return-void
.end method


# virtual methods
.method public abandonFocus()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$400(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$700(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    .line 351
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$900(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$900(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 339
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$902(Lcom/sonyericsson/fmradio/service/AudioHandler;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 341
    :cond_0
    return-void
.end method

.method public requestFocus()Z
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$400(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

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
    .line 355
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # setter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;
    invoke-static {v0, p1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$802(Lcom/sonyericsson/fmradio/service/AudioHandler;Lcom/sonyericsson/fmradio/service/AudioHandler$State;)Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    .line 356
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$900(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "media player is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$900(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 333
    return-void
.end method

.method public startPlayer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$400(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mSpeakerAudio:Z
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$300(Lcom/sonyericsson/fmradio/service/AudioHandler;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;->setSpeakerMediaOn(Z)V

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$900(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$400(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;->createMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    # setter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v2}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$902(Lcom/sonyericsson/fmradio/service/AudioHandler;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 297
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$900(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$1000(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "fmradio://rx"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 298
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$900(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$900(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 312
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 303
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 305
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 307
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 309
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    .line 310
    throw v0
.end method

.method public stopPlayer()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$900(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "media player is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$900(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$900(Lcom/sonyericsson/fmradio/service/AudioHandler;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$902(Lcom/sonyericsson/fmradio/service/AudioHandler;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$StateContextMediaPlayerImpl;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$400(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;->setSpeakerMediaOn(Z)V

    .line 324
    return-void
.end method
