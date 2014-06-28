.class Landroid/net/wifi/WifiStateMachine$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field private mAlarmEnabled:Z

.field private mFrameworkScanIntervalMs:J

.field private mScanBackOffStep:I

.field private mScanIntervalP2pConnectedMs:J

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4241
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4243
    iput v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mScanBackOffStep:I

    .line 4245
    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mAlarmEnabled:Z

    return-void
.end method

.method private calcScanInterval()I
    .locals 5

    .prologue
    .line 4254
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$7700(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v0

    long-to-int v0, v0

    const-wide/high16 v1, 0x4000000000000000L

    iget v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mScanBackOffStep:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private setScanAlarm(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 4258
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mAlarmEnabled:Z

    if-ne p1, v0, :cond_1

    .line 4271
    :cond_0
    :goto_0
    return-void

    .line 4259
    :cond_1
    if-eqz p1, :cond_2

    .line 4260
    iget-wide v2, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanIntervalMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 4261
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanIntervalMs:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanIntervalMs:J

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$21900(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 4265
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mAlarmEnabled:Z

    goto :goto_0

    .line 4268
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$21900(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4269
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mAlarmEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const v7, 0x2008f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4276
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkIsSelected:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$15600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfigStore;->isSecurityPriorityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4279
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfigStore;->resetSelectedPriority()V

    .line 4280
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    .line 4282
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mNetworkIsSelected:Z
    invoke-static {v1, v5}, Landroid/net/wifi/WifiStateMachine;->access$15602(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4285
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4286
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x2300d

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4338
    :cond_1
    :goto_0
    return-void

    .line 4290
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_framework_scan_interval_ms"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$22000(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanIntervalMs:J

    .line 4298
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4305
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4306
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4307
    invoke-direct {p0, v6}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    .line 4316
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 4318
    .local v0, "defaultInterval":I
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_scan_interval_p2p_connected_ms"

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mScanIntervalP2pConnectedMs:J

    .line 4322
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->removeMessages(I)V
    invoke-static {v1, v7}, Landroid/net/wifi/WifiStateMachine;->access$22100(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4323
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4324
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mScanIntervalP2pConnectedMs:J

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->setScanInterval(I)V

    .line 4334
    :goto_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 4335
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x20058

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # ++operator for: Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$22204(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->calcScanInterval()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 4309
    .end local v0    # "defaultInterval":I
    :cond_4
    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto :goto_1

    .line 4313
    :cond_5
    invoke-direct {p0, v6}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto/16 :goto_1

    .line 4326
    .restart local v0    # "defaultInterval":I
    :cond_6
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v7, v5, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_2
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4476
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4477
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)Z

    .line 4479
    :cond_0
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    .line 4480
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x2008f

    # invokes: Landroid/net/wifi/WifiStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$22500(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4481
    iput v2, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mScanBackOffStep:I

    .line 4482
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$7700(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setScanInterval(I)V

    .line 4483
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v9, 0x2008f

    const v8, 0x20058

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4341
    const/4 v1, 0x1

    .line 4342
    .local v1, "ret":Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 4468
    const/4 v1, 0x0

    .line 4470
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 4344
    :sswitch_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4345
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$22200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 4347
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x20047

    const/4 v7, -0x1

    const/4 v3, 0x0

    check-cast v3, Landroid/os/WorkSource;

    invoke-virtual {v4, v6, v7, v5, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 4348
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # ++operator for: Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$22204(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v4, v8, v6, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->calcScanInterval()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 4358
    :sswitch_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # ++operator for: Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$22204(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v4, v8, v6, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$7700(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 4360
    const/4 v1, 0x0

    .line 4361
    goto :goto_0

    .line 4363
    :sswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eq v3, v4, :cond_0

    .line 4364
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->arg1:I

    # setter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v3, v6}, Landroid/net/wifi/WifiStateMachine;->access$9102(Landroid/net/wifi/WifiStateMachine;I)I

    .line 4366
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiNative;->enableAutoInterworking(Z)V

    .line 4367
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 4368
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$9100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 4369
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v5, 0x20084

    invoke-virtual {v3, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4370
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4373
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$11600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$22300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 4377
    :sswitch_4
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_1
    # setter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v6, v3}, Landroid/net/wifi/WifiStateMachine;->access$1702(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4378
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4379
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4380
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto/16 :goto_0

    :cond_2
    move v3, v5

    .line 4377
    goto :goto_1

    .line 4382
    :cond_3
    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto/16 :goto_0

    .line 4385
    :cond_4
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)Z

    .line 4386
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto/16 :goto_0

    .line 4393
    :sswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/StateChangeResult;

    .line 4394
    .local v2, "stateChangeResult":Landroid/net/wifi/StateChangeResult;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, v2, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-static {v4}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$11200(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 4396
    const/4 v1, 0x0

    .line 4397
    goto/16 :goto_0

    .line 4400
    .end local v2    # "stateChangeResult":Landroid/net/wifi/StateChangeResult;
    :sswitch_6
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4401
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)Z

    .line 4404
    :cond_5
    const/4 v1, 0x0

    .line 4405
    goto/16 :goto_0

    .line 4408
    :sswitch_7
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4409
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)Z

    move-result v3

    if-nez v3, :cond_7

    .line 4410
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    .line 4416
    :cond_6
    :goto_2
    const/4 v1, 0x0

    .line 4417
    goto/16 :goto_0

    .line 4412
    :cond_7
    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto :goto_2

    .line 4419
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    .line 4420
    .local v0, "info":Landroid/net/NetworkInfo;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4421
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->removeMessages(I)V
    invoke-static {v3, v9}, Landroid/net/wifi/WifiStateMachine;->access$22400(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4422
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4423
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    iget-wide v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mScanIntervalP2pConnectedMs:J

    long-to-int v4, v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->setScanInterval(I)V

    goto/16 :goto_0

    .line 4425
    :cond_8
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 4427
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # ++operator for: Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$22204(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v4, v8, v6, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$7700(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 4440
    :cond_9
    :goto_3
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v9, v5, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 4429
    :cond_a
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4430
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)Z

    move-result v3

    if-nez v3, :cond_b

    .line 4431
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto :goto_3

    .line 4433
    :cond_b
    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto :goto_3

    .line 4445
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :sswitch_9
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4451
    const/4 v1, 0x0

    .line 4453
    goto/16 :goto_0

    .line 4455
    :sswitch_a
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mScanBackOffStep:I

    .line 4457
    iget v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mScanBackOffStep:I

    if-nez v3, :cond_c

    .line 4459
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiNative;->setScanInterval(I)V

    .line 4461
    :cond_c
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->calcScanInterval()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->setScanInterval(I)V

    .line 4462
    iget v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mScanBackOffStep:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 4463
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mScanBackOffStep:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v9, v6, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 4342
    :sswitch_data_0
    .sparse-switch
        0x20035 -> :sswitch_2
        0x20047 -> :sswitch_6
        0x20048 -> :sswitch_3
        0x2004a -> :sswitch_9
        0x2004b -> :sswitch_9
        0x20058 -> :sswitch_1
        0x2005b -> :sswitch_4
        0x2008f -> :sswitch_a
        0x2300b -> :sswitch_8
        0x24004 -> :sswitch_0
        0x24005 -> :sswitch_7
        0x24006 -> :sswitch_5
        0x25004 -> :sswitch_2
        0x25017 -> :sswitch_2
    .end sparse-switch
.end method
