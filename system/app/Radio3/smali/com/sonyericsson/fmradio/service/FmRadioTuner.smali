.class Lcom/sonyericsson/fmradio/service/FmRadioTuner;
.super Lcom/sonyericsson/fmradio/service/Tuner;
.source "FmRadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$3;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateScanning;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarting;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;,
        Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;
    }
.end annotation


# instance fields
.field private mAllowAutoStart:Z

.field private mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

.field private mBand:Lcom/stericsson/hardware/fm/FmBand;

.field private mBandForTest:Lcom/stericsson/hardware/fm/FmBand;

.field mCallStateHandler:Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;

.field private mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

.field private mFeedbackUpdater:Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

.field private mForcedMonoPlayback:Z

.field private mFrequency:I

.field private mFrequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;

.field private mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

.field private mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

.field mPhoneCallInProgress:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreventNextPlayback:Z

.field private mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

.field private mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

.field private mResources:Landroid/content/res/Resources;

.field private mSignalQualityListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

.field private final mStateIdle:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;

.field private final mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatePaused:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;

.field private final mStateScanning:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateScanning;

.field private final mStateStarted:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;

.field private final mStateStarting:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarting;

.field private mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

.field private mThreshold:I

.field private mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;


# direct methods
.method public constructor <init>(Lcom/stericsson/hardware/fm/FmReceiver;Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;Lcom/sonyericsson/fmradio/service/PhfHandler;Lcom/sonyericsson/fmradio/service/AudioHandler;Lcom/sonyericsson/fmradio/service/SystemStateHandler;Lcom/sonyericsson/fmradio/station/RadioStore;Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;Lcom/stericsson/hardware/fm/FmBand;Landroid/content/Context;)V
    .locals 6
    .param p1, "receiver"    # Lcom/stericsson/hardware/fm/FmReceiver;
    .param p2, "frequencySetter"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;
    .param p3, "phfHandler"    # Lcom/sonyericsson/fmradio/service/PhfHandler;
    .param p4, "audioHandler"    # Lcom/sonyericsson/fmradio/service/AudioHandler;
    .param p5, "sysStateHandler"    # Lcom/sonyericsson/fmradio/service/SystemStateHandler;
    .param p6, "radioStore"    # Lcom/sonyericsson/fmradio/station/RadioStore;
    .param p7, "feedbackProvider"    # Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;
    .param p8, "injectedFmBandForTest"    # Lcom/stericsson/hardware/fm/FmBand;
    .param p9, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 184
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/Tuner;-><init>()V

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;

    .line 106
    new-instance v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateIdle:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;

    .line 108
    new-instance v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarting;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarting;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateStarting:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarting;

    .line 110
    new-instance v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateStarted:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;

    .line 112
    new-instance v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStatePaused:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;

    .line 114
    new-instance v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateScanning;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateScanning;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateScanning:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateScanning;

    .line 116
    new-instance v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    invoke-direct {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .line 136
    iput-boolean v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhoneCallInProgress:Z

    .line 142
    iput-boolean v5, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAllowAutoStart:Z

    .line 144
    iput-boolean v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPreventNextPlayback:Z

    .line 155
    new-instance v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 185
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    .line 186
    iput-object p2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;

    .line 187
    iput-object p8, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBandForTest:Lcom/stericsson/hardware/fm/FmBand;

    .line 188
    iput-object p3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    .line 189
    iput-object p4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    .line 190
    iput-object p5, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    .line 191
    iput-object p7, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    .line 192
    invoke-virtual {p9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mResources:Landroid/content/res/Resources;

    .line 194
    new-instance v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mCallStateHandler:Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;

    .line 196
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mSignalQualityListeners:Ljava/util/Set;

    .line 198
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateIdle:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateStarting:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarting;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateStarted:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStatePaused:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateScanning:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateScanning;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v1, Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-direct {v1, p6}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;-><init>(Lcom/sonyericsson/fmradio/station/RadioStore;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    .line 206
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->initBandFromPrefs()V

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->load()V

    .line 208
    invoke-direct {p0, p9}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setupListeners(Landroid/content/Context;)V

    .line 211
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "failed to reset the chip"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    iget v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mThreshold:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/fmradio/service/FmRadioTuner;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mThreshold:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/RadioStationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    iget v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/fmradio/service/FmRadioTuner;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mSignalQualityListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->quantifySignalStrength(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/AudioHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPreventNextPlayback:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPreventNextPlayback:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->resetTuner()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;
    .param p1, "x1"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->startTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAllowAutoStart:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/PhfHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->pauseTuner()V

    return-void
.end method

.method static synthetic access$3400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/TimerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->scanUp()V

    return-void
.end method

.method static synthetic access$3600(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->scanDown()V

    return-void
.end method

.method static synthetic access$3700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;
    .param p1, "x1"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->resumeTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmBand;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mForcedMonoPlayback:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    return-object v0
.end method

.method private getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
    .locals 3

    .prologue
    .line 414
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiver;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    .line 416
    .local v0, "result":Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
    if-nez v0, :cond_0

    .line 417
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No such state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 419
    :cond_0
    return-object v0
.end method

.method private initBandFromPrefs()V
    .locals 2

    .prologue
    .line 223
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBandForTest:Lcom/stericsson/hardware/fm/FmBand;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBandForTest:Lcom/stericsson/hardware/fm/FmBand;

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    .line 236
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->loadRegion()I

    move-result v0

    .line 229
    .local v0, "savedRegion":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mResources:Landroid/content/res/Resources;

    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmParams;->getFmBandFromResources(Landroid/content/res/Resources;)Lcom/stericsson/hardware/fm/FmBand;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    goto :goto_0

    .line 234
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmParams;->createFmBandForRegion(I)Lcom/stericsson/hardware/fm/FmBand;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    goto :goto_0
.end method

.method private isDestroyed()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private load()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->loadFrequency()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->load(I)V

    .line 240
    return-void
.end method

.method private load(I)V
    .locals 9
    .param p1, "frequency"    # I

    .prologue
    const/4 v8, 0x0

    .line 243
    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    .line 244
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 246
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmBand;->isFrequencyValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local p1    # "frequency":I
    :goto_0
    iput p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I

    .line 248
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    new-instance v3, Lcom/sonyericsson/fmradio/service/FmRadioTuner$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$2;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->load(Lcom/sonyericsson/fmradio/service/RadioStationHandler$FrequencyFilter;)V

    .line 255
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    .line 256
    return-void

    .line 246
    .restart local p1    # "frequency":I
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmBand;->getDefaultFrequency()I

    move-result p1

    goto :goto_0
.end method

.method private pauseTuner()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1123
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->pause()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1129
    :goto_0
    return-void

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, "e":Ljava/io/IOException;
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Failed to set FM Receiver in paused state"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0

    .line 1126
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Ignored illegal state exception"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private quantifySignalStrength(I)I
    .locals 3
    .param p1, "signalStrength"    # I

    .prologue
    .line 671
    iget v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mThreshold:I

    if-ge p1, v1, :cond_0

    .line 672
    const/4 v0, 0x0

    .line 684
    :goto_0
    return v0

    .line 683
    :cond_0
    iget v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mThreshold:I

    sub-int v1, p1, v1

    mul-int/lit8 v1, v1, 0x5

    iget v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mThreshold:I

    rsub-int v2, v2, 0x3e8

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 684
    .local v0, "result":I
    goto :goto_0
.end method

.method private resetTuner()V
    .locals 4

    .prologue
    .line 1133
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    :goto_0
    return-void

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to reset the receiver"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private resumeTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    const/4 v2, 0x1

    .line 1110
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/PhfHandler;->isPhfConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1113
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->setAutoScan(Z)V

    .line 1114
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->resume()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :cond_0
    :goto_0
    return-void

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "e":Ljava/io/IOException;
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to resume the FM Receiver"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private scanDown()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/stericsson/hardware/fm/FmReceiver;->scanDown()V

    .line 729
    return-void
.end method

.method private scanUp()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/stericsson/hardware/fm/FmReceiver;->scanUp()V

    .line 722
    return-void
.end method

.method private setupListeners(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 273
    new-instance v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    .line 275
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/fmradio/service/PhfHandler;->setPhfListener(Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;)V

    .line 276
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/fmradio/service/AudioHandler;->setAudioListener(Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;)V

    .line 277
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/fmradio/service/SystemStateHandler;->setSystemStateListener(Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;)V

    .line 278
    new-instance v1, Lcom/sonyericsson/fmradio/service/TimerHandler;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-direct {v1, v2}, Lcom/sonyericsson/fmradio/service/TimerHandler;-><init>(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerListener;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;

    .line 280
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnStartedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V

    .line 281
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnStateChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;)V

    .line 282
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnScanListener(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V

    .line 283
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V

    .line 284
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V

    .line 285
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V

    .line 287
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 288
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhoneCallInProgress:Z

    .line 290
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 292
    :cond_0
    return-void

    .line 289
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1093
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/PhfHandler;->isPhfConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1095
    invoke-virtual {p1, v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->setApplyFrequency(Z)V

    .line 1096
    invoke-virtual {p1, v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->setAutoScan(Z)V

    .line 1098
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->initBandFromPrefs()V

    .line 1099
    iget v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I

    invoke-direct {p0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->load(I)V

    .line 1100
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver;->startAsync(Lcom/stericsson/hardware/fm/FmBand;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    .local v0, "e":Ljava/io/IOException;
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Failed to start the FM Receiver"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0

    .line 1103
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1104
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Failed to start the FM Receiver"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addFavorite(ILjava/lang/String;I)V
    .locals 2
    .param p1, "frequency"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "color"    # I

    .prologue
    .line 760
    if-nez p2, :cond_0

    .line 761
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "favorite name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->addFavorite(ILjava/lang/String;I)V

    .line 765
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->save()V

    .line 766
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    invoke-interface {v0}, Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;->favoriteAdded()V

    .line 767
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 768
    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    .line 769
    return-void
.end method

.method public addSignalQualityListener(Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 892
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mSignalQualityListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 896
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->getSignalStrength()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->quantifySignalStrength(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;->onSignalStrengthChanged(I)V

    .line 897
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->isPlayingInStereo()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;->onPlayingInStereo(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 903
    :goto_0
    return-void

    .line 898
    :catch_0
    move-exception v0

    .line 899
    .local v0, "e":Ljava/io/IOException;
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "failed to get signal strength"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0

    .line 900
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "ignored illegal state"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public allowAutoStart(Z)V
    .locals 2
    .param p1, "doAllow"    # Z

    .prologue
    .line 790
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getState()Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->STOPPED:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    if-ne v0, v1, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->autoStart()V

    .line 793
    :cond_0
    iput-boolean p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAllowAutoStart:Z

    .line 794
    return-void
.end method

.method public autoStart()V
    .locals 2

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->autoStart(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 404
    return-void
.end method

.method public canNavigateFavorites()Z
    .locals 2

    .prologue
    .line 922
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    iget v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->canNavigateFavorites(I)Z

    move-result v0

    return v0
.end method

.method public changeFmBand(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 0
    .param p1, "band"    # Lcom/stericsson/hardware/fm/FmBand;

    .prologue
    .line 745
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    .line 746
    return-void
.end method

.method public destroy(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 295
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/fmradio/service/AudioHandler;->setAudioListener(Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;)V

    .line 297
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/AudioHandler;->stop()V

    .line 298
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/AudioHandler;->release()V

    .line 299
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/fmradio/service/SystemStateHandler;->setSystemStateListener(Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;)V

    .line 300
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/TimerHandler;->destroy()V

    .line 302
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v2, v3}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnStartedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V

    .line 303
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v2, v3}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnStateChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;)V

    .line 304
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v2, v3}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnScanListener(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V

    .line 305
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v2, v3}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V

    .line 306
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v2, v3}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V

    .line 307
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mListener:Lcom/sonyericsson/fmradio/service/FmRadioTuner$Listener;

    invoke-virtual {v2, v3}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V

    .line 310
    :cond_0
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 311
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 312
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mCallStateHandler:Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;->removeMessages()V

    .line 316
    iput-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mCallStateHandler:Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;

    .line 318
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;

    invoke-interface {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;->destroy()V

    .line 320
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getFrequency()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->saveFrequency(I)V

    .line 321
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->destroy()V

    .line 323
    iput-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    .line 326
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiver;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    iput-object v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    .line 334
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 335
    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    .line 336
    invoke-virtual {p0}, Ljava/util/Observable;->deleteObservers()V

    .line 337
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reset failed"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getDisplayName(I)Ljava/lang/String;
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 786
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->getDisplayName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 755
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->getFavorites()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public getFmBand()Lcom/stericsson/hardware/fm/FmBand;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I

    return v0
.end method

.method public getState()Lcom/sonyericsson/fmradio/service/Tuner$TunerState;
    .locals 4

    .prologue
    .line 798
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    if-nez v2, :cond_0

    .line 799
    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->DESTROYED:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 823
    :goto_0
    return-object v1

    .line 802
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiver;->getState()I

    move-result v0

    .line 803
    .local v0, "receiverState":I
    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->STOPPED:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 804
    .local v1, "tunerState":Lcom/sonyericsson/fmradio/service/Tuner$TunerState;
    packed-switch v0, :pswitch_data_0

    .line 821
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No such state"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 806
    :pswitch_0
    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->STOPPED:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 807
    goto :goto_0

    .line 809
    :pswitch_1
    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->STARTING:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 810
    goto :goto_0

    .line 812
    :pswitch_2
    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->PLAYING:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 813
    goto :goto_0

    .line 815
    :pswitch_3
    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->STOPPED:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 816
    goto :goto_0

    .line 818
    :pswitch_4
    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->SCANNING:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 819
    goto :goto_0

    .line 804
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getStations()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/RadioStation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 750
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->getStations()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public isFavorite(I)Z
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 781
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->isFavorite(I)Z

    move-result v0

    return v0
.end method

.method public isForcedMonoPlayback()Z
    .locals 1

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mForcedMonoPlayback:Z

    return v0
.end method

.method public isIdle()Z
    .locals 2

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->isIdle(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)Z

    move-result v0

    return v0
.end method

.method public isPhfMissing()Z
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/PhfHandler;->isPhfConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpeakerAudio()Z
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->isSpeakerAudio()Z

    move-result v0

    return v0
.end method

.method public loadRegion()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->loadRegion()I

    move-result v0

    return v0
.end method

.method public nextFavorite()V
    .locals 1

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->skipToNextFavorite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    invoke-interface {v0}, Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;->requestAddFavorite()V

    .line 937
    :cond_0
    return-void
.end method

.method public nextStation()V
    .locals 2

    .prologue
    .line 917
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->nextStation(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 918
    return-void
.end method

.method public previousFavorite()V
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->skipToPreviousFavorite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    invoke-interface {v0}, Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;->requestAddFavorite()V

    .line 930
    :cond_0
    return-void
.end method

.method public previousStation()V
    .locals 2

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->previousStation(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 913
    return-void
.end method

.method public removeFavorite(I)V
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 773
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->removeFavorite(I)V

    .line 774
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->save()V

    .line 775
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 776
    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    .line 777
    return-void
.end method

.method public removeSignalQualityListener(Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;

    .prologue
    .line 907
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mSignalQualityListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 908
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->resetTuner()V

    .line 270
    return-void
.end method

.method public saveRegion(I)V
    .locals 1
    .param p1, "region"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->saveRegion(I)V

    .line 266
    return-void
.end method

.method public searchForStations()V
    .locals 2

    .prologue
    .line 854
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->scanAll(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 855
    return-void
.end method

.method public setBackgroundMode(Z)V
    .locals 4
    .param p1, "inBackground"    # Z

    .prologue
    const/4 v3, 0x0

    .line 344
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 345
    if-eqz p1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackUpdater:Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    invoke-direct {v0, v1, p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;-><init>(Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;Lcom/sonyericsson/fmradio/service/Tuner;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackUpdater:Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackUpdater:Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

    invoke-virtual {p0, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackUpdater:Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

    invoke-virtual {v0, v3, v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 358
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackUpdater:Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackUpdater:Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

    invoke-virtual {p0, v0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 354
    iput-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackUpdater:Lcom/sonyericsson/fmradio/service/FmRadioTuner$FeedbackUpdater;

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    invoke-interface {v0}, Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;->hideBackgroundInfo()V

    goto :goto_0
.end method

.method public setForcedMonoPlayback(Z)V
    .locals 4
    .param p1, "mono"    # Z

    .prologue
    .line 883
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiver;->setForceMono(Z)V

    .line 884
    iput-boolean p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mForcedMonoPlayback:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :goto_0
    return-void

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ignored illegal state"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setFrequency(I)V
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 848
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;

    invoke-interface {v0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;->set(I)V

    .line 849
    iput p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I

    .line 850
    return-void
.end method

.method protected skipToNextFavorite()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 691
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    iget v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->getNextFavorite(I)Ljava/lang/Integer;

    move-result-object v0

    .line 692
    .local v0, "next":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 693
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 694
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setFrequency(I)V

    .line 695
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 696
    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    .line 699
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected skipToPreviousFavorite()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 706
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    iget v4, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->getPreviousFavorite(I)Ljava/lang/Integer;

    move-result-object v0

    .line 707
    .local v0, "prev":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 708
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 709
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setFrequency(I)V

    .line 710
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 711
    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    .line 714
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public togglePower()V
    .locals 2

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->togglePower(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 860
    return-void
.end method

.method public toggleSpeakerAudio()V
    .locals 2

    .prologue
    .line 864
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->isSpeakerAudio()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->setSpeakerAudio(Z)V

    .line 866
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 867
    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    .line 868
    return-void

    .line 864
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
