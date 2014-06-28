.class Lcom/sonyericsson/conversations/ui/SlideshowActivity$SmilPlayerController;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmilPlayerController"
.end annotation


# instance fields
.field private final mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;


# direct methods
.method public constructor <init>(Lcom/android/mms/dom/smil/SmilPlayer;)V
    .locals 0
    .param p1, "player"    # Lcom/android/mms/dom/smil/SmilPlayer;

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 308
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 312
    const/16 v0, 0x64

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    .line 331
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 335
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->start()V

    .line 341
    :cond_0
    return-void
.end method
