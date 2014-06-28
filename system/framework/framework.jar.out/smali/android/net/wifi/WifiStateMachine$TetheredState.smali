.class Landroid/net/wifi/WifiStateMachine$TetheredState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 4732
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 4736
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    # invokes: Landroid/net/wifi/WifiStateMachine;->setTxPowerCtrlEnabled(Z)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$9200(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 4737
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4740
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    move v3, v4

    .line 4798
    :cond_0
    :goto_0
    return v3

    .line 4742
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 4743
    .local v0, "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, v0, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    # invokes: Landroid/net/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$25100(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4744
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Tethering reports wifi as untethered!, shut down soft Ap"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$25800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4745
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v7, v4}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 4746
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v7, v3}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 4751
    .end local v0    # "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setTxPowerCtrlEnabled(Z)V
    invoke-static {v5, v4}, Landroid/net/wifi/WifiStateMachine;->access$9200(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 4752
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v5, 0xa

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$4800(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4753
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->stopTethering()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$25900(Landroid/net/wifi/WifiStateMachine;)V

    .line 4754
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$26000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$26100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 4756
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Landroid/net/wifi/WifiStateMachine;->access$26200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 4759
    :sswitch_2
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Hostapd connection lost, shut down Soft AP"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$26300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4760
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v7, v4}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 4763
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WpsInfo;

    .line 4764
    .local v1, "wpsInfo":Landroid/net/wifi/WpsInfo;
    new-instance v2, Landroid/net/wifi/WpsResult;

    invoke-direct {v2}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 4765
    .local v2, "wpsResult":Landroid/net/wifi/WpsResult;
    iget v5, v1, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v5, :pswitch_data_0

    .line 4783
    :pswitch_0
    sget-object v5, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v5, v2, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 4784
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Invalid setup for WPS"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$26600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4787
    :goto_1
    iget-object v5, v2, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    sget-object v6, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    if-ne v5, v6, :cond_3

    .line 4788
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x2500b

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, p1, v5, v2}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 4789
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWpsRegistrarRunningState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$26700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$26800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 4767
    :pswitch_1
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v5

    iget-object v6, v1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4768
    sget-object v5, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v5, v2, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_1

    .line 4770
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Failed to start WPS push button configuration"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$26400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4771
    sget-object v5, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v5, v2, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_1

    .line 4775
    :pswitch_2
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v5

    iget-object v6, v1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiNative;->startWpsPinKeypad(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4776
    sget-object v5, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v5, v2, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_1

    .line 4778
    :cond_2
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Failed to start WPS keypad pin configuration"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$26500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4779
    sget-object v5, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v5, v2, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_1

    .line 4791
    :cond_3
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to start WPS with config "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$26900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4792
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x2500c

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v6, v4}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 4740
    nop

    :sswitch_data_0
    .sparse-switch
        0x20018 -> :sswitch_1
        0x2001d -> :sswitch_0
        0x2400e -> :sswitch_2
        0x2500a -> :sswitch_3
    .end sparse-switch

    .line 4765
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
