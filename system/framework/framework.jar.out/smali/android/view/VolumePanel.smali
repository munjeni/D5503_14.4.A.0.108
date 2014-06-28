.class public Landroid/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/media/VolumeController;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VolumePanel$WarningDialogReceiver;,
        Landroid/view/VolumePanel$StreamControl;,
        Landroid/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0xb

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_RELOAD_RESOURCES:I = 0x3e7

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final STREAMS:[Landroid/view/VolumePanel$StreamResources;

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

.field private static sConfirmSafeVolumeLock:Ljava/lang/Object;


# instance fields
.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mDivider:Landroid/view/View;

.field private mLastFlags:I

.field private mLastStreamType:I

.field private mMoreButton:Landroid/view/View;

.field private mPanel:Landroid/view/ViewGroup;

.field private final mPlayMasterStreamTones:Z

.field private mRingIsSilent:Z

.field private mShowCombinedVolumes:Z

.field private mSliderGroup:Landroid/view/ViewGroup;

.field private final mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mUseMasterVolume:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mView:Landroid/view/View;

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    sput-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    .line 218
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/view/VolumePanel$StreamResources;

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MasterStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->RemoteStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    .line 244
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumeService"    # Landroid/media/AudioService;

    .prologue
    const v8, 0x1110010

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 281
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 135
    iput v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 141
    iput v4, p0, Landroid/view/VolumePanel;->mLastStreamType:I

    .line 147
    iput v6, p0, Landroid/view/VolumePanel;->mLastFlags:I

    .line 152
    iput-boolean v6, p0, Landroid/view/VolumePanel;->mUseMasterVolume:Z

    .line 155
    new-instance v4, Ljava/util/HashMap;

    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v7, v7

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 282
    iput-object p1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 283
    const-string v4, "audio"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 284
    iput-object p2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/VolumePanel;->mUseMasterVolume:Z

    .line 289
    iget-boolean v4, p0, Landroid/view/VolumePanel;->mUseMasterVolume:Z

    if-eqz v4, :cond_1

    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 291
    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v4, v0

    .line 292
    .local v3, "streamRes":Landroid/view/VolumePanel$StreamResources;
    iget v4, v3, Landroid/view/VolumePanel$StreamResources;->streamType:I

    const/16 v7, -0x64

    if-ne v4, v7, :cond_0

    move v4, v5

    :goto_1
    iput-boolean v4, v3, Landroid/view/VolumePanel$StreamResources;->show:Z

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 292
    goto :goto_1

    .line 296
    .end local v0    # "i":I
    .end local v3    # "streamRes":Landroid/view/VolumePanel$StreamResources;
    :cond_1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v4

    new-array v4, v4, [Landroid/media/ToneGenerator;

    iput-object v4, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 297
    const-string/jumbo v4, "vibrator"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 299
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 301
    .local v2, "masterVolumeOnly":Z
    iget-object v4, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1110011

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 304
    .local v1, "masterVolumeKeySounds":Z
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v5, p0, Landroid/view/VolumePanel;->mPlayMasterStreamTones:Z

    .line 306
    invoke-direct {p0}, Landroid/view/VolumePanel;->listenToRingerMode()V

    .line 307
    invoke-direct {p0}, Landroid/view/VolumePanel;->listenToChangesThatRequireUIRefresh()V

    .line 308
    return-void

    :cond_2
    move v5, v6

    .line 304
    goto :goto_2
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 64
    sput-object p0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Landroid/view/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/VolumePanel;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/VolumePanel;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$400(Landroid/view/VolumePanel;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/VolumePanel;

    .prologue
    .line 64
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$402(Landroid/view/VolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$500(Landroid/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Landroid/view/VolumePanel;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private addOtherVolumes()V
    .locals 5

    .prologue
    .line 512
    iget-boolean v3, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v3, :cond_1

    .line 526
    :cond_0
    return-void

    .line 514
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 516
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 517
    .local v2, "streamType":I
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroid/view/VolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    .line 514
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_3
    iget-object v3, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VolumePanel$StreamControl;

    .line 521
    .local v1, "sc":Landroid/view/VolumePanel$StreamControl;
    if-eqz v1, :cond_2

    .line 522
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 523
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    goto :goto_1
.end method

.method private collapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 566
    iget-object v2, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 567
    iget-object v2, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 569
    .local v0, "count":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 570
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 466
    invoke-direct {p0}, Landroid/view/VolumePanel;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 467
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 468
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_3

    .line 469
    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 470
    .local v5, "streamRes":Landroid/view/VolumePanel$StreamResources;
    iget v6, v5, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 471
    .local v6, "streamType":I
    iget-boolean v7, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v7, :cond_0

    sget-object v7, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    if-ne v5, v7, :cond_0

    .line 472
    sget-object v5, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    .line 474
    :cond_0
    new-instance v4, Landroid/view/VolumePanel$StreamControl;

    invoke-direct {v4, p0, v9}, Landroid/view/VolumePanel$StreamControl;-><init>(Landroid/view/VolumePanel;Landroid/view/VolumePanel$1;)V

    .line 475
    .local v4, "sc":Landroid/view/VolumePanel$StreamControl;
    iput v6, v4, Landroid/view/VolumePanel$StreamControl;->streamType:I

    .line 476
    const v7, 0x10900c9

    invoke-virtual {v1, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 477
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 478
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x1020370

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 479
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 480
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v5, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 481
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 482
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 483
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 484
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x1020304

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 485
    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    if-nez v6, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 487
    .local v2, "plusOne":I
    :goto_1
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-direct {p0, v6}, Landroid/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 488
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 489
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 490
    iget-object v7, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 485
    .end local v2    # "plusOne":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 492
    .end local v4    # "sc":Landroid/view/VolumePanel$StreamControl;
    .end local v5    # "streamRes":Landroid/view/VolumePanel$StreamResources;
    .end local v6    # "streamType":I
    :cond_3
    return-void
.end method

.method private expand()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 557
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 558
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 559
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    :cond_0
    iget-object v2, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 562
    iget-object v2, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 563
    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 1104
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1105
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1106
    return-void
.end method

.method private getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 1093
    invoke-direct {p0}, Landroid/view/VolumePanel;->inflateUi()V

    .line 1095
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 959
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    .line 963
    iget-boolean v1, p0, Landroid/view/VolumePanel;->mPlayMasterStreamTones:Z

    if-eqz v1, :cond_2

    .line 964
    const/4 p1, 0x1

    .line 969
    :cond_0
    monitor-enter p0

    .line 970
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 972
    :try_start_1
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    :goto_1
    return-object v1

    .line 966
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    .line 975
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 981
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 436
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 437
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 441
    :goto_0
    return v0

    .line 438
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 439
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamMaxVolume()I

    move-result v0

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 446
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 447
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 451
    :goto_0
    return v0

    .line 448
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 449
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    goto :goto_0

    .line 451
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized inflateUi()V
    .locals 7

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-nez v4, :cond_0

    .line 312
    new-instance v4, Landroid/view/VolumePanel$1;

    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const v6, 0x103030a

    invoke-direct {v4, p0, v5, v6}, Landroid/view/VolumePanel$1;-><init>(Landroid/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 323
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 324
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x10900c8

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    .line 325
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v5, Landroid/view/VolumePanel$2;

    invoke-direct {v5, p0}, Landroid/view/VolumePanel$2;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 332
    iget-object v4, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v5, 0x102036c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 333
    iget-object v4, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v5, 0x102036d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 334
    iget-object v4, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v5, 0x102036f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 335
    iget-object v4, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v5, 0x102036e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    .line 337
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v5, "Volume control"

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v5, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 339
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v5, Landroid/view/VolumePanel$3;

    invoke-direct {v5, p0}, Landroid/view/VolumePanel$3;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 346
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 347
    .local v3, "window":Landroid/view/Window;
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 348
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 349
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 351
    iget-object v4, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 353
    const/16 v4, 0x7e4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 354
    const/4 v4, -0x2

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 355
    const/4 v4, -0x2

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 356
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 357
    const v4, 0x40028

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 360
    iget-object v4, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111003b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    .line 361
    iget-boolean v4, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/view/VolumePanel;->mUseMasterVolume:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 363
    iget-boolean v4, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v4, :cond_2

    .line 364
    iget-object v4, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v4, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "window":Landroid/view/Window;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 361
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    .restart local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v2    # "view":Landroid/view/View;
    .restart local v3    # "window":Landroid/view/Window;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 367
    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 311
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "window":Landroid/view/Window;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private isDialogShowing()Z
    .locals 2

    .prologue
    .line 1087
    invoke-direct {p0}, Landroid/view/VolumePanel;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 1088
    .local v0, "dlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 426
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 427
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 431
    :goto_0
    return v0

    .line 428
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_2

    .line 429
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 431
    :cond_2
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private listenToChangesThatRequireUIRefresh()V
    .locals 3

    .prologue
    .line 391
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 392
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sonyericsson.theme.intent.action.SKIN_PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/VolumePanel$4;

    invoke-direct {v2, p0}, Landroid/view/VolumePanel$4;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 400
    return-void
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 410
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 411
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/VolumePanel$5;

    invoke-direct {v2, p0}, Landroid/view/VolumePanel$5;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 423
    return-void
.end method

.method private reinflateUi()V
    .locals 3

    .prologue
    .line 375
    iget-object v1, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 376
    .local v0, "showing":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 377
    iget-object v1, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 380
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 381
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 382
    invoke-direct {p0}, Landroid/view/VolumePanel;->inflateUi()V

    .line 385
    if-eqz v0, :cond_1

    .line 386
    iget v1, p0, Landroid/view/VolumePanel;->mLastStreamType:I

    iget v2, p0, Landroid/view/VolumePanel;->mLastFlags:I

    invoke-virtual {p0, v1, v2}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 388
    :cond_1
    return-void

    .line 375
    .end local v0    # "showing":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reorderSliders(I)V
    .locals 4
    .param p1, "activeStreamType"    # I

    .prologue
    .line 495
    iget-object v1, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 497
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 498
    .local v0, "active":Landroid/view/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 499
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 508
    :goto_0
    invoke-direct {p0}, Landroid/view/VolumePanel;->addOtherVolumes()V

    .line 509
    return-void

    .line 502
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 503
    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 504
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 505
    invoke-direct {p0, v0}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 1099
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1100
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1101
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "resMuteId"    # I

    .prologue
    .line 990
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 991
    .local v0, "sc":Landroid/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 992
    iput p1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 993
    iput p2, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 994
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 996
    :cond_0
    return-void

    .line 994
    :cond_1
    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method private setStreamVolume(III)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 456
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 457
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    .line 463
    :goto_0
    return-void

    .line 458
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 459
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0, p2}, Landroid/media/AudioService;->setRemoteStreamVolume(I)V

    goto :goto_0

    .line 461
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private updateSlider(Landroid/view/VolumePanel$StreamControl;)V
    .locals 4
    .param p1, "sc"    # Landroid/view/VolumePanel$StreamControl;

    .prologue
    const/4 v3, 0x1

    .line 530
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget v2, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 531
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 533
    .local v0, "muted":Z
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    iget-object v2, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 535
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 538
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v2, 0x10802b2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 540
    :cond_1
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/16 v2, -0xc8

    if-ne v1, v2, :cond_3

    .line 543
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 550
    :goto_1
    return-void

    .line 534
    :cond_2
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0

    .line 544
    :cond_3
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v2

    if-eq v1, v2, :cond_4

    if-nez v0, :cond_5

    :cond_4
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_6

    .line 546
    :cond_5
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 548
    :cond_6
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1011
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1014
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 1019
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 1024
    :sswitch_2
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 1029
    :sswitch_3
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 1034
    :sswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 1039
    :sswitch_5
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onVibrate()V

    goto :goto_0

    .line 1044
    :sswitch_6
    invoke-direct {p0}, Landroid/view/VolumePanel;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1045
    invoke-direct {p0}, Landroid/view/VolumePanel;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1046
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 1048
    :cond_1
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1049
    :try_start_0
    sget-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1050
    sget-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1052
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1056
    :sswitch_7
    invoke-direct {p0}, Landroid/view/VolumePanel;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {p0}, Landroid/view/VolumePanel;->updateStates()V

    goto :goto_0

    .line 1063
    :sswitch_8
    invoke-direct {p0}, Landroid/view/VolumePanel;->reinflateUi()V

    goto :goto_0

    .line 1068
    :sswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onRemoteVolumeChanged(II)V

    goto :goto_0

    .line 1073
    :sswitch_a
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    .line 1077
    :sswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    .line 1081
    :sswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->onDisplaySafeVolumeWarning(I)V

    goto :goto_0

    .line 1011
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_1
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0x3e7 -> :sswitch_8
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1138
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1139
    invoke-direct {p0}, Landroid/view/VolumePanel;->expand()V

    .line 1141
    :cond_0
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 1142
    return-void
.end method

.method protected onDisplaySafeVolumeWarning(I)V
    .locals 6
    .param p1, "flags"    # I

    .prologue
    .line 924
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 925
    :cond_0
    sget-object v3, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 926
    :try_start_0
    sget-object v2, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 927
    monitor-exit v3

    .line 953
    :goto_0
    return-void

    .line 929
    :cond_1
    iget-object v2, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 931
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x10900b0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x104060d

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x104060f

    new-instance v5, Landroid/view/VolumePanel$6;

    invoke-direct {v5, p0}, Landroid/view/VolumePanel$6;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040009

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    .line 942
    new-instance v1, Landroid/view/VolumePanel$WarningDialogReceiver;

    iget-object v2, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-direct {v1, v2, v4, p0}, Landroid/view/VolumePanel$WarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/VolumePanel;)V

    .line 945
    .local v1, "warning":Landroid/view/VolumePanel$WarningDialogReceiver;
    sget-object v2, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 946
    sget-object v2, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d9

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 948
    sget-object v2, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 949
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    invoke-virtual {p0}, Landroid/view/VolumePanel;->updateStates()V

    .line 952
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "warning":Landroid/view/VolumePanel$WarningDialogReceiver;
    :cond_2
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    goto :goto_0

    .line 949
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 999
    monitor-enter p0

    .line 1000
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1001
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1002
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1004
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1000
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1006
    :cond_1
    monitor-exit p0

    .line 1007
    return-void

    .line 1006
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 689
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 692
    .local v0, "sc":Landroid/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 693
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 696
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    .line 697
    return-void

    .line 693
    :cond_2
    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method protected onPlaySound(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x3

    .line 820
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 823
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 826
    :cond_0
    monitor-enter p0

    .line 827
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 828
    .local v0, "toneGen":Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    .line 829
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 830
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 832
    :cond_1
    monitor-exit p0

    .line 833
    return-void

    .line 832
    .end local v0    # "toneGen":Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1110
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1111
    .local v1, "tag":Ljava/lang/Object;
    if-eqz p3, :cond_0

    instance-of v2, v1, Landroid/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1112
    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1113
    .local v0, "sc":Landroid/view/VolumePanel$StreamControl;
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 1114
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Landroid/view/VolumePanel;->setStreamVolume(III)V

    .line 1117
    .end local v0    # "sc":Landroid/view/VolumePanel$StreamControl;
    :cond_0
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 1118
    return-void
.end method

.method protected onRemoteVolumeChanged(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/16 v3, -0xc8

    .line 862
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRemoteVolumeChanged(stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 865
    :cond_1
    monitor-enter p0

    .line 866
    :try_start_0
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    .line 867
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Landroid/view/VolumePanel;->reorderSliders(I)V

    .line 869
    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 870
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    :cond_3
    :goto_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4

    .line 876
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 877
    invoke-virtual {p0, v4, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 880
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 881
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 882
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 883
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 886
    :cond_5
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 887
    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 888
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 889
    return-void

    .line 870
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 872
    :cond_6
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "VolumePanel"

    const-string/jumbo v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 892
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string/jumbo v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 896
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 898
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 11
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v10, 0x0

    const/16 v9, -0xc8

    const/4 v8, 0x1

    .line 700
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 702
    .local v0, "index":I
    iput-boolean v10, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    .line 704
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_0

    .line 705
    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onShowVolumeChanged(streamType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    .line 713
    .local v1, "max":I
    sparse-switch p1, :sswitch_data_0

    .line 779
    :cond_1
    :goto_0
    :sswitch_0
    iget-object v5, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/VolumePanel$StreamControl;

    .line 780
    .local v3, "sc":Landroid/view/VolumePanel$StreamControl;
    if-eqz v3, :cond_5

    .line 781
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getMax()I

    move-result v5

    if-eq v5, v1, :cond_2

    .line 782
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 785
    :cond_2
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 786
    and-int/lit8 v5, p2, 0x20

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v5

    if-eq p1, v5, :cond_3

    if-eq p1, v9, :cond_3

    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    sget-object v5, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_a

    .line 791
    :cond_4
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 797
    :cond_5
    :goto_1
    invoke-direct {p0}, Landroid/view/VolumePanel;->isDialogShowing()Z

    move-result v5

    if-nez v5, :cond_7

    .line 798
    if-ne p1, v9, :cond_b

    const/4 v4, -0x1

    .line 800
    .local v4, "stream":I
    :goto_2
    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 801
    invoke-direct {p0}, Landroid/view/VolumePanel;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 803
    iget-boolean v5, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v5, :cond_6

    .line 804
    invoke-direct {p0}, Landroid/view/VolumePanel;->collapse()V

    .line 806
    :cond_6
    invoke-direct {p0}, Landroid/view/VolumePanel;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 810
    .end local v4    # "stream":I
    :cond_7
    if-eq p1, v9, :cond_8

    and-int/lit8 v5, p2, 0x10

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v5, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-ne v5, v8, :cond_8

    .line 814
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {p0, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 816
    :cond_8
    return-void

    .line 717
    .end local v3    # "sc":Landroid/view/VolumePanel$StreamControl;
    :sswitch_1
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 719
    .local v2, "ringuri":Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 720
    iput-boolean v8, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 727
    .end local v2    # "ringuri":Landroid/net/Uri;
    :sswitch_2
    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v5

    and-int/lit16 v5, v5, 0x380

    if-eqz v5, :cond_9

    .line 731
    const v5, 0x10802a0

    const v6, 0x10802a1

    invoke-direct {p0, v5, v6}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 733
    :cond_9
    const v5, 0x10802b6

    const v6, 0x10802ba

    invoke-direct {p0, v5, v6}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 744
    :sswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 745
    add-int/lit8 v1, v1, 0x1

    .line 746
    goto/16 :goto_0

    .line 754
    :sswitch_4
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 756
    .restart local v2    # "ringuri":Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 757
    iput-boolean v8, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 768
    .end local v2    # "ringuri":Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v0, v0, 0x1

    .line 769
    add-int/lit8 v1, v1, 0x1

    .line 770
    goto/16 :goto_0

    .line 774
    :sswitch_6
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_1

    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showing remote volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 793
    .restart local v3    # "sc":Landroid/view/VolumePanel$StreamControl;
    :cond_a
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_b
    move v4, p1

    .line 798
    goto/16 :goto_2

    .line 713
    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "visible"    # I

    .prologue
    const/4 v1, 0x1

    .line 909
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_0
    if-ne p2, v1, :cond_2

    .line 911
    .local v1, "isVisible":Z
    :goto_0
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 912
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 913
    .local v2, "streamRes":Landroid/view/VolumePanel$StreamResources;
    iget v3, v2, Landroid/view/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 914
    iput-boolean v1, v2, Landroid/view/VolumePanel$StreamResources;->show:Z

    .line 915
    if-nez v1, :cond_1

    iget v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 916
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    .end local v2    # "streamRes":Landroid/view/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 910
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 911
    .restart local v0    # "i":I
    .restart local v1    # "isVisible":Z
    .restart local v2    # "streamRes":Landroid/view/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 909
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    .end local v2    # "streamRes":Landroid/view/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1121
    return-void
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 837
    monitor-enter p0

    .line 838
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 839
    .local v1, "numStreamTypes":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 840
    iget-object v3, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 841
    .local v2, "toneGen":Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 842
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 839
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 845
    .end local v2    # "toneGen":Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 846
    return-void

    .line 845
    .end local v0    # "i":I
    .end local v1    # "numStreamTypes":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/16 v3, -0xc8

    .line 1124
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1125
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Landroid/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1126
    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1131
    .local v0, "sc":Landroid/view/VolumePanel$StreamControl;
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v3, :cond_0

    .line 1132
    invoke-direct {p0, v3}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1135
    .end local v0    # "sc":Landroid/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 851
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 856
    :goto_0
    return-void

    .line 855
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 658
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_0
    iput p1, p0, Landroid/view/VolumePanel;->mLastStreamType:I

    .line 660
    iput p2, p0, Landroid/view/VolumePanel;->mLastFlags:I

    .line 662
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 663
    monitor-enter p0

    .line 664
    :try_start_0
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, p1, :cond_1

    .line 665
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->reorderSliders(I)V

    .line 667
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 668
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_3

    .line 672
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 673
    invoke-virtual {p0, v3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 676
    :cond_3
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_4

    .line 677
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 678
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 679
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 682
    :cond_4
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 683
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 684
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 685
    return-void

    .line 668
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    const/16 v1, 0xb

    .line 647
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    :goto_0
    return-void

    .line 648
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 621
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    :goto_0
    return-void

    .line 624
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 643
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Landroid/view/VolumePanel;->postMuteChanged(II)V

    .line 644
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 628
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 629
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 632
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 633
    :cond_0
    monitor-enter p0

    .line 634
    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    invoke-direct {p0}, Landroid/view/VolumePanel;->createSliders()V

    .line 637
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 639
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 637
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 605
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 607
    return-void

    .line 605
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(II)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/16 v1, 0x8

    .line 594
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    :goto_0
    return-void

    .line 595
    :cond_0
    monitor-enter p0

    .line 596
    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    invoke-direct {p0}, Landroid/view/VolumePanel;->createSliders()V

    .line 599
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 601
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 599
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 583
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    :goto_0
    return-void

    .line 584
    :cond_0
    monitor-enter p0

    .line 585
    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    invoke-direct {p0}, Landroid/view/VolumePanel;->createSliders()V

    .line 588
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 590
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 588
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 403
    iget-object v0, p0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 405
    invoke-virtual {p0}, Landroid/view/VolumePanel;->updateStates()V

    .line 407
    :cond_0
    return-void
.end method

.method public updateStates()V
    .locals 4

    .prologue
    .line 575
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 576
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 577
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 578
    .local v2, "sc":Landroid/view/VolumePanel$StreamControl;
    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    .end local v2    # "sc":Landroid/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method
