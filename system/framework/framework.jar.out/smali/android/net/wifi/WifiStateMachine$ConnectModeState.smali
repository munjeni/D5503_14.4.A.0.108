.class Landroid/net/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 3651
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3654
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_hs2_auto_connection"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiNative;->enableAutoInterworking(Z)V

    .line 3656
    return-void

    :cond_0
    move v0, v1

    .line 3654
    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 17
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3661
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    .line 3898
    const/4 v13, 0x0

    .line 3900
    :goto_0
    return v13

    .line 3663
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v13

    const v14, 0x2402b

    invoke-virtual {v13, v14}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 3900
    :cond_0
    :goto_1
    const/4 v13, 0x1

    goto :goto_0

    .line 3666
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v13

    const v14, 0x24007

    invoke-virtual {v13, v14}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto :goto_1

    .line 3669
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v13, v0}, Landroid/net/wifi/WifiStateMachine;->access$10000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v8

    .line 3672
    .local v8, "state":Landroid/net/wifi/SupplicantState;
    invoke-static {v8}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 3673
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$7600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v13, v14, :cond_1

    .line 3674
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$8400(Landroid/net/wifi/WifiStateMachine;)V

    .line 3676
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Detected an interface down, restart driver"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$15100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3677
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$10300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$15200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 3678
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x2000d

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 3687
    :cond_2
    sget-object v13, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-ne v8, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$7600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v13, v14, :cond_0

    .line 3690
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$8400(Landroid/net/wifi/WifiStateMachine;)V

    .line 3691
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$11800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$15300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3695
    .end local v8    # "state":Landroid/net/wifi/SupplicantState;
    :sswitch_3
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 3696
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 3697
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, 0x1

    # setter for: Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$2802(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 3699
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiNative;->reconnect()Z

    .line 3700
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$2802(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 3704
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3705
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x20034

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v15

    invoke-virtual {v15, v1}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v15

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 3709
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v6

    .line 3710
    .local v6, "ok":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    if-eqz v6, :cond_4

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v14, v0, v15, v13}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_4
    const/4 v13, -0x1

    goto :goto_2

    .line 3713
    .end local v6    # "ok":Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_5

    const/4 v13, 0x1

    :goto_3
    invoke-virtual {v14, v15, v13}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v6

    .line 3714
    .restart local v6    # "ok":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    if-eqz v6, :cond_6

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v14, v0, v15, v13}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 3713
    .end local v6    # "ok":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    .line 3714
    .restart local v6    # "ok":Z
    :cond_6
    const/4 v13, -0x1

    goto :goto_4

    .line 3717
    .end local v6    # "ok":Z
    :sswitch_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 3718
    .local v9, "time":J
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$15400(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v13

    sub-long v13, v9, v13

    const-wide/32 v15, 0x927c0

    cmp-long v13, v13, v15

    if-lez v13, :cond_0

    .line 3719
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 3720
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static {v13, v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$15402(Landroid/net/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    .line 3724
    .end local v9    # "time":J
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 3726
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x25013

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v13, v0, v14}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 3728
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x25012

    const/4 v15, 0x0

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 3733
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Landroid/net/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 3736
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiNative;->clearBlacklist()Z

    goto/16 :goto_1

    .line 3739
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    move-result v6

    .line 3740
    .restart local v6    # "ok":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v15, 0x2003a

    if-eqz v6, :cond_8

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v14, v0, v15, v13}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 3743
    const-string v13, "backup"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v4

    .line 3745
    .local v4, "ibm":Landroid/app/backup/IBackupManager;
    if-eqz v4, :cond_0

    .line 3747
    :try_start_0
    const-string v13, "com.android.providers.settings"

    invoke-interface {v4, v13}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 3748
    :catch_0
    move-exception v13

    goto/16 :goto_1

    .line 3740
    .end local v4    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_8
    const/4 v13, -0x1

    goto :goto_5

    .line 3754
    .end local v6    # "ok":Z
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v13, v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 3758
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfigStore;->getConfiguredCredentials()Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v13, v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 3763
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 3766
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 3769
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_1

    .line 3772
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfigStore;->needsUnlockedKeyStore()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 3773
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Reconnecting to give a chance to un-connected TLS networks"

    # invokes: Landroid/net/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$15500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3774
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 3775
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 3784
    :sswitch_12
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 3785
    .local v5, "netId":I
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3788
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_9

    .line 3789
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v7

    .line 3790
    .local v7, "result":Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v7}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v5

    .line 3793
    .end local v7    # "result":Landroid/net/wifi/NetworkUpdateResult;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiNative;->reconnect()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 3795
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, 0x1

    # setter for: Landroid/net/wifi/WifiStateMachine;->mNetworkIsSelected:Z
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$15602(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3797
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v13

    const v14, 0x25001

    invoke-virtual {v13, v14}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 3798
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x25003

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v13, v0, v14}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 3800
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$15700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$15800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3802
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to connect config: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " netId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$15900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3803
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x25002

    const/4 v15, 0x0

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 3809
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "netId":I
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3810
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v7

    .line 3811
    .restart local v7    # "result":Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v7}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_b

    .line 3812
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x25009

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v13, v0, v14}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 3814
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Failed to save network"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$16000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3815
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x25008

    const/4 v15, 0x0

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 3820
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "result":Landroid/net/wifi/NetworkUpdateResult;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 3821
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x25006

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v13, v0, v14}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 3823
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Failed to forget network"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$16100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3824
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x25005

    const/4 v15, 0x0

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 3829
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiCredential;

    .line 3830
    .local v2, "cred":Landroid/net/wifi/WifiCredential;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/net/wifi/WifiConfigStore;->saveCredential(Landroid/net/wifi/WifiCredential;)I

    move-result v3

    .line 3831
    .local v3, "credId":I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_d

    .line 3832
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x2501c

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v13, v0, v14}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 3834
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Failed to save credential"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$16200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3835
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x2501b

    const/4 v15, 0x0

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 3840
    .end local v2    # "cred":Landroid/net/wifi/WifiCredential;
    .end local v3    # "credId":I
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiConfigStore;->forgetCredential(I)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 3841
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x25019

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v13, v0, v14}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 3843
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Failed to forget credential"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$16300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3844
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x25018

    const/4 v15, 0x0

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 3849
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/net/wifi/WpsInfo;

    .line 3851
    .local v11, "wpsInfo":Landroid/net/wifi/WpsInfo;
    iget v13, v11, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v13, :pswitch_data_0

    .line 3862
    new-instance v12, Landroid/net/wifi/WpsResult;

    sget-object v13, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct {v12, v13}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 3863
    .local v12, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Invalid setup for WPS"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$16400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3866
    :goto_6
    iget-object v13, v12, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    sget-object v14, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    if-ne v13, v14, :cond_f

    .line 3867
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x2500b

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v13, v0, v14, v12}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 3868
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$16500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$16600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3853
    .end local v12    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/net/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v12

    .line 3854
    .restart local v12    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_6

    .line 3856
    .end local v12    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/net/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v12

    .line 3857
    .restart local v12    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_6

    .line 3859
    .end local v12    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/net/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v12

    .line 3860
    .restart local v12    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_6

    .line 3870
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to start WPS with config "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$16700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3871
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x2500c

    const/4 v15, 0x0

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 3876
    .end local v11    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v12    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    # setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$6302(Landroid/net/wifi/WifiStateMachine;I)I

    .line 3877
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v14, v13}, Landroid/net/wifi/WifiStateMachine;->access$6202(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 3879
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 3880
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 3882
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$11200(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 3883
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$16800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3884
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$16900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$17000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3888
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$8400(Landroid/net/wifi/WifiStateMachine;)V

    .line 3889
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$11800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3892
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    goto/16 :goto_1

    .line 3895
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v14

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_10

    const/4 v13, 0x1

    :goto_7
    invoke-virtual {v14, v13}, Landroid/net/wifi/WifiNative;->enableAutoInterworking(Z)V

    goto/16 :goto_1

    :cond_10
    const/4 v13, 0x0

    goto :goto_7

    .line 3661
    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_4
        0x20035 -> :sswitch_5
        0x20036 -> :sswitch_6
        0x20037 -> :sswitch_7
        0x20038 -> :sswitch_9
        0x20039 -> :sswitch_a
        0x2003a -> :sswitch_b
        0x2003b -> :sswitch_c
        0x2003c -> :sswitch_d
        0x20049 -> :sswitch_e
        0x2004a -> :sswitch_f
        0x2004b -> :sswitch_10
        0x2008e -> :sswitch_11
        0x20090 -> :sswitch_1b
        0x2300c -> :sswitch_3
        0x24003 -> :sswitch_18
        0x24004 -> :sswitch_19
        0x24006 -> :sswitch_2
        0x24007 -> :sswitch_1
        0x2402b -> :sswitch_0
        0x24033 -> :sswitch_1a
        0x25001 -> :sswitch_12
        0x25004 -> :sswitch_14
        0x25007 -> :sswitch_13
        0x2500a -> :sswitch_17
        0x25011 -> :sswitch_8
        0x25017 -> :sswitch_16
        0x2501a -> :sswitch_15
    .end sparse-switch

    .line 3851
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
