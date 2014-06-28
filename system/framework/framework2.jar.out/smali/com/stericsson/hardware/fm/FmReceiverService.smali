.class public Lcom/stericsson/hardware/fm/FmReceiverService;
.super Lcom/stericsson/hardware/fm/IFmReceiver$Stub;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FmReceiverService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mOnAutomaticSwitchReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnErrorReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnExtraCommandReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnForcedPauseReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnForcedResetReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnRDSDataReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnScanReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnSignalStrengthReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnStartedReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnStateChangedReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnStereoReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1300
    const-string v0, "fmradio"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1301
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IFmReceiver$Stub;-><init>()V

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    .line 81
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    .line 517
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverService$1;

    invoke-direct {v1, p0}, Lcom/stericsson/hardware/fm/FmReceiverService$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;)V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 550
    const-string v1, "FmReceiverService"

    const-string v2, "FmReceiverService created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    .line 554
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 555
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 559
    return-void
.end method

.method private native _fm_receiver_getFrequency()I
.end method

.method private native _fm_receiver_getSignalStrength()I
.end method

.method private native _fm_receiver_getState()I
.end method

.method private native _fm_receiver_getThreshold()I
.end method

.method private native _fm_receiver_isPlayingInStereo()Z
.end method

.method private native _fm_receiver_isRDSDataSupported()Z
.end method

.method private native _fm_receiver_isTunedToValidChannel()Z
.end method

.method private native _fm_receiver_pause()V
.end method

.method private native _fm_receiver_reset()I
.end method

.method private native _fm_receiver_resume()V
.end method

.method private native _fm_receiver_scanDown()V
.end method

.method private native _fm_receiver_scanUp()V
.end method

.method private native _fm_receiver_sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method private native _fm_receiver_setAutomaticAFSwitching(Z)V
.end method

.method private native _fm_receiver_setAutomaticTASwitching(Z)V
.end method

.method private native _fm_receiver_setForceMono(Z)V
.end method

.method private native _fm_receiver_setFrequency(I)V
.end method

.method private native _fm_receiver_setRDS(Z)V
.end method

.method private native _fm_receiver_setThreshold(I)V
.end method

.method private native _fm_receiver_start(IIII)V
.end method

.method private native _fm_receiver_startAsync(IIII)V
.end method

.method private native _fm_receiver_startFullScan()V
.end method

.method private native _fm_receiver_stopScan()V
.end method

.method static synthetic access$000(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/stericsson/hardware/fm/FmReceiverService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/stericsson/hardware/fm/FmReceiverService;)I
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_reset()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/stericsson/hardware/fm/FmReceiverService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->notifyOnForcedReset(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 545
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private notifyOnAutomaticSwitching(II)V
    .locals 5
    .param p1, "newFrequency"    # I
    .param p2, "reason"    # I

    .prologue
    .line 1288
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1289
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1290
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1291
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1292
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .line 1293
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->callOnAutomaticSwitch(II)Z

    goto :goto_0

    .line 1295
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1296
    return-void
.end method

.method private notifyOnError()V
    .locals 5

    .prologue
    .line 1233
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1234
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1235
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1236
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1237
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .line 1238
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->callOnError()Z

    goto :goto_0

    .line 1240
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1241
    return-void
.end method

.method private notifyOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1277
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1278
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1279
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1280
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1281
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .line 1282
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->callOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 1284
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1285
    return-void
.end method

.method private notifyOnForcedPause()V
    .locals 5

    .prologue
    .line 1211
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1212
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1213
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1214
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1215
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .line 1216
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->callOnForcedPause()Z

    goto :goto_0

    .line 1218
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1219
    return-void
.end method

.method private notifyOnForcedReset(I)V
    .locals 5
    .param p1, "reason"    # I

    .prologue
    .line 1222
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1223
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1224
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1225
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1226
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .line 1227
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->callOnForcedReset(I)Z

    goto :goto_0

    .line 1229
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1230
    return-void
.end method

.method private notifyOnFullScan([I[IZ)V
    .locals 5
    .param p1, "frequency"    # [I
    .param p2, "signalLevel"    # [I
    .param p3, "aborted"    # Z

    .prologue
    .line 1200
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1201
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1202
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1203
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 1205
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    invoke-virtual {v2, p1, p2, p3}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->callOnFullScan([I[IZ)Z

    goto :goto_0

    .line 1207
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1208
    return-void
.end method

.method private notifyOnPlayingInStereo(Z)V
    .locals 5
    .param p1, "inStereo"    # Z

    .prologue
    .line 1266
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1267
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1268
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1269
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1270
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .line 1271
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->callOnPlayingInStereo(Z)Z

    goto :goto_0

    .line 1273
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1274
    return-void
.end method

.method private notifyOnRDSDataFound(Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "frequency"    # I

    .prologue
    .line 1244
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1245
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1246
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1247
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1248
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .line 1249
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->callOnRDSDataFound(Landroid/os/Bundle;I)Z

    goto :goto_0

    .line 1251
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1252
    return-void
.end method

.method private notifyOnScan(IIIZ)V
    .locals 5
    .param p1, "frequency"    # I
    .param p2, "signalLevel"    # I
    .param p3, "scanDirection"    # I
    .param p4, "aborted"    # Z

    .prologue
    .line 1189
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1190
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1191
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1192
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 1194
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->callOnScan(IIIZ)Z

    goto :goto_0

    .line 1196
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1197
    return-void
.end method

.method private notifyOnSignalStrengthChanged(I)V
    .locals 5
    .param p1, "signalStrength"    # I

    .prologue
    .line 1255
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1256
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1257
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1258
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1259
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .line 1260
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->callOnSignalStrengthChanged(I)Z

    goto :goto_0

    .line 1262
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1263
    return-void
.end method

.method private notifyOnStarted()V
    .locals 6

    .prologue
    .line 1173
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1174
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1175
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1176
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .line 1178
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->callOnStarted()Z

    goto :goto_0

    .line 1185
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1181
    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1182
    const-string v3, "FmReceiverService"

    const-string v5, "Started event with RDS receiver(s), switching on RDS"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 1185
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    return-void
.end method

.method private notifyOnStateChanged(II)V
    .locals 5
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 1162
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1163
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1164
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1165
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .line 1167
    .local v2, "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->callOnStateChanged(II)Z

    goto :goto_0

    .line 1169
    .end local v0    # "c":Ljava/util/Collection;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "c":Ljava/util/Collection;
    .restart local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1170
    return-void
.end method


# virtual methods
.method public addOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;

    .prologue
    .line 1127
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1129
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1132
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1133
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .line 1134
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    if-nez v2, :cond_1

    .line 1135
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V

    .line 1136
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    const-string v3, "FmReceiverService"

    const-string v4, "addOnAutomaticSwitchListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    :cond_1
    :goto_0
    return-void

    .line 1140
    :catch_0
    move-exception v1

    .line 1141
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnErrorListener;

    .prologue
    .line 837
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 839
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 842
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 843
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .line 844
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    if-nez v2, :cond_1

    .line 845
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnErrorListener;)V

    .line 846
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    const-string v3, "FmReceiverService"

    const-string v4, "addOnErrorListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :cond_1
    :goto_0
    return-void

    .line 850
    :catch_0
    move-exception v1

    .line 851
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    .prologue
    .line 1092
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1094
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1097
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1098
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .line 1099
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    if-nez v2, :cond_1

    .line 1100
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V

    .line 1101
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    const-string v3, "FmReceiverService"

    const-string v4, "addOnExtraCommandListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :cond_1
    :goto_0
    return-void

    .line 1105
    :catch_0
    move-exception v1

    .line 1106
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    .prologue
    .line 907
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 909
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 912
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 913
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .line 914
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    if-nez v2, :cond_1

    .line 915
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V

    .line 916
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const-string v3, "FmReceiverService"

    const-string v4, "addOnForcedPauseListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    :cond_1
    :goto_0
    return-void

    .line 920
    :catch_0
    move-exception v1

    .line 921
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    .prologue
    .line 942
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 944
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 947
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 948
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .line 949
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    if-nez v2, :cond_1

    .line 950
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V

    .line 951
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const-string v3, "FmReceiverService"

    const-string v4, "addOnForcedResetListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    :cond_1
    :goto_0
    return-void

    .line 955
    :catch_0
    move-exception v1

    .line 956
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/IOnStereoListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnStereoListener;

    .prologue
    .line 1057
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1059
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1062
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1063
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .line 1064
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    if-nez v2, :cond_1

    .line 1065
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnStereoListener;)V

    .line 1066
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    const-string v3, "FmReceiverService"

    const-string v4, "addOnPlayingInStereoListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStereoListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    :cond_1
    :goto_0
    return-void

    .line 1070
    :catch_0
    move-exception v1

    .line 1071
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    .prologue
    const/4 v5, 0x1

    .line 977
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 979
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 982
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 983
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .line 984
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    if-nez v2, :cond_1

    .line 985
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V

    .line 986
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    const-string v3, "FmReceiverService"

    const-string v4, "addOnRDSDataFoundListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    :goto_0
    invoke-virtual {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 995
    const-string v3, "FmReceiverService"

    const-string v4, "First RDS receiver added, switching on RDS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-direct {p0, v5}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 999
    :cond_1
    return-void

    .line 990
    :catch_0
    move-exception v1

    .line 991
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnScanListener(Lcom/stericsson/hardware/fm/IOnScanListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnScanListener;

    .prologue
    .line 872
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 874
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 877
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 878
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 879
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    if-nez v2, :cond_1

    .line 880
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnScanListener;)V

    .line 881
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    const-string v3, "FmReceiverService"

    const-string v4, "addOnScanListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnScanListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    :cond_1
    :goto_0
    return-void

    .line 885
    :catch_0
    move-exception v1

    .line 886
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;

    .prologue
    .line 1022
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1024
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1027
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1028
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .line 1029
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    if-nez v2, :cond_1

    .line 1030
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V

    .line 1031
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    const-string v3, "FmReceiverService"

    const-string v4, "addOnSignalStrengthChangedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    :cond_1
    :goto_0
    return-void

    .line 1035
    :catch_0
    move-exception v1

    .line 1036
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnStartedListener;

    .prologue
    .line 802
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 804
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 807
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 808
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .line 809
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    if-nez v2, :cond_1

    .line 810
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnStartedListener;)V

    .line 811
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string v3, "FmReceiverService"

    const-string v4, "addOnStartedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :cond_1
    :goto_0
    return-void

    .line 815
    :catch_0
    move-exception v1

    .line 816
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    .prologue
    .line 767
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 769
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 772
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 773
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .line 774
    .local v2, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    if-nez v2, :cond_1

    .line 775
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .end local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V

    .line 776
    .restart local v2    # "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string v3, "FmReceiverService"

    const-string v4, "addOnStateChangedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :cond_1
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v1

    .line 781
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getFrequency()I

    move-result v0

    return v0
.end method

.method public getSignalStrength()I
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getSignalStrength()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getState()I

    move-result v0

    return v0
.end method

.method public getThreshold()I
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getThreshold()I

    move-result v0

    return v0
.end method

.method public isPlayingInStereo()Z
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_isPlayingInStereo()Z

    move-result v0

    return v0
.end method

.method public isRDSDataSupported()Z
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_isRDSDataSupported()Z

    move-result v0

    return v0
.end method

.method public isTunedToValidChannel()Z
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_isTunedToValidChannel()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_pause()V

    .line 602
    return-void
.end method

.method public removeOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;

    .prologue
    .line 1147
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1149
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1152
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1153
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .line 1154
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    if-eqz v1, :cond_1

    .line 1155
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    const-string v2, "FmReceiverService"

    const-string v3, "removeOnAutomaticSwitchListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1159
    :cond_1
    return-void
.end method

.method public removeOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnErrorListener;

    .prologue
    .line 857
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 859
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 862
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 863
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .line 864
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    if-eqz v1, :cond_1

    .line 865
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const-string v2, "FmReceiverService"

    const-string v3, "removeOnErrorListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 869
    :cond_1
    return-void
.end method

.method public removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    .prologue
    .line 1112
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1114
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1117
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1118
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .line 1119
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    if-eqz v1, :cond_1

    .line 1120
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    const-string v2, "FmReceiverService"

    const-string v3, "removeOnExtraCommandListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1124
    :cond_1
    return-void
.end method

.method public removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    .prologue
    .line 927
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 929
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 932
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 933
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .line 934
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    if-eqz v1, :cond_1

    .line 935
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    const-string v2, "FmReceiverService"

    const-string v3, "removeOnForcedPauseListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 939
    :cond_1
    return-void
.end method

.method public removeOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    .prologue
    .line 962
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 967
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 968
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .line 969
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    if-eqz v1, :cond_1

    .line 970
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    const-string v2, "FmReceiverService"

    const-string v3, "removeOnForcedResetListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 974
    :cond_1
    return-void
.end method

.method public removeOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/IOnStereoListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnStereoListener;

    .prologue
    .line 1077
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1079
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1082
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1083
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .line 1084
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    if-eqz v1, :cond_1

    .line 1085
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    const-string v2, "FmReceiverService"

    const-string v3, "removeOnPlayingInStereoListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStereoListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1089
    :cond_1
    return-void
.end method

.method public removeOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    .prologue
    const/4 v4, 0x0

    .line 1002
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1004
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1007
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1008
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .line 1009
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    if-eqz v1, :cond_1

    .line 1010
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    const-string v2, "FmReceiverService"

    const-string v3, "removeOnRDSDataFoundListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1013
    invoke-virtual {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1015
    const-string v2, "FmReceiverService"

    const-string v3, "Last RDS receiver removed, switching off RDS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-direct {p0, v4}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 1019
    :cond_1
    return-void
.end method

.method public removeOnScanListener(Lcom/stericsson/hardware/fm/IOnScanListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnScanListener;

    .prologue
    .line 892
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 894
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 897
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 898
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 899
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    if-eqz v1, :cond_1

    .line 900
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    const-string v2, "FmReceiverService"

    const-string v3, "removeOnScanListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnScanListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 904
    :cond_1
    return-void
.end method

.method public removeOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;

    .prologue
    .line 1042
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1044
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1047
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1048
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .line 1049
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    if-eqz v1, :cond_1

    .line 1050
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    const-string v2, "FmReceiverService"

    const-string v3, "removeOnSignalStrengthChangedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1054
    :cond_1
    return-void
.end method

.method public removeOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnStartedListener;

    .prologue
    .line 822
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 827
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 828
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .line 829
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    if-eqz v1, :cond_1

    .line 830
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-string v2, "FmReceiverService"

    const-string v3, "removeOnStartedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 834
    :cond_1
    return-void
.end method

.method public removeOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    .prologue
    .line 787
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 789
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 792
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 793
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .line 794
    .local v1, "receiver":Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    if-eqz v1, :cond_1

    .line 795
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string v2, "FmReceiverService"

    const-string v3, "removeOnStateChangedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 799
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_reset()I

    .line 593
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_resume()V

    .line 611
    return-void
.end method

.method public scanDown()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_scanDown()V

    .line 656
    return-void
.end method

.method public scanUp()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_scanUp()V

    .line 647
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # [Ljava/lang/String;

    .prologue
    .line 758
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAutomaticAFSwitching(Z)V
    .locals 2
    .param p1, "automatic"    # Z

    .prologue
    .line 740
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setAutomaticAFSwitching(Z)V

    .line 746
    return-void
.end method

.method public setAutomaticTASwitching(Z)V
    .locals 2
    .param p1, "automatic"    # Z

    .prologue
    .line 749
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setAutomaticTASwitching(Z)V

    .line 755
    return-void
.end method

.method public setForceMono(Z)V
    .locals 2
    .param p1, "forceMono"    # Z

    .prologue
    .line 731
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setForceMono(Z)V

    .line 737
    return-void
.end method

.method public setFrequency(I)V
    .locals 2
    .param p1, "frequency"    # I

    .prologue
    .line 623
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setFrequency(I)V

    .line 629
    return-void
.end method

.method public setThreshold(I)V
    .locals 2
    .param p1, "threshold"    # I

    .prologue
    .line 695
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setThreshold(I)V

    .line 701
    return-void
.end method

.method public start(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .param p1, "band"    # Lcom/stericsson/hardware/fm/FmBand;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_0
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v0

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v1

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getDefaultFrequency()I

    move-result v2

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_start(IIII)V

    .line 570
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 571
    const-string v0, "FmReceiverService"

    const-string v1, "Started with RDS receiver(s), switching on RDS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 574
    :cond_1
    return-void
.end method

.method public startAsync(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .param p1, "band"    # Lcom/stericsson/hardware/fm/FmBand;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_0
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v0

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v1

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getDefaultFrequency()I

    move-result v2

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_startAsync(IIII)V

    .line 584
    return-void
.end method

.method public startFullScan()V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_startFullScan()V

    .line 665
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_stopScan()V

    .line 674
    return-void
.end method
