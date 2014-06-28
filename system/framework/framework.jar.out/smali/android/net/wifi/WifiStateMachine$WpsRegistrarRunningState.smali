.class Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsRegistrarRunningState"
.end annotation


# instance fields
.field private mSourceMessage:Landroid/os/Message;

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 4802
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 4807
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$27000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->mSourceMessage:Landroid/os/Message;

    .line 4808
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    const v4, 0x2500c

    .line 4811
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 4853
    :goto_0
    return v0

    .line 4813
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->mSourceMessage:Landroid/os/Message;

    const v3, 0x2500d

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 4814
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 4815
    iput-object v5, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->mSourceMessage:Landroid/os/Message;

    .line 4816
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$25200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$27100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :goto_1
    move v0, v1

    .line 4853
    goto :goto_0

    .line 4819
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->mSourceMessage:Landroid/os/Message;

    const/4 v3, 0x3

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v2, v4, v3}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 4821
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 4822
    iput-object v5, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->mSourceMessage:Landroid/os/Message;

    .line 4823
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$25200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$27200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4827
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->mSourceMessage:Landroid/os/Message;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v2, v4, v3}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 4828
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 4829
    iput-object v5, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->mSourceMessage:Landroid/os/Message;

    .line 4830
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$25200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$27300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4833
    :sswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->mSourceMessage:Landroid/os/Message;

    const/4 v3, 0x7

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v2, v4, v3}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 4835
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 4836
    iput-object v5, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->mSourceMessage:Landroid/os/Message;

    .line 4837
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$25200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$27400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4840
    :sswitch_4
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, p1, v4, v1}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_1

    .line 4843
    :sswitch_5
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiNative;->cancelWps()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4844
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x25010

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, p1, v2}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 4848
    :goto_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$25200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$27500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4846
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRegistrarRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x2500f

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v0}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_2

    .line 4811
    nop

    :sswitch_data_0
    .sparse-switch
        0x24008 -> :sswitch_0
        0x24009 -> :sswitch_2
        0x2400a -> :sswitch_1
        0x2400b -> :sswitch_3
        0x2500a -> :sswitch_4
        0x2500e -> :sswitch_5
    .end sparse-switch
.end method
