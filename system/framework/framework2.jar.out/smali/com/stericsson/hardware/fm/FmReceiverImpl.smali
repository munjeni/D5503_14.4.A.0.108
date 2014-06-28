.class public Lcom/stericsson/hardware/fm/FmReceiverImpl;
.super Lcom/stericsson/hardware/fm/FmReceiver;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FmReceiver"


# instance fields
.field private mBand:Lcom/stericsson/hardware/fm/FmBand;

.field private mOnAutomaticSwitch:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnError:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnExtraCommand:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnForcedPause:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnForcedReset:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnRDSData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScan:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSignalStrength:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnStarted:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnStateChanged:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnStereo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/stericsson/hardware/fm/IFmReceiver;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiver;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStateChanged:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStarted:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnError:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnScan:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedPause:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedReset:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnRDSData:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnSignalStrength:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStereo:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnExtraCommand:Ljava/util/HashMap;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnAutomaticSwitch:Ljava/util/HashMap;

    .line 583
    invoke-static {p1}, Lcom/stericsson/hardware/fm/IFmReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IFmReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    .line 584
    return-void
.end method


# virtual methods
.method public addOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;

    .prologue
    .line 1105
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnAutomaticSwitch:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1118
    :goto_0
    return-void

    .line 1110
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnAutomaticSwitch:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;)V

    .line 1112
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V

    .line 1113
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnAutomaticSwitch:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    monitor-exit v3

    goto :goto_0

    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnAutomaticSwitchListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnErrorListener(Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;

    .prologue
    .line 897
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnError:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 910
    :goto_0
    return-void

    .line 902
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnError:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;)V

    .line 904
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V

    .line 905
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnError:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    monitor-exit v3

    goto :goto_0

    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnErrorListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnExtraCommandListener(Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;

    .prologue
    .line 1075
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnExtraCommand:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1089
    :goto_0
    return-void

    .line 1080
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnExtraCommand:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;)V

    .line 1083
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V

    .line 1084
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnExtraCommand:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    monitor-exit v3

    goto :goto_0

    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnExtraCommandListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedPauseListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;

    .prologue
    .line 985
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedPause:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 999
    :goto_0
    return-void

    .line 990
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedPause:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;)V

    .line 993
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V

    .line 994
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedPause:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    monitor-exit v3

    goto :goto_0

    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnForcedPauseListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedResetListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;

    .prologue
    .line 1015
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedReset:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1029
    :goto_0
    return-void

    .line 1020
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedReset:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;)V

    .line 1023
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V

    .line 1024
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedReset:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    monitor-exit v3

    goto :goto_0

    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnForcedResetListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;

    .prologue
    .line 956
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStereo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 969
    :goto_0
    return-void

    .line 961
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStereo:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V

    .line 963
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/IOnStereoListener;)V

    .line 964
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStereo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    monitor-exit v3

    goto :goto_0

    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnPlayingInStereoListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;

    .prologue
    .line 868
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnRDSData:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 881
    :goto_0
    return-void

    .line 873
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnRDSData:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V

    .line 875
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V

    .line 876
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnRDSData:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    monitor-exit v3

    goto :goto_0

    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnRDSDataFoundListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnScanListener(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

    .prologue
    .line 839
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnScan:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 852
    :goto_0
    return-void

    .line 844
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnScan:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V

    .line 846
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnScanListener(Lcom/stericsson/hardware/fm/IOnScanListener;)V

    .line 847
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnScan:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    monitor-exit v3

    goto :goto_0

    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnScanListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;

    .prologue
    .line 926
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnSignalStrength:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 940
    :goto_0
    return-void

    .line 931
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnSignalStrength:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V

    .line 934
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V

    .line 935
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnSignalStrength:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    monitor-exit v3

    goto :goto_0

    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 937
    :catch_0
    move-exception v0

    .line 938
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnSignalStrengthChangedListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStartedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;

    .prologue
    .line 810
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStarted:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 823
    :goto_0
    return-void

    .line 815
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStarted:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V

    .line 817
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V

    .line 818
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStarted:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    monitor-exit v3

    goto :goto_0

    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnStartedListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStateChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;

    .prologue
    .line 1045
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStateChanged:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1059
    :goto_0
    return-void

    .line 1050
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStateChanged:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;)V

    .line 1053
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V

    .line 1054
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStateChanged:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    monitor-exit v3

    goto :goto_0

    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnStateChangedListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->getFrequency()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 698
    :goto_0
    return v1

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "getFrequency: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSignalStrength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->getSignalStrength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 708
    :goto_0
    return v1

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "getSignalStrength: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 643
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 646
    :goto_0
    return v1

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "getState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThreshold()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->getThreshold()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 688
    :goto_0
    return v1

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "getThreshold: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPlayingInStereo()Z
    .locals 3

    .prologue
    .line 715
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->isPlayingInStereo()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 718
    :goto_0
    return v1

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "isPlayingInStereo: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRDSDataSupported()Z
    .locals 3

    .prologue
    .line 653
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->isRDSDataSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 656
    :goto_0
    return v1

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "isRDSDataSupported: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTunedToValidChannel()Z
    .locals 3

    .prologue
    .line 663
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->isTunedToValidChannel()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 666
    :goto_0
    return v1

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "isTunedToValidChannel: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 666
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :goto_0
    return-void

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "pause: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;

    .prologue
    .line 1123
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnAutomaticSwitch:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;

    .line 1124
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;
    if-eqz v1, :cond_0

    .line 1125
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnAutomaticSwitchListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnErrorListener(Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;

    .prologue
    .line 915
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnError:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;

    .line 916
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;
    if-eqz v1, :cond_0

    .line 917
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnErrorListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;

    .prologue
    .line 1094
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnExtraCommand:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;

    .line 1095
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;
    if-eqz v1, :cond_0

    .line 1096
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnExtraCommandListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;

    .prologue
    .line 1004
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedPause:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;

    .line 1005
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;
    if-eqz v1, :cond_0

    .line 1006
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnForcedPauseListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnForcedResetListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;

    .prologue
    .line 1034
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedReset:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;

    .line 1035
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;
    if-eqz v1, :cond_0

    .line 1036
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1038
    :catch_0
    move-exception v0

    .line 1039
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnForcedResetListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;

    .prologue
    .line 974
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStereo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;

    .line 975
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;
    if-eqz v1, :cond_0

    .line 976
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/IOnStereoListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 978
    :catch_0
    move-exception v0

    .line 979
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnPlayingInStereoListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;

    .prologue
    .line 886
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnRDSData:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;

    .line 887
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;
    if-eqz v1, :cond_0

    .line 888
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnRDSDataFoundListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnScanListener(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

    .prologue
    .line 857
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnScan:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;

    .line 858
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;
    if-eqz v1, :cond_0

    .line 859
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnScanListener(Lcom/stericsson/hardware/fm/IOnScanListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnScanListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;

    .prologue
    .line 945
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnSignalStrength:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;

    .line 946
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;
    if-eqz v1, :cond_0

    .line 947
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 949
    :catch_0
    move-exception v0

    .line 950
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnSignalStrengthChangedListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnStartedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;

    .prologue
    .line 828
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStarted:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;

    .line 829
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;
    if-eqz v1, :cond_0

    .line 830
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnStartedListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnStateChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;

    .prologue
    .line 1064
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStateChanged:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;

    .line 1065
    .local v1, "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;
    if-eqz v1, :cond_0

    .line 1066
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    .end local v1    # "transport":Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnStateChangedListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->reset()V

    .line 634
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :goto_0
    return-void

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "reset: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "resume: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public scanDown()V
    .locals 3

    .prologue
    .line 774
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->scanDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "scanDown: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public scanUp()V
    .locals 3

    .prologue
    .line 783
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->scanUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :goto_0
    return-void

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "scanUp: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # [Ljava/lang/String;

    .prologue
    .line 801
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1, p2}, Lcom/stericsson/hardware/fm/IFmReceiver;->sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 804
    :goto_0
    return v1

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "sendExtraCommand: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 804
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAutomaticAFSwitching(Z)V
    .locals 3
    .param p1, "automatic"    # Z

    .prologue
    .line 734
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->setAutomaticAFSwitching(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    return-void

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "setAutomaticAFSwitching: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAutomaticTASwitching(Z)V
    .locals 3
    .param p1, "automatic"    # Z

    .prologue
    .line 743
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->setAutomaticTASwitching(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    return-void

    .line 744
    :catch_0
    move-exception v0

    .line 745
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "setAutomaticTASwitching: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setForceMono(Z)V
    .locals 3
    .param p1, "forceMono"    # Z

    .prologue
    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->setForceMono(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_0
    return-void

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "setForceMono: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFrequency(I)V
    .locals 3
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 751
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v1, p1}, Lcom/stericsson/hardware/fm/FmBand;->isFrequencyValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Frequency is not valid in this band."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 756
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->setFrequency(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "setFrequency: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setThreshold(I)V
    .locals 3
    .param p1, "threshold"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    if-ltz p1, :cond_0

    const/16 v1, 0x3e8

    if-le p1, v1, :cond_1

    .line 673
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "threshold not within limits"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 676
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->setThreshold(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_0
    return-void

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "setThreshold: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public start(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 3
    .param p1, "band"    # Lcom/stericsson/hardware/fm/FmBand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 601
    if-nez p1, :cond_0

    .line 602
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Band cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 605
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->start(Lcom/stericsson/hardware/fm/FmBand;)V

    .line 606
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :goto_0
    return-void

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "start: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startAsync(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 3
    .param p1, "band"    # Lcom/stericsson/hardware/fm/FmBand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 588
    if-nez p1, :cond_0

    .line 589
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Band cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 592
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->startAsync(Lcom/stericsson/hardware/fm/FmBand;)V

    .line 593
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-void

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "startAsync: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startFullScan()V
    .locals 3

    .prologue
    .line 765
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->startFullScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :goto_0
    return-void

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "startFullScan: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopScan()V
    .locals 3

    .prologue
    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->stopScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :goto_0
    return-void

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "stopScan: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
