.class public Lcom/android/mms/ui/SlideView;
.super Landroid/widget/FrameLayout;
.source "SlideView.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface;


# static fields
.field private static final AUDIO_INFO_HEIGHT:I = 0x52

.field private static final DEBUG:Z = false

.field public static final IMAGE_VIEW_TESTING_TAG:Ljava/lang/String; = "SlideViewImage"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "SlideView"


# instance fields
.field private mAudioInfoView:Landroid/view/View;

.field private mAudioPlayer:Landroid/media/MediaPlayer;

.field private mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

.field private mIsPrepared:Z

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mScrollText:Landroid/widget/ScrollView;

.field private mSeekWhenPrepared:I

.field private mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field private mStartWhenPrepared:Z

.field private mStopWhenPrepared:Z

.field private mTextView:Landroid/widget/TextView;

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 101
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    return-void
.end method

.method private displayAudioInfo()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_0
    return-void
.end method

.method private hideAudioInfo()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :cond_0
    return-void
.end method

.method private initAudioInfoView(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 159
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v2, 0x7f030012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    .line 160
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const v3, 0x7f0a0007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    .local v0, "audioName":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/16 v5, 0x52

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    return-void
.end method


# virtual methods
.method public getAudioInfoHeight()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 400
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 402
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    add-int/lit8 v1, p2, -0x52

    invoke-interface {v0, p1, v1}, Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;->onSizeChanged(II)V

    .line 408
    :cond_0
    return-void
.end method

.method public pauseAudio()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 298
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 299
    return-void
.end method

.method public pauseImageAnimation()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/GifImageView;->getController()Lcom/sonyericsson/conversations/ui/GifController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/GifController;->pauseAnimation()V

    .line 372
    :cond_0
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 334
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 375
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 384
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopAudio()V

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_3

    .line 388
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopVideo()V

    .line 389
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 391
    :cond_3
    return-void
.end method

.method public seekAudio(I)V
    .locals 1
    .param p1, "seekTo"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public seekVideo(I)V
    .locals 1
    .param p1, "seekTo"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 338
    if-lez p1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 345
    :cond_0
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "audio"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Audio URI may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 192
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 193
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 195
    :cond_1
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    .line 196
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    .line 199
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 200
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 201
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 202
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/mms/ui/SlideView;->initAudioInfoView(Ljava/lang/String;)V

    .line 209
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SlideView"

    const-string v2, "Unexpected IOException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 206
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/net/Uri;
    .param p3, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, -0x2

    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/sonyericsson/conversations/ui/SlideImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/SlideImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    const-string v1, "SlideViewImage"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/conversations/ui/SlideImageView;->setImage(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 127
    return-void
.end method

.method public setImageRegion(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    if-eqz v1, :cond_0

    .line 131
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 132
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 133
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 134
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .param p1, "fit"    # Ljava/lang/String;

    .prologue
    .line 140
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    :cond_0
    return-void

    .line 255
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 412
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x2

    .line 212
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    .line 214
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    const/high16 v2, 0x3000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 215
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x1

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 223
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    .line 224
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 225
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 229
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->getInstance()Lcom/sonyericsson/conversations/ui/util/SmileyParser;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 230
    .local v0, "smilifiedText":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 232
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 233
    return-void
.end method

.method public setTextRegion(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    .line 237
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 238
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 239
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 240
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :cond_0
    return-void

    .line 261
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "video"    # Landroid/net/Uri;

    .prologue
    const/4 v3, -0x2

    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Landroid/widget/VideoView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 155
    return-void
.end method

.method public setVideoRegion(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    .line 246
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, p3, p4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 247
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 248
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 249
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 269
    :cond_0
    return-void

    .line 267
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 395
    return-void
.end method

.method public startAudio()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 275
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    goto :goto_0
.end method

.method public startImageAnimation()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/GifImageView;->getController()Lcom/sonyericsson/conversations/ui/GifController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/GifController;->startAnimation()V

    .line 354
    :cond_0
    return-void
.end method

.method public startVideo()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 316
    :cond_0
    return-void
.end method

.method public stopAudio()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 284
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 286
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    goto :goto_0
.end method

.method public stopImageAnimation()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/GifImageView;->getController()Lcom/sonyericsson/conversations/ui/GifController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/GifController;->stopAnimation()V

    .line 363
    :cond_0
    return-void
.end method

.method public stopVideo()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 325
    :cond_0
    return-void
.end method
