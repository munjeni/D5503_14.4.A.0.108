.class public abstract Lcom/android/phone/am/SomcAmMessagePreference;
.super Landroid/preference/Preference;
.source "SomcAmMessagePreference.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/am/SomcAmMessagePreference$PlayCounterTask;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mContext:Landroid/content/Context;

.field private mDate:Ljava/lang/String;

.field private mDurationView:Landroid/widget/TextView;

.field protected mHandler:Landroid/os/Handler;

.field protected mIcon:Landroid/widget/ImageView;

.field protected mPlayer:Landroid/media/MediaPlayer;

.field private mPlaying:Z

.field private mPlayingTime:I

.field private mPrefListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mTimer:Ljava/util/Timer;

.field private mTotalDurationTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    .line 56
    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    .line 57
    iput-boolean v3, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlaying:Z

    .line 58
    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mDurationView:Landroid/widget/TextView;

    .line 59
    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mDate:Ljava/lang/String;

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mTotalDurationTime:J

    .line 61
    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPrefListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 62
    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mActivity:Landroid/app/Activity;

    .line 64
    iput v3, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayingTime:I

    .line 65
    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mTimer:Ljava/util/Timer;

    .line 66
    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 174
    new-instance v0, Lcom/android/phone/am/SomcAmMessagePreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/am/SomcAmMessagePreference$1;-><init>(Lcom/android/phone/am/SomcAmMessagePreference;)V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 107
    iput-object p1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mActivity:Landroid/app/Activity;

    .line 109
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmMessagePreference;->init()V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/am/SomcAmMessagePreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmMessagePreference;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlaying:Z

    return v0
.end method

.method private finishPlaying()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mDurationView:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mTotalDurationTime:J

    invoke-direct {p0, v1, v2}, Lcom/android/phone/am/SomcAmMessagePreference;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-direct {p0, v3}, Lcom/android/phone/am/SomcAmMessagePreference;->setScreenOn(Z)V

    .line 295
    iput v3, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayingTime:I

    .line 296
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mTimer:Ljava/util/Timer;

    .line 300
    :cond_0
    return-void
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 8
    .param p1, "sec"    # J

    .prologue
    const-wide/16 v4, 0x3c

    .line 396
    rem-long v2, p1, v4

    .line 397
    .local v2, "seconds":J
    div-long v0, p1, v4

    .line 398
    .local v0, "minutes":J
    const-string v4, "%02d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private init()V
    .locals 1

    .prologue
    .line 138
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 139
    return-void
.end method

.method private setScreenOn(Z)V
    .locals 3
    .param p1, "screenOn"    # Z

    .prologue
    .line 402
    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 403
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 405
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 406
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 410
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 411
    return-void

    .line 408
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private stopMediaPlayer()V
    .locals 4

    .prologue
    .line 328
    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 331
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 337
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlaying:Z

    .line 338
    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mActivity:Landroid/app/Activity;

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 340
    :cond_0
    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 341
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 334
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 335
    .local v1, "ise":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 347
    invoke-direct {p0, v3}, Lcom/android/phone/am/SomcAmMessagePreference;->setScreenOn(Z)V

    .line 348
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 350
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 351
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 352
    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 358
    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mHandler:Landroid/os/Handler;

    .line 360
    :cond_1
    iput v3, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayingTime:I

    .line 361
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 363
    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mTimer:Ljava/util/Timer;

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    .line 369
    :cond_3
    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mDate:Ljava/lang/String;

    .line 370
    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mDurationView:Landroid/widget/TextView;

    .line 371
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mTotalDurationTime:J

    .line 372
    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mActivity:Landroid/app/Activity;

    .line 373
    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mContext:Landroid/content/Context;

    .line 374
    return-void
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f07004a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mDurationView:Landroid/widget/TextView;

    .line 116
    const v2, 0x7f070049

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    .local v0, "timeView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mDurationView:Landroid/widget/TextView;

    iget-wide v3, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mTotalDurationTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/phone/am/SomcAmMessagePreference;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const v2, 0x7f070047

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    .line 120
    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/phone/am/SomcAmMessagePreference;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    const v3, 0x7f020010

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b017c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    :goto_0
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-object v1

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    const v3, 0x7f02000f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b017b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 231
    :goto_0
    return v0

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 193
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    const/4 v7, 0x3

    .line 198
    .local v7, "streamType":I
    :goto_1
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2, v7, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v6

    .line 200
    .local v6, "result":I
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    if-ne v6, v8, :cond_3

    .line 201
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v7}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 202
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 203
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 204
    iput-boolean v8, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlaying:Z

    .line 205
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f020010

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b017c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 208
    invoke-direct {p0, v8}, Lcom/android/phone/am/SomcAmMessagePreference;->setScreenOn(Z)V

    .line 209
    iput v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayingTime:I

    .line 210
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mTimer:Ljava/util/Timer;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/phone/am/SomcAmMessagePreference$PlayCounterTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/am/SomcAmMessagePreference$PlayCounterTask;-><init>(Lcom/android/phone/am/SomcAmMessagePreference;Lcom/android/phone/am/SomcAmMessagePreference$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_1
    :goto_2
    move v0, v8

    .line 219
    goto :goto_0

    .line 196
    .end local v6    # "result":I
    .end local v7    # "streamType":I
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "streamType":I
    goto :goto_1

    .line 214
    .restart local v6    # "result":I
    :cond_3
    if-eq v6, v8, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b0186

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 221
    .end local v6    # "result":I
    .end local v7    # "streamType":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/am/SomcAmMessagePreference;->stopPlaying()V

    move v0, v8

    .line 222
    goto/16 :goto_0

    .line 224
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mDurationView:Landroid/widget/TextView;

    const-string v2, "%s / %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayingTime:I

    int-to-long v4, v4

    invoke-direct {p0, v4, v5}, Lcom/android/phone/am/SomcAmMessagePreference;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-wide v4, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mTotalDurationTime:J

    invoke-direct {p0, v4, v5}, Lcom/android/phone/am/SomcAmMessagePreference;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayingTime:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mTotalDurationTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 227
    iget v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayingTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayingTime:I

    :cond_4
    move v0, v8

    .line 229
    goto/16 :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlaying:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPrefListener:Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPrefListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 166
    :cond_0
    return-void
.end method

.method public removePlayingMessages()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    :cond_0
    return-void
.end method

.method public setAudioSource(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 258
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 261
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 266
    :goto_0
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/phone/am/SomcAmMessagePreference$2;

    invoke-direct {v2, p0}, Lcom/android/phone/am/SomcAmMessagePreference$2;-><init>(Lcom/android/phone/am/SomcAmMessagePreference;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 277
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/phone/am/SomcAmMessagePreference$3;

    invoke-direct {v2, p0}, Lcom/android/phone/am/SomcAmMessagePreference$3;-><init>(Lcom/android/phone/am/SomcAmMessagePreference;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 287
    :cond_0
    :goto_1
    return-void

    .line 264
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SomcAmMessagePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with Media Player"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setDate(J)V
    .locals 6
    .param p1, "date"    # J

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mContext:Landroid/content/Context;

    const/16 v5, 0x11

    move-wide v1, p1

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mDate:Ljava/lang/String;

    .line 393
    return-void
.end method

.method protected setOnCompletion()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlaying:Z

    .line 308
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mActivity:Landroid/app/Activity;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 309
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmMessagePreference;->finishPlaying()V

    .line 310
    return-void
.end method

.method protected setOnError()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlaying:Z

    .line 319
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mActivity:Landroid/app/Activity;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 320
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmMessagePreference;->finishPlaying()V

    .line 322
    :cond_0
    return-void
.end method

.method public setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "onPreferenceClickListener"    # Landroid/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 171
    iput-object p1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPrefListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 172
    return-void
.end method

.method protected setTotalRecordedDuration(J)V
    .locals 2
    .param p1, "duration"    # J

    .prologue
    .line 382
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iput-wide v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mTotalDurationTime:J

    .line 383
    return-void
.end method

.method public stopPlaying()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmMessagePreference;->stopMediaPlayer()V

    .line 239
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmMessagePreference;->finishPlaying()V

    .line 240
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlaying:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
