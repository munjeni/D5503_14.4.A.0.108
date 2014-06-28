.class public Lcom/android/phone/am/SomcAmRecordGreetingActivity;
.super Landroid/app/Activity;
.source "SomcAmRecordGreetingActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;,
        Lcom/android/phone/am/SomcAmRecordGreetingActivity$PlayCounterTask;,
        Lcom/android/phone/am/SomcAmRecordGreetingActivity$RecordCounterTask;
    }
.end annotation


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioStreamType:I

.field private mGuideText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsSpeakerphoneOn:Z

.field private mIsTablet:Z

.field private mMessageFilePath:Ljava/lang/String;

.field private mNameField:Landroid/widget/EditText;

.field private mNameFieldText:Ljava/lang/String;

.field private mPhoneAccessor:Lcom/android/phone/SomcAmPhoneAccessor;

.field private mPlayDurationText:Landroid/widget/TextView;

.field private mPlayIcon:Landroid/widget/ImageView;

.field private mPlayPanel:Landroid/widget/RelativeLayout;

.field private mPlayText:Landroid/widget/TextView;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPlayingTime:I

.field private mRecordDurationText:Landroid/widget/TextView;

.field private mRecordIcon:Landroid/widget/ImageView;

.field private mRecordPanel:Landroid/widget/RelativeLayout;

.field private mRecordText:Landroid/widget/TextView;

.field private mRecorder:Lcom/android/phone/SomcCallRecorder;

.field private mRecordingTime:I

.field private mSaveButton:Landroid/widget/Button;

.field private mSpeakerIcon:Landroid/view/MenuItem;

.field private mState:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 100
    sget-object v0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;->WAIT_RECORDING:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mState:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    .line 101
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPhoneAccessor:Lcom/android/phone/SomcAmPhoneAccessor;

    .line 102
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    .line 103
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    .line 105
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mTimer:Ljava/util/Timer;

    .line 106
    iput v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordingTime:I

    .line 107
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordPanel:Landroid/widget/RelativeLayout;

    .line 108
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mGuideText:Landroid/widget/TextView;

    .line 109
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordIcon:Landroid/widget/ImageView;

    .line 110
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordText:Landroid/widget/TextView;

    .line 111
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordDurationText:Landroid/widget/TextView;

    .line 112
    iput v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayingTime:I

    .line 113
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayPanel:Landroid/widget/RelativeLayout;

    .line 114
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayIcon:Landroid/widget/ImageView;

    .line 115
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayText:Landroid/widget/TextView;

    .line 116
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayDurationText:Landroid/widget/TextView;

    .line 117
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mMessageFilePath:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameField:Landroid/widget/EditText;

    .line 119
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameFieldText:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSaveButton:Landroid/widget/Button;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsSpeakerphoneOn:Z

    .line 122
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSpeakerIcon:Landroid/view/MenuItem;

    .line 123
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 124
    iput-boolean v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsTablet:Z

    .line 125
    iput v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioStreamType:I

    .line 260
    new-instance v0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity$1;-><init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method private abandonRecordedGreetingFile()V
    .locals 5

    .prologue
    .line 820
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mMessageFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 821
    .local v0, "recordedGreetingFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 822
    .local v1, "ret":Z
    if-nez v1, :cond_0

    .line 823
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    const-string v2, "SomcAmRecordGreetingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete file!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mMessageFilePath:Ljava/lang/String;

    .line 828
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Lcom/android/phone/SomcCallRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mMessageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/phone/am/SomcAmRecordGreetingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmRecordGreetingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mMessageFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->stopRecording()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->stopPlaying()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/am/SomcAmRecordGreetingActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmRecordGreetingActivity;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mState:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method private checkEnoughStorage()Z
    .locals 5

    .prologue
    .line 815
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 816
    .local v0, "statfs":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x100000

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private cleanUpPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 673
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 675
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 676
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 677
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    .line 679
    :cond_0
    return-void
.end method

.method private enableSpeaker(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 766
    invoke-direct {p0, p1}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->turnOnSpeaker(Z)V

    .line 767
    invoke-direct {p0, p1}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->turnOnSpeakerIcon(Z)V

    .line 769
    :cond_0
    return-void
.end method

.method private finishPlaying()V
    .locals 2

    .prologue
    .line 535
    sget-object v0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;->FINISH_RECORDING:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mState:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    .line 536
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->cleanUpPlayer()V

    .line 537
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 538
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 539
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mTimer:Ljava/util/Timer;

    .line 543
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->showFinishRecordingScreen()V

    .line 544
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->setScreenOn(Z)V

    .line 545
    return-void
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 8
    .param p1, "sec"    # J

    .prologue
    const-wide/16 v4, 0x3c

    .line 461
    rem-long v2, p1, v4

    .line 462
    .local v2, "seconds":J
    div-long v0, p1, v4

    .line 463
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

.method private initSaveButton()V
    .locals 2

    .prologue
    .line 623
    const v0, 0x7f070057

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSaveButton:Landroid/widget/Button;

    .line 624
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSaveButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/am/SomcAmRecordGreetingActivity$8;

    invoke-direct {v1, p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity$8;-><init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 566
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordPanel:Landroid/widget/RelativeLayout;

    .line 567
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mGuideText:Landroid/widget/TextView;

    .line 568
    const v0, 0x7f07004f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordIcon:Landroid/widget/ImageView;

    .line 569
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/phone/am/SomcAmRecordGreetingActivity$5;

    invoke-direct {v1, p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity$5;-><init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    const v0, 0x7f070050

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordText:Landroid/widget/TextView;

    .line 580
    const v0, 0x7f070051

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordDurationText:Landroid/widget/TextView;

    .line 582
    const v0, 0x7f070052

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayPanel:Landroid/widget/RelativeLayout;

    .line 583
    const v0, 0x7f070053

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayIcon:Landroid/widget/ImageView;

    .line 584
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/phone/am/SomcAmRecordGreetingActivity$6;

    invoke-direct {v1, p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity$6;-><init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayText:Landroid/widget/TextView;

    .line 594
    const v0, 0x7f070055

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayDurationText:Landroid/widget/TextView;

    .line 596
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->initSaveButton()V

    .line 597
    const v0, 0x7f070056

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameField:Landroid/widget/EditText;

    .line 598
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameField:Landroid/widget/EditText;

    new-instance v1, Lcom/android/phone/am/SomcAmRecordGreetingActivity$7;

    invoke-direct {v1, p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity$7;-><init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 616
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameFieldText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameFieldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 620
    return-void
.end method

.method private removeAllMessages()V
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 832
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 833
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 834
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 835
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1005

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 836
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 837
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1007

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 838
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1008

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 839
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1098

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 840
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1099

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 841
    return-void
.end method

.method private setEditTextAndSaveButtonVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 458
    return-void
.end method

.method private setScreenOn(Z)V
    .locals 3
    .param p1, "screenOn"    # Z

    .prologue
    .line 802
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 803
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 805
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 806
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 810
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 811
    return-void

    .line 808
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private showFinishRecordingScreen()V
    .locals 8

    .prologue
    const v7, 0x7f0b0155

    const v3, 0x7f0b0151

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 431
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordIcon:Landroid/widget/ImageView;

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 436
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordDurationText:Landroid/widget/TextView;

    const-string v1, "%s / %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordingTime:I

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-wide/16 v3, 0x1e

    invoke-direct {p0, v3, v4}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayIcon:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 444
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayDurationText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 449
    invoke-direct {p0, v5}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->setEditTextAndSaveButtonVisibility(I)V

    .line 450
    iget-boolean v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSpeakerIcon:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 453
    :cond_0
    return-void
.end method

.method private showPlayingScreen()V
    .locals 8

    .prologue
    const v2, 0x7f0b0153

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 548
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayIcon:Landroid/widget/ImageView;

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 552
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayDurationText:Landroid/widget/TextView;

    const-string v1, "%s / %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayingTime:I

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordingTime:I

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayDurationText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 559
    invoke-direct {p0, v6}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->setEditTextAndSaveButtonVisibility(I)V

    .line 560
    iget-boolean v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSpeakerIcon:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 563
    :cond_0
    return-void
.end method

.method private showRecordingScreen()V
    .locals 8

    .prologue
    const v3, 0x7f0b0153

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 414
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordIcon:Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 417
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordDurationText:Landroid/widget/TextView;

    const-string v1, "%s / %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordingTime:I

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    invoke-direct {p0, v4, v5}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 424
    invoke-direct {p0, v7}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->setEditTextAndSaveButtonVisibility(I)V

    .line 425
    iget-boolean v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSpeakerIcon:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 428
    :cond_0
    return-void
.end method

.method private startPlaying()V
    .locals 11

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x1099

    .line 467
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget v4, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioStreamType:I

    const/4 v5, 0x2

    invoke-virtual {v0, v1, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v7

    .line 469
    .local v7, "result":I
    if-eq v7, v10, :cond_2

    .line 470
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SomcAmRecordGreetingActivity"

    const-string v1, "Failed to request AudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0186

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 525
    :cond_1
    :goto_0
    return-void

    .line 475
    :cond_2
    sget-object v0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;->PLAY_GREETING:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mState:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    .line 476
    iput v9, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayingTime:I

    .line 477
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    .line 478
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    .line 479
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SomcAmRecordGreetingActivity"

    const-string v1, "Failed to create MediaPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    :cond_3
    iget v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioStreamType:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mMessageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 486
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 505
    :goto_1
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/phone/am/SomcAmRecordGreetingActivity$3;

    invoke-direct {v1, p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity$3;-><init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 511
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/phone/am/SomcAmRecordGreetingActivity$4;

    invoke-direct {v1, p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity$4;-><init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 518
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 519
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->showPlayingScreen()V

    .line 520
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_4

    .line 521
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mTimer:Ljava/util/Timer;

    .line 523
    :cond_4
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/phone/am/SomcAmRecordGreetingActivity$PlayCounterTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/phone/am/SomcAmRecordGreetingActivity$PlayCounterTask;-><init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity;Lcom/android/phone/am/SomcAmRecordGreetingActivity$1;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 524
    invoke-direct {p0, v10}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->setScreenOn(Z)V

    goto :goto_0

    .line 487
    :catch_0
    move-exception v6

    .line 488
    .local v6, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 489
    const-string v0, "SomcAmRecordGreetingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException with Media Player"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_5
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 492
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 493
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 494
    const-string v0, "SomcAmRecordGreetingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException with Media Player"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_6
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 498
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 499
    .local v6, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 500
    const-string v0, "SomcAmRecordGreetingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityException with Media Player"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_7
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private startRecording()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 316
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget v3, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioStreamType:I

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 318
    .local v0, "result":I
    if-eq v0, v6, :cond_2

    .line 319
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SomcAmRecordGreetingActivity"

    const-string v2, "Failed to request AudioFocus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0186

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 386
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->checkEnoughStorage()Z

    move-result v1

    if-nez v1, :cond_3

    .line 325
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0175

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 330
    :cond_3
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    if-eqz v1, :cond_5

    .line 331
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v1}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mMessageFilePath:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 335
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->abandonRecordedGreetingFile()V

    .line 337
    :cond_4
    sget-object v1, Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;->RECORD_GREETING:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mState:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    .line 338
    iput v5, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordingTime:I

    .line 339
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPhoneAccessor:Lcom/android/phone/SomcAmPhoneAccessor;

    invoke-virtual {v3}, Lcom/android/phone/SomcAmPhoneAccessor;->getApplicationFilesDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/am/greeting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcCallRecorder;->setSaveDirectory(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    new-instance v2, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;

    invoke-direct {v2, p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;-><init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcCallRecorder;->setEventListener(Lcom/android/phone/SomcCallRecorder$EventListener;)V

    .line 376
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    sget-object v2, Lcom/android/phone/SomcCallRecorder$RecordingMode;->SECURE_REC_WITH_MIC:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcCallRecorder;->setRecordingMode(Lcom/android/phone/SomcCallRecorder$RecordingMode;)V

    .line 377
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v1}, Lcom/android/phone/SomcCallRecorder;->start()V

    .line 378
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->showRecordingScreen()V

    .line 379
    invoke-direct {p0, v6}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->setScreenOn(Z)V

    goto :goto_0

    .line 381
    :cond_5
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1098

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 382
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0174

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private stopPlaying()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 531
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->finishPlaying()V

    .line 532
    return-void
.end method

.method private stopRecording()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->setScreenOn(Z)V

    .line 392
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->stop()V

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mMessageFilePath:Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->clearFilePath()V

    .line 399
    :cond_1
    sget-object v0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;->FINISH_RECORDING:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mState:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    .line 400
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 401
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mTimer:Ljava/util/Timer;

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mMessageFilePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 406
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->showFinishRecordingScreen()V

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private turnOnSpeaker(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 772
    iget-boolean v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsTablet:Z

    if-nez v1, :cond_0

    .line 774
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 776
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 778
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private turnOnSpeakerIcon(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 781
    iget-boolean v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsTablet:Z

    if-nez v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSpeakerIcon:Landroid/view/MenuItem;

    if-nez v1, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    const/4 v0, 0x0

    .line 786
    .local v0, "speakerIcon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_2

    .line 787
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 789
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSpeakerIcon:Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 797
    :goto_1
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSpeakerIcon:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    .line 792
    :cond_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 794
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSpeakerIcon:Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0172

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 278
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 312
    :goto_0
    return v0

    .line 280
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->startRecording()V

    goto :goto_0

    .line 285
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->stopRecording()V

    goto :goto_0

    .line 288
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->startPlaying()V

    goto :goto_0

    .line 292
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->stopPlaying()V

    goto :goto_0

    .line 295
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->finishPlaying()V

    goto :goto_0

    .line 298
    :sswitch_5
    iget v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordingTime:I

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_0

    .line 299
    iget v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordingTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordingTime:I

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordDurationText:Landroid/widget/TextView;

    const-string v3, "%s / %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordingTime:I

    int-to-long v5, v5

    invoke-direct {p0, v5, v6}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-wide/16 v5, 0x1e

    invoke-direct {p0, v5, v6}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 305
    :sswitch_6
    iget v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayingTime:I

    iget v3, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordingTime:I

    if-ge v2, v3, :cond_1

    .line 306
    iget v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayingTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayingTime:I

    .line 308
    :cond_1
    iget-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayDurationText:Landroid/widget/TextView;

    const-string v3, "%s / %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayingTime:I

    int-to-long v5, v5

    invoke-direct {p0, v5, v6}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordingTime:I

    int-to-long v5, v1

    invoke-direct {p0, v5, v6}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 278
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_1
        0x1003 -> :sswitch_1
        0x1004 -> :sswitch_5
        0x1005 -> :sswitch_2
        0x1006 -> :sswitch_3
        0x1007 -> :sswitch_4
        0x1008 -> :sswitch_6
        0x1098 -> :sswitch_1
        0x1099 -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 230
    iput-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordPanel:Landroid/widget/RelativeLayout;

    .line 231
    iput-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mGuideText:Landroid/widget/TextView;

    .line 232
    iput-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordIcon:Landroid/widget/ImageView;

    .line 233
    iput-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordText:Landroid/widget/TextView;

    .line 234
    iput-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordDurationText:Landroid/widget/TextView;

    .line 235
    iput-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayPanel:Landroid/widget/RelativeLayout;

    .line 236
    iput-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayIcon:Landroid/widget/ImageView;

    .line 237
    iput-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayText:Landroid/widget/TextView;

    .line 238
    iput-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayDurationText:Landroid/widget/TextView;

    .line 239
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameFieldText:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v0

    .line 241
    .local v0, "isNameFieldFocused":Z
    iput-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameField:Landroid/widget/EditText;

    .line 242
    iput-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSaveButton:Landroid/widget/Button;

    .line 244
    const v1, 0x7f030016

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 245
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->initViews()V

    .line 246
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mState:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    sget-object v2, Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;->RECORD_GREETING:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    if-ne v1, v2, :cond_2

    .line 247
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->showRecordingScreen()V

    .line 253
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 255
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameField:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 258
    :cond_1
    return-void

    .line 248
    :cond_2
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mState:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    sget-object v2, Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;->FINISH_RECORDING:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    if-ne v1, v2, :cond_3

    .line 249
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->showFinishRecordingScreen()V

    goto :goto_0

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mState:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    sget-object v2, Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;->PLAY_GREETING:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    if-ne v1, v2, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->showPlayingScreen()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b014a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 148
    new-instance v0, Lcom/android/phone/SomcAmPhoneAccessor;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/SomcAmPhoneAccessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPhoneAccessor:Lcom/android/phone/SomcAmPhoneAccessor;

    .line 149
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPhoneAccessor:Lcom/android/phone/SomcAmPhoneAccessor;

    invoke-virtual {v0}, Lcom/android/phone/SomcAmPhoneAccessor;->getSomcCallRecorder()Lcom/android/phone/SomcCallRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    .line 150
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 153
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsTablet:Z

    .line 154
    iget-boolean v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioStreamType:I

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioStreamType:I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 703
    const/4 v0, 0x0

    .line 704
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 727
    :goto_0
    return-object v0

    .line 706
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d0005

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0b0157

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b017a

    new-instance v3, Lcom/android/phone/am/SomcAmRecordGreetingActivity$10;

    invoke-direct {v3, p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity$10;-><init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/phone/am/SomcAmRecordGreetingActivity$9;

    invoke-direct {v3, p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity$9;-><init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 704
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 732
    iget-boolean v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsTablet:Z

    if-nez v1, :cond_0

    .line 733
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 734
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f030013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 736
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mMessageFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->abandonRecordedGreetingFile()V

    .line 202
    :cond_0
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mState:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    .line 203
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPhoneAccessor:Lcom/android/phone/SomcAmPhoneAccessor;

    .line 204
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    .line 205
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    .line 206
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->removeAllMessages()V

    .line 207
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;

    .line 208
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mTimer:Ljava/util/Timer;

    .line 209
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mGuideText:Landroid/widget/TextView;

    .line 210
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordPanel:Landroid/widget/RelativeLayout;

    .line 211
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordIcon:Landroid/widget/ImageView;

    .line 212
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordText:Landroid/widget/TextView;

    .line 213
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecordDurationText:Landroid/widget/TextView;

    .line 214
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayPanel:Landroid/widget/RelativeLayout;

    .line 215
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayIcon:Landroid/widget/ImageView;

    .line 216
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayText:Landroid/widget/TextView;

    .line 217
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayDurationText:Landroid/widget/TextView;

    .line 218
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mMessageFilePath:Ljava/lang/String;

    .line 219
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameField:Landroid/widget/EditText;

    .line 220
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameFieldText:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSaveButton:Landroid/widget/Button;

    .line 222
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSpeakerIcon:Landroid/view/MenuItem;

    .line 223
    iput-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 224
    iput-boolean v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsTablet:Z

    .line 225
    iput v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mAudioStreamType:I

    .line 226
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 683
    packed-switch p1, :pswitch_data_0

    .line 698
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 685
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mState:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    sget-object v2, Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;->FINISH_RECORDING:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    if-ne v1, v2, :cond_0

    .line 686
    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_1

    .line 688
    :cond_0
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mState:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    sget-object v2, Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;->RECORD_GREETING:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    if-ne v1, v2, :cond_1

    .line 689
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->stopRecording()V

    goto :goto_1

    .line 691
    :cond_1
    iget-object v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mState:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    sget-object v2, Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;->PLAY_GREETING:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    if-ne v1, v2, :cond_2

    .line 692
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->stopPlaying()V

    goto :goto_1

    .line 695
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 750
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 751
    .local v1, "itemId":I
    packed-switch v1, :pswitch_data_0

    .line 761
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 753
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsTablet:Z

    if-nez v2, :cond_0

    .line 754
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 756
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->enableSpeaker(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 751
    :pswitch_data_0
    .packed-switch 0x7f070046
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 178
    iget-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v2}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->stopRecording()V

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->stopPlaying()V

    .line 186
    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsTablet:Z

    if-nez v2, :cond_2

    .line 187
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 189
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 190
    .local v1, "currentAudioMode":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 191
    iget-boolean v2, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsSpeakerphoneOn:Z

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 194
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "currentAudioMode":I
    :cond_2
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 741
    iget-boolean v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 742
    const v0, 0x7f070046

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSpeakerIcon:Landroid/view/MenuItem;

    .line 743
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mSpeakerIcon:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 745
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 164
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->initViews()V

    .line 166
    iget-boolean v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsTablet:Z

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 169
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mIsSpeakerphoneOn:Z

    .line 171
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->enableSpeaker(Z)V

    .line 173
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method
