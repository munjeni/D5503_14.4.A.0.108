.class public Lcom/sonyericsson/fmradio/mock/MockReceiver;
.super Lcom/stericsson/hardware/fm/FmReceiver;
.source "MockReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;,
        Lcom/sonyericsson/fmradio/mock/MockReceiver$Predicate;,
        Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;,
        Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;,
        Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;,
        Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;
    }
.end annotation


# static fields
.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x3

.field private static final STATE_SCANNING:I = 0x4

.field private static final STATE_STARTED:I = 0x2

.field private static final STATE_STARTING:I = 0x1


# instance fields
.field private mAsyncStart:Ljava/lang/Runnable;

.field private mAutomaticSwitchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mChannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mDelays:Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;

.field private mErrorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraCommandListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFmBand:Lcom/stericsson/hardware/fm/FmBand;

.field private mForcedMonoPlayback:Z

.field private mForcedPauseListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field private mForcedResetListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFrequency:I

.field private mHandler:Landroid/os/Handler;

.field private mLoFiPlayer:Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;

.field private mOngoingScan:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

.field private mRDSDataFoundListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRdsDataSupported:Z

.field private mRdsUpdate:Ljava/lang/Runnable;

.field private mScanListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSignalQualityUpdate:Ljava/lang/Runnable;

.field private mSignalStrengthListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStartedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mStateChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStereoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTunerThreshold:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;)V
    .locals 1
    .param p1, "delayMode"    # Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiver;-><init>()V

    .line 119
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mTunerThreshold:I

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mAutomaticSwitchListeners:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mErrorListeners:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mExtraCommandListeners:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mForcedPauseListeners:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mForcedResetListeners:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mStereoListeners:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mRDSDataFoundListeners:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mScanListeners:Ljava/util/List;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mSignalStrengthListeners:Ljava/util/List;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mStartedListeners:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mStateChangedListeners:Ljava/util/List;

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mRdsDataSupported:Z

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mChannels:Ljava/util/Map;

    .line 164
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mHandler:Landroid/os/Handler;

    .line 165
    invoke-virtual {p1}, Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;->getDelays()Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mDelays:Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;

    .line 166
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/fmradio/mock/MockReceiver;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mAsyncStart:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/fmradio/mock/MockReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;

    .prologue
    .line 46
    iget v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/fmradio/mock/MockReceiver;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mRdsUpdate:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mRDSDataFoundListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mChannels:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Lcom/stericsson/hardware/fm/FmBand;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sonyericsson/fmradio/mock/MockReceiver;Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;)Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;
    .param p1, "x1"    # Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mOngoingScan:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sonyericsson/fmradio/mock/MockReceiver;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;
    .param p1, "x1"    # [I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->throwIfNotIn([I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/fmradio/mock/MockReceiver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->updateLowFiPlayer(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/fmradio/mock/MockReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->cancelDelayedUpdates()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/fmradio/mock/MockReceiver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->scheduleDelayedUpdates(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mScanListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/fmradio/mock/MockReceiver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->changeState(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->getValidScanTargets()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sonyericsson/fmradio/mock/MockReceiver;Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;)Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;
    .param p1, "x1"    # Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mLoFiPlayer:Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mStartedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/fmradio/mock/MockReceiver;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mSignalQualityUpdate:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/fmradio/mock/MockReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;

    .prologue
    .line 46
    iget v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFrequency:I

    return v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/fmradio/mock/MockReceiver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFrequency:I

    return p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mSignalStrengthListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mStereoListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mForcedMonoPlayback:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/fmradio/mock/MockReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/mock/MockReceiver;

    .prologue
    .line 46
    iget v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mTunerThreshold:I

    return v0
.end method

.method private cancelDelayedUpdates()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mSignalQualityUpdate:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mSignalQualityUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    iput-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mSignalQualityUpdate:Ljava/lang/Runnable;

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mRdsUpdate:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mRdsUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 333
    iput-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mRdsUpdate:Ljava/lang/Runnable;

    .line 335
    :cond_1
    return-void
.end method

.method private changeState(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    .line 794
    iget v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mState:I

    if-eq v3, p1, :cond_0

    .line 795
    iget v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mState:I

    .line 796
    .local v2, "oldState":I
    iput p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mState:I

    .line 798
    iget-object v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mStateChangedListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;

    .line 799
    .local v1, "l":Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;
    invoke-interface {v1, v2, p1}, Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;->onStateChanged(II)V

    goto :goto_0

    .line 802
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;
    .end local v2    # "oldState":I
    :cond_0
    return-void
.end method

.method private static filter(Ljava/util/Collection;Lcom/sonyericsson/fmradio/mock/MockReceiver$Predicate;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lcom/sonyericsson/fmradio/mock/MockReceiver$Predicate",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "p":Lcom/sonyericsson/fmradio/mock/MockReceiver$Predicate;, "Lcom/sonyericsson/fmradio/mock/MockReceiver$Predicate<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 373
    .local v0, "e":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 376
    .end local v0    # "e":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v2
.end method

.method private getValidScanTargets()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mChannels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/fmradio/mock/MockReceiver$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/mock/MockReceiver$4;-><init>(Lcom/sonyericsson/fmradio/mock/MockReceiver;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->filter(Ljava/util/Collection;Lcom/sonyericsson/fmradio/mock/MockReceiver$Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static isApiSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 820
    const/4 v0, 0x1

    return v0
.end method

.method private scanHelper(I)V
    .locals 8
    .param p1, "scanDirection"    # I

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->cancelDelayedUpdates()V

    .line 407
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->getValidScanTargets()Ljava/util/Collection;

    move-result-object v3

    .line 409
    .local v3, "validChannels":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 412
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->getFrequency()I

    move-result v1

    .line 413
    .local v1, "targetFrequency":I
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->getSignalStrength()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 454
    .local v2, "targetSignalStrength":I
    :goto_0
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->changeState(I)V

    .line 456
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->updateLowFiPlayer(I)V

    .line 458
    new-instance v4, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;

    invoke-direct {v4, p0, v1, v2, p1}, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;-><init>(Lcom/sonyericsson/fmradio/mock/MockReceiver;III)V

    iput-object v4, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mOngoingScan:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

    .line 493
    iget-object v4, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mOngoingScan:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

    iget-object v6, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mDelays:Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;

    iget v6, v6, Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;->scan:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 494
    return-void

    .line 414
    .end local v1    # "targetFrequency":I
    .end local v2    # "targetSignalStrength":I
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "IOException in scanHelper"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 421
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v4, Lcom/sonyericsson/fmradio/mock/MockReceiver$5;

    invoke-direct {v4, p0, p1}, Lcom/sonyericsson/fmradio/mock/MockReceiver$5;-><init>(Lcom/sonyericsson/fmradio/mock/MockReceiver;I)V

    invoke-static {v3, v4}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 451
    .restart local v1    # "targetFrequency":I
    iget-object v4, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mChannels:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;

    iget v2, v4, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;->signalStrength:I

    .restart local v2    # "targetSignalStrength":I
    goto :goto_0
.end method

.method private scheduleDelayedUpdates(I)V
    .locals 7
    .param p1, "newFrequency"    # I

    .prologue
    .line 275
    iget-object v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mChannels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;

    .line 276
    .local v0, "c":Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 277
    .local v2, "newSignalStrength":I
    :goto_0
    new-instance v3, Lcom/sonyericsson/fmradio/mock/MockReceiver$2;

    invoke-direct {v3, p0, p1, v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver$2;-><init>(Lcom/sonyericsson/fmradio/mock/MockReceiver;II)V

    iput-object v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mSignalQualityUpdate:Ljava/lang/Runnable;

    .line 295
    iget-object v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mSignalQualityUpdate:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mDelays:Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;

    iget v5, v5, Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;->signalStrength:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->isTunedToValidChannel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 300
    .local v1, "newRdsString":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_0

    .line 301
    new-instance v3, Lcom/sonyericsson/fmradio/mock/MockReceiver$3;

    invoke-direct {v3, p0, p1, v1}, Lcom/sonyericsson/fmradio/mock/MockReceiver$3;-><init>(Lcom/sonyericsson/fmradio/mock/MockReceiver;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mRdsUpdate:Ljava/lang/Runnable;

    .line 317
    iget-object v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mRdsUpdate:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mDelays:Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;

    iget v5, v5, Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;->rds:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    .end local v1    # "newRdsString":Ljava/lang/String;
    :cond_0
    return-void

    .line 276
    .end local v2    # "newSignalStrength":I
    :cond_1
    iget v2, v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;->signalStrength:I

    goto :goto_0

    .line 298
    .restart local v2    # "newSignalStrength":I
    :cond_2
    iget-object v1, v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;->rds:Ljava/lang/String;

    goto :goto_1
.end method

.method private throwIfNotIn([I)V
    .locals 9
    .param p1, "validStates"    # [I

    .prologue
    .line 805
    const/4 v1, 0x0

    .line 806
    .local v1, "found":Z
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, v0, v3

    .line 807
    .local v2, "i":I
    iget v6, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mState:I

    if-ne v6, v2, :cond_1

    .line 808
    const/4 v1, 0x1

    .line 812
    .end local v2    # "i":I
    :cond_0
    if-nez v1, :cond_2

    .line 813
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v5, v6, v7

    .line 814
    .local v5, "parentFrame":Ljava/lang/StackTraceElement;
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot call "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 806
    .end local v5    # "parentFrame":Ljava/lang/StackTraceElement;
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 817
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private updateLowFiPlayer(I)V
    .locals 3
    .param p1, "frequency"    # I

    .prologue
    .line 359
    iget-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mLoFiPlayer:Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mChannels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mChannels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;

    iget v0, v1, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;->signalStrength:I

    .line 362
    .local v0, "level":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mLoFiPlayer:Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->setSignalStrength(I)V

    .line 364
    .end local v0    # "level":I
    :cond_0
    return-void

    .line 360
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addChannel(IILjava/lang/String;)V
    .locals 3
    .param p1, "frequency"    # I
    .param p2, "signalStrength"    # I
    .param p3, "rds"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mChannels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;

    invoke-direct {v2, p2, p3}, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public addOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mAutomaticSwitchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mAutomaticSwitchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_0
    return-void
.end method

.method public addOnErrorListener(Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mErrorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mErrorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_0
    return-void
.end method

.method public addOnExtraCommandListener(Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mExtraCommandListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mExtraCommandListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    :cond_0
    return-void
.end method

.method public addOnForcedPauseListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;

    .prologue
    .line 696
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mForcedPauseListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mForcedPauseListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_0
    return-void
.end method

.method public addOnForcedResetListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;

    .prologue
    .line 710
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mForcedResetListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mForcedResetListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_0
    return-void
.end method

.method public addOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;

    .prologue
    .line 752
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mStereoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mStereoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_0
    return-void
.end method

.method public addOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mRDSDataFoundListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mRDSDataFoundListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_0
    return-void
.end method

.method public addOnScanListener(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mScanListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mScanListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_0
    return-void
.end method

.method public addOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;

    .prologue
    .line 738
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mSignalStrengthListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mSignalStrengthListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_0
    return-void
.end method

.method public addOnStartedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mStartedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mStartedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_0
    return-void
.end method

.method public addOnStateChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    :cond_0
    return-void
.end method

.method public getFrequency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->throwIfNotIn([I)V

    .line 268
    iget v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFrequency:I

    return v0

    .line 266
    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public getMockMediaPlayer(Landroid/content/Context;II)Landroid/media/MediaPlayer;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resMusic"    # I
    .param p3, "resNoise"    # I

    .prologue
    .line 903
    new-instance v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;-><init>(Lcom/sonyericsson/fmradio/mock/MockReceiver;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mLoFiPlayer:Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;

    .line 904
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mLoFiPlayer:Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;

    return-object v0
.end method

.method public getSignalStrength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 604
    iget-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mChannels:Ljava/util/Map;

    iget v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFrequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;

    .line 605
    .local v0, "c":Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;->signalStrength:I

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mState:I

    return v0
.end method

.method public getThreshold()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    iget v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mTunerThreshold:I

    return v0
.end method

.method public isPlayingInStereo()Z
    .locals 3

    .prologue
    .line 611
    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mForcedMonoPlayback:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->getSignalStrength()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mTunerThreshold:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unexpected exception from getSignalStrength"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isRDSDataSupported()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mRdsDataSupported:Z

    return v0
.end method

.method public isTunedToValidChannel()Z
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mChannels:Ljava/util/Map;

    iget v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFrequency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mChannels:Ljava/util/Map;

    iget v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFrequency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;

    iget v0, v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;->signalStrength:I

    iget v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mTunerThreshold:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->throwIfNotIn([I)V

    .line 250
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->changeState(I)V

    .line 251
    return-void

    .line 249
    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public removeChannel(I)V
    .locals 2
    .param p1, "frequency"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mChannels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public removeOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;

    .prologue
    .line 787
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mAutomaticSwitchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener cannot be removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_0
    return-void
.end method

.method public removeOnErrorListener(Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;

    .prologue
    .line 675
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mErrorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener cannot be removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_0
    return-void
.end method

.method public removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;

    .prologue
    .line 773
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mExtraCommandListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener cannot be removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_0
    return-void
.end method

.method public removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mForcedPauseListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener cannot be removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_0
    return-void
.end method

.method public removeOnForcedResetListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mForcedResetListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener cannot be removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_0
    return-void
.end method

.method public removeOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;

    .prologue
    .line 759
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mStereoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener cannot be removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_0
    return-void
.end method

.method public removeOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mRDSDataFoundListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener cannot be removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_0
    return-void
.end method

.method public removeOnScanListener(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

    .prologue
    .line 689
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mScanListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener cannot be removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_0
    return-void
.end method

.method public removeOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mSignalStrengthListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener cannot be removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_0
    return-void
.end method

.method public removeOnStartedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mStartedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener cannot be removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_0
    return-void
.end method

.method public removeOnStateChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener cannot be removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mOngoingScan:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mOngoingScan:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    iput-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mOngoingScan:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mAsyncStart:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mAsyncStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    iput-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mAsyncStart:Ljava/lang/Runnable;

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->cancelDelayedUpdates()V

    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->changeState(I)V

    .line 245
    return-void
.end method

.method public resume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 255
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->throwIfNotIn([I)V

    .line 256
    invoke-direct {p0, v1}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->changeState(I)V

    .line 257
    return-void

    .line 255
    nop

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public scanDown()V
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->throwIfNotIn([I)V

    .line 507
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->scanHelper(I)V

    .line 508
    return-void

    .line 505
    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public scanUp()V
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->throwIfNotIn([I)V

    .line 500
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->scanHelper(I)V

    .line 501
    return-void

    .line 498
    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # [Ljava/lang/String;

    .prologue
    .line 635
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAutomaticAFSwitching(Z)V
    .locals 2
    .param p1, "automatic"    # Z

    .prologue
    .line 625
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAutomaticTASwitching(Z)V
    .locals 2
    .param p1, "automatic"    # Z

    .prologue
    .line 630
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForceMono(Z)V
    .locals 1
    .param p1, "forceMono"    # Z

    .prologue
    .line 619
    iput-boolean p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mForcedMonoPlayback:Z

    .line 620
    iget v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFrequency:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->scheduleDelayedUpdates(I)V

    .line 621
    return-void
.end method

.method public setFrequency(I)V
    .locals 2
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->throwIfNotIn([I)V

    .line 341
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v0, p1}, Lcom/stericsson/hardware/fm/FmBand;->isFrequencyValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Frequency is not valid in this band."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    iput p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFrequency:I

    .line 346
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->updateLowFiPlayer(I)V

    .line 348
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->cancelDelayedUpdates()V

    .line 349
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->scheduleDelayedUpdates(I)V

    .line 351
    return-void

    .line 339
    nop

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public setRdsDataSupported(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mRdsDataSupported:Z

    .line 186
    return-void
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    iput p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mTunerThreshold:I

    .line 595
    return-void
.end method

.method public start(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 2
    .param p1, "band"    # Lcom/stericsson/hardware/fm/FmBand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 190
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->throwIfNotIn([I)V

    .line 192
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    .line 193
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getDefaultFrequency()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFrequency:I

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mDelays:Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;

    iget v0, v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;->startup:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->changeState(I)V

    .line 200
    return-void

    .line 197
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startAsync(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .param p1, "band"    # Lcom/stericsson/hardware/fm/FmBand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 204
    new-array v0, v2, [I

    aput v1, v0, v1

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->throwIfNotIn([I)V

    .line 206
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    .line 207
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getDefaultFrequency()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFrequency:I

    .line 209
    invoke-direct {p0, v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->changeState(I)V

    .line 211
    new-instance v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/mock/MockReceiver$1;-><init>(Lcom/sonyericsson/fmradio/mock/MockReceiver;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mAsyncStart:Ljava/lang/Runnable;

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mAsyncStart:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mDelays:Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;

    iget v2, v2, Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;->startup:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    return-void
.end method

.method public startFullScan()V
    .locals 4

    .prologue
    .line 512
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->throwIfNotIn([I)V

    .line 514
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->changeState(I)V

    .line 516
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->updateLowFiPlayer(I)V

    .line 518
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->cancelDelayedUpdates()V

    .line 520
    new-instance v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/mock/MockReceiver$7;-><init>(Lcom/sonyericsson/fmradio/mock/MockReceiver;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mOngoingScan:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

    .line 559
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mOngoingScan:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mDelays:Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;

    iget v2, v2, Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;->fullScan:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 560
    return-void

    .line 512
    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public stopScan()V
    .locals 3

    .prologue
    .line 566
    iget-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mOngoingScan:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mOngoingScan:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 570
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mOngoingScan:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

    .line 571
    .local v0, "c":Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;
    iget-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/fmradio/mock/MockReceiver$8;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver$8;-><init>(Lcom/sonyericsson/fmradio/mock/MockReceiver;Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 577
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver;->mOngoingScan:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

    .line 579
    .end local v0    # "c":Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;
    :cond_0
    return-void
.end method
