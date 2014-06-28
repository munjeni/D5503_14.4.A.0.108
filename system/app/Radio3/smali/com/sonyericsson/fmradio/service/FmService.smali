.class public Lcom/sonyericsson/fmradio/service/FmService;
.super Landroid/app/Service;
.source "FmService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FmService"

.field public static final USER_INITIATED_START:Ljava/lang/String; = "user-initiated-start"

.field private static sFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

.field private static sInjectedAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

.field private static sInjectedBand:Lcom/stericsson/hardware/fm/FmBand;

.field private static sInjectedBtAudioHandler:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

.field private static sInjectedFrequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;

.field private static sInjectedPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

.field private static sInjectedRadioStore:Lcom/sonyericsson/fmradio/station/RadioStore;

.field private static sInjectedReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

.field private static sInjectedSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

.field private static sInstance:Lcom/sonyericsson/fmradio/service/FmService;

.field private static sSuppressForegroundCalls:Z


# instance fields
.field private mBoundClients:Z

.field private mDoAutoStart:Z

.field private mLaunchTime:J

.field mLocalBinder:Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;

.field private mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

.field private mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

.field private mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

.field private mUserBackground:Z

.field private multiUserReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    new-instance v0, Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;-><init>(Lcom/sonyericsson/fmradio/service/FmService;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mLocalBinder:Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mUserBackground:Z

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mDoAutoStart:Z

    .line 357
    new-instance v0, Lcom/sonyericsson/fmradio/service/FmService$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/service/FmService$1;-><init>(Lcom/sonyericsson/fmradio/service/FmService;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->multiUserReceiver:Landroid/content/BroadcastReceiver;

    .line 372
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/fmradio/service/FmService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/FmService;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mUserBackground:Z

    return p1
.end method

.method private onBindInternal(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 297
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mBoundClients:Z

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setBackgroundMode(Z)V

    .line 300
    sget-boolean v0, Lcom/sonyericsson/fmradio/service/FmService;->sSuppressForegroundCalls:Z

    if-nez v0, :cond_0

    .line 301
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 309
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mUserBackground:Z

    if-nez v0, :cond_1

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/fmradio/service/FmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 311
    const-string v0, "user-initiated-start"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->autoStart()V

    .line 316
    :cond_1
    return-void
.end method

.method public static onMediaButtonKeyDownEvent()Z
    .locals 1

    .prologue
    .line 408
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInstance:Lcom/sonyericsson/fmradio/service/FmService;

    if-eqz v0, :cond_0

    .line 409
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInstance:Lcom/sonyericsson/fmradio/service/FmService;

    iget-object v0, v0, Lcom/sonyericsson/fmradio/service/FmService;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/PhfHandler;->onMediaButtonKeyDownEvent()V

    .line 410
    const/4 v0, 0x1

    .line 412
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAudioMediaWrapper(Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;)V
    .locals 0
    .param p0, "amw"    # Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    .prologue
    .line 451
    sput-object p0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    .line 452
    return-void
.end method

.method public static setBtAudioHandler(Lcom/sonyericsson/fmradio/service/BtAudioHandler;)V
    .locals 0
    .param p0, "handler"    # Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    .prologue
    .line 483
    sput-object p0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedBtAudioHandler:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    .line 484
    return-void
.end method

.method public static setFeedbackProvider(Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;)V
    .locals 0
    .param p0, "feedbackProvider"    # Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    .prologue
    .line 398
    sput-object p0, Lcom/sonyericsson/fmradio/service/FmService;->sFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    .line 399
    return-void
.end method

.method public static setFmBand(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 0
    .param p0, "band"    # Lcom/stericsson/hardware/fm/FmBand;

    .prologue
    .line 433
    sput-object p0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedBand:Lcom/stericsson/hardware/fm/FmBand;

    .line 434
    return-void
.end method

.method public static setFrequencySetter(Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;)V
    .locals 0
    .param p0, "frequencySetter"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;

    .prologue
    .line 469
    sput-object p0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedFrequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;

    .line 470
    return-void
.end method

.method private setInstance(Lcom/sonyericsson/fmradio/service/FmService;)V
    .locals 2
    .param p1, "fmService"    # Lcom/sonyericsson/fmradio/service/FmService;

    .prologue
    .line 181
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/fmradio/service/FmService;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to store invalid instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    sput-object p1, Lcom/sonyericsson/fmradio/service/FmService;->sInstance:Lcom/sonyericsson/fmradio/service/FmService;

    .line 185
    return-void
.end method

.method public static setPhfHandler(Lcom/sonyericsson/fmradio/service/PhfHandler;)V
    .locals 0
    .param p0, "phfHandler"    # Lcom/sonyericsson/fmradio/service/PhfHandler;

    .prologue
    .line 442
    sput-object p0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    .line 443
    return-void
.end method

.method public static setRadioStore(Lcom/sonyericsson/fmradio/station/RadioStore;)V
    .locals 0
    .param p0, "store"    # Lcom/sonyericsson/fmradio/station/RadioStore;

    .prologue
    .line 476
    sput-object p0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedRadioStore:Lcom/sonyericsson/fmradio/station/RadioStore;

    .line 477
    return-void
.end method

.method public static setReceiver(Lcom/stericsson/hardware/fm/FmReceiver;)V
    .locals 0
    .param p0, "receiver"    # Lcom/stericsson/hardware/fm/FmReceiver;

    .prologue
    .line 424
    sput-object p0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    .line 425
    return-void
.end method

.method public static setSuppressForegroundRequests(Z)V
    .locals 0
    .param p0, "suppress"    # Z

    .prologue
    .line 493
    sput-boolean p0, Lcom/sonyericsson/fmradio/service/FmService;->sSuppressForegroundCalls:Z

    .line 494
    return-void
.end method

.method public static setSystemStateHandler(Lcom/sonyericsson/fmradio/service/SystemStateHandler;)V
    .locals 0
    .param p0, "ssh"    # Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    .prologue
    .line 460
    sput-object p0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    .line 461
    return-void
.end method

.method private stopIfIdle()Z
    .locals 2

    .prologue
    .line 350
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mBoundClients:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 351
    .local v0, "stop":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 354
    :cond_0
    return v0

    .line 350
    .end local v0    # "stop":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getTuner(Z)Lcom/sonyericsson/fmradio/service/Tuner;
    .locals 1
    .param p1, "powerOn"    # Z

    .prologue
    .line 379
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 380
    iput-boolean p1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mDoAutoStart:Z

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->allowAutoStart(Z)V

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    return-object v0
.end method

.method public isUserBackground()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mUserBackground:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmService;->onBindInternal(Landroid/content/Intent;)V

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mLocalBinder:Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    .line 93
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 94
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->multiUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    if-nez v0, :cond_0

    .line 101
    const-string v0, "FmService"

    const-string v3, "Service startup aborted - no feedback provider set"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 172
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    if-eqz v0, :cond_1

    .line 113
    sget-object v1, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    .line 119
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiver;
    :goto_1
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedFrequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;

    if-eqz v0, :cond_2

    .line 120
    sget-object v2, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedFrequencySetter:Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;

    .line 125
    .local v2, "frequencySetter":Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;
    :goto_2
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    if-eqz v0, :cond_3

    .line 126
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    .line 131
    :goto_3
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedBtAudioHandler:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    if-eqz v0, :cond_4

    .line 132
    sget-object v10, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedBtAudioHandler:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    .line 137
    .local v10, "btAudioHandler":Lcom/sonyericsson/fmradio/service/BtAudioHandler;
    :goto_4
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    if-eqz v0, :cond_5

    .line 138
    new-instance v4, Lcom/sonyericsson/fmradio/service/AudioHandler;

    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedAudioMediaWrapper:Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;

    invoke-direct {v4, p0, v0, v10}, Lcom/sonyericsson/fmradio/service/AudioHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;Lcom/sonyericsson/fmradio/service/BtAudioHandler;)V

    .line 143
    .local v4, "audioHandler":Lcom/sonyericsson/fmradio/service/AudioHandler;
    :goto_5
    invoke-virtual {v10, v4}, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->setAudioHandler(Lcom/sonyericsson/fmradio/service/AudioHandler;)V

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    invoke-virtual {v10, v0}, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->setPhfHandler(Lcom/sonyericsson/fmradio/service/PhfHandler;)V

    .line 146
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    if-eqz v0, :cond_6

    .line 147
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    .line 152
    :goto_6
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedRadioStore:Lcom/sonyericsson/fmradio/station/RadioStore;

    if-eqz v0, :cond_7

    .line 153
    sget-object v6, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedRadioStore:Lcom/sonyericsson/fmradio/station/RadioStore;

    .line 158
    .local v6, "radioStore":Lcom/sonyericsson/fmradio/station/RadioStore;
    :goto_7
    new-instance v0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/FmService;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/FmService;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    sget-object v7, Lcom/sonyericsson/fmradio/service/FmService;->sFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    sget-object v8, Lcom/sonyericsson/fmradio/service/FmService;->sInjectedBand:Lcom/stericsson/hardware/fm/FmBand;

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;-><init>(Lcom/stericsson/hardware/fm/FmReceiver;Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;Lcom/sonyericsson/fmradio/service/PhfHandler;Lcom/sonyericsson/fmradio/service/AudioHandler;Lcom/sonyericsson/fmradio/service/SystemStateHandler;Lcom/sonyericsson/fmradio/station/RadioStore;Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;Lcom/stericsson/hardware/fm/FmBand;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sonyericsson/fmradio/service/FmService;->mLaunchTime:J

    .line 164
    invoke-direct {p0, p0}, Lcom/sonyericsson/fmradio/service/FmService;->setInstance(Lcom/sonyericsson/fmradio/service/FmService;)V

    .line 166
    sget-object v0, Lcom/sonyericsson/fmradio/service/FmService;->sFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    invoke-interface {v0, p0}, Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;->setFmService(Lcom/sonyericsson/fmradio/service/FmService;)V

    goto :goto_0

    .line 116
    .end local v1    # "receiver":Lcom/stericsson/hardware/fm/FmReceiver;
    .end local v2    # "frequencySetter":Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;
    .end local v4    # "audioHandler":Lcom/sonyericsson/fmradio/service/AudioHandler;
    .end local v6    # "radioStore":Lcom/sonyericsson/fmradio/station/RadioStore;
    .end local v10    # "btAudioHandler":Lcom/sonyericsson/fmradio/service/BtAudioHandler;
    :cond_1
    const-string v0, "fm_receiver"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiver;

    .restart local v1    # "receiver":Lcom/stericsson/hardware/fm/FmReceiver;
    goto :goto_1

    .line 122
    :cond_2
    new-instance v2, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;

    invoke-direct {v2, v1}, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;-><init>(Lcom/stericsson/hardware/fm/FmReceiver;)V

    .restart local v2    # "frequencySetter":Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;
    goto :goto_2

    .line 128
    :cond_3
    new-instance v0, Lcom/sonyericsson/fmradio/service/PhfHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/service/PhfHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    goto :goto_3

    .line 134
    :cond_4
    new-instance v10, Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    invoke-direct {v10, p0}, Lcom/sonyericsson/fmradio/service/BtAudioHandler;-><init>(Landroid/content/Context;)V

    .restart local v10    # "btAudioHandler":Lcom/sonyericsson/fmradio/service/BtAudioHandler;
    goto :goto_4

    .line 140
    :cond_5
    new-instance v4, Lcom/sonyericsson/fmradio/service/AudioHandler;

    new-instance v0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, p0, v0, v10}, Lcom/sonyericsson/fmradio/service/AudioHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;Lcom/sonyericsson/fmradio/service/BtAudioHandler;)V

    .restart local v4    # "audioHandler":Lcom/sonyericsson/fmradio/service/AudioHandler;
    goto :goto_5

    .line 149
    :cond_6
    new-instance v0, Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/service/SystemStateHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    goto :goto_6

    .line 155
    :cond_7
    new-instance v6, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;

    invoke-direct {v6, p0}, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;-><init>(Landroid/content/Context;)V

    .restart local v6    # "radioStore":Lcom/sonyericsson/fmradio/station/RadioStore;
    goto :goto_7
.end method

.method public onDestroy()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sonyericsson/fmradio/service/FmService;->mLaunchTime:J

    sub-long v1, v5, v7

    .line 233
    .local v1, "session_duration_millis":J
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 234
    .local v3, "session_duration_seconds":J
    new-array v5, v12, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Session duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%d seconds"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 236
    :try_start_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v5

    const-string v6, "session_duration"

    const-string v7, ""

    const-string v8, ""

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 248
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/FmService;->multiUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/FmService;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    if-eqz v5, :cond_0

    .line 251
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/FmService;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    invoke-virtual {v5}, Lcom/sonyericsson/fmradio/service/PhfHandler;->destroy()V

    .line 252
    iput-object v10, p0, Lcom/sonyericsson/fmradio/service/FmService;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;

    .line 255
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/FmService;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    if-eqz v5, :cond_1

    .line 256
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/FmService;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    invoke-virtual {v5}, Lcom/sonyericsson/fmradio/service/SystemStateHandler;->destroy()V

    .line 257
    iput-object v10, p0, Lcom/sonyericsson/fmradio/service/FmService;->mSystemStateHandler:Lcom/sonyericsson/fmradio/service/SystemStateHandler;

    .line 260
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    if-eqz v5, :cond_2

    .line 261
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v5, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 262
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v5, p0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->destroy(Landroid/content/Context;)V

    .line 263
    iput-object v10, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    .line 266
    :cond_2
    invoke-direct {p0, v10}, Lcom/sonyericsson/fmradio/service/FmService;->setInstance(Lcom/sonyericsson/fmradio/service/FmService;)V

    .line 267
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-array v5, v12, [Ljava/lang/Object;

    const-string v6, "Ignoring IllegalStateException due to invalid context in EasyTracker"

    aput-object v6, v5, v11

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmService;->onBindInternal(Landroid/content/Intent;)V

    .line 277
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 278
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 190
    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mBoundClients:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setBackgroundMode(Z)V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const-string v1, "user-initiated-start"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    iget-boolean v2, p0, Lcom/sonyericsson/fmradio/service/FmService;->mDoAutoStart:Z

    invoke-virtual {v1, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->allowAutoStart(Z)V

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 201
    const-string v1, "rich_notification_action"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 203
    .local v0, "notificationAction":I
    packed-switch v0, :pswitch_data_0

    .line 224
    .end local v0    # "notificationAction":I
    :cond_2
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 205
    .restart local v0    # "notificationAction":I
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->nextStation()V

    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->previousStation()V

    goto :goto_0

    .line 211
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->togglePower()V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 272
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 320
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 323
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/service/FmService;->mBoundClients:Z

    .line 325
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmService;->stopIfIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setBackgroundMode(Z)V

    .line 331
    :cond_0
    return v2
.end method

.method public startServiceInForeground(Landroid/app/Notification;)V
    .locals 1
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 288
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/FmService;->stopIfIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService;->mTuner:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setBackgroundMode(Z)V

    .line 340
    :cond_0
    return-void
.end method
