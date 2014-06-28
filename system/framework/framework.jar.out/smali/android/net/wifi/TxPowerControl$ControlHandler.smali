.class final Landroid/net/wifi/TxPowerControl$ControlHandler;
.super Landroid/os/Handler;
.source "TxPowerControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/TxPowerControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ControlHandler"
.end annotation


# static fields
.field public static final MSG_AP_STATE_UPDATE:I = 0x3

.field public static final MSG_DISABLE:I = 0x2

.field public static final MSG_ENABLE:I = 0x1

.field public static final MSG_INIT:I = 0x0

.field public static final MSG_P2P_STATE_UPDATE:I = 0x4

.field public static final MSG_TELEPHONY_STATE_UPDATE:I = 0x5


# instance fields
.field private mCurrentCountry:Landroid/net/wifi/TxPowerControl$Country;

.field private mInitialized:Z

.field private mPendingEnable:Z

.field final synthetic this$0:Landroid/net/wifi/TxPowerControl;


# direct methods
.method public constructor <init>(Landroid/net/wifi/TxPowerControl;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 405
    iput-object p1, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->this$0:Landroid/net/wifi/TxPowerControl;

    .line 406
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 392
    iput-boolean v0, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->mInitialized:Z

    .line 394
    iput-boolean v0, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->mPendingEnable:Z

    .line 396
    sget-object v0, Landroid/net/wifi/TxPowerControl$Country;->UNKNOWN:Landroid/net/wifi/TxPowerControl$Country;

    iput-object v0, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->mCurrentCountry:Landroid/net/wifi/TxPowerControl$Country;

    .line 407
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 412
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 415
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 416
    iget-object v3, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->this$0:Landroid/net/wifi/TxPowerControl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Properties;

    # invokes: Landroid/net/wifi/TxPowerControl;->initialize(Ljava/util/Properties;)Z
    invoke-static {v3, v1}, Landroid/net/wifi/TxPowerControl;->access$200(Landroid/net/wifi/TxPowerControl;Ljava/util/Properties;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->mInitialized:Z

    .line 417
    iget-boolean v1, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->mInitialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->mPendingEnable:Z

    if-eqz v1, :cond_0

    .line 418
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 419
    iput-boolean v2, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->mPendingEnable:Z

    goto :goto_0

    .line 425
    :pswitch_1
    iget-boolean v1, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->mInitialized:Z

    if-nez v1, :cond_1

    .line 426
    iput-boolean v0, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->mPendingEnable:Z

    goto :goto_0

    .line 429
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->this$0:Landroid/net/wifi/TxPowerControl;

    # invokes: Landroid/net/wifi/TxPowerControl;->setReceiverEnabled(Z)V
    invoke-static {v1, v0}, Landroid/net/wifi/TxPowerControl;->access$300(Landroid/net/wifi/TxPowerControl;Z)V

    goto :goto_0

    .line 433
    :pswitch_2
    iget-object v1, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->this$0:Landroid/net/wifi/TxPowerControl;

    # invokes: Landroid/net/wifi/TxPowerControl;->setReceiverEnabled(Z)V
    invoke-static {v1, v2}, Landroid/net/wifi/TxPowerControl;->access$300(Landroid/net/wifi/TxPowerControl;Z)V

    .line 434
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 435
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 441
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_2

    .line 442
    .local v0, "state":Z
    :goto_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_3

    .line 443
    iget-object v1, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->this$0:Landroid/net/wifi/TxPowerControl;

    # setter for: Landroid/net/wifi/TxPowerControl;->mIsSoftApRunning:Z
    invoke-static {v1, v0}, Landroid/net/wifi/TxPowerControl;->access$402(Landroid/net/wifi/TxPowerControl;Z)Z

    .line 447
    :goto_2
    iget-object v1, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->this$0:Landroid/net/wifi/TxPowerControl;

    iget-object v2, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->this$0:Landroid/net/wifi/TxPowerControl;

    iget-object v3, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->mCurrentCountry:Landroid/net/wifi/TxPowerControl$Country;

    # invokes: Landroid/net/wifi/TxPowerControl;->getTxPower(Landroid/net/wifi/TxPowerControl$Country;)I
    invoke-static {v2, v3}, Landroid/net/wifi/TxPowerControl;->access$600(Landroid/net/wifi/TxPowerControl;Landroid/net/wifi/TxPowerControl$Country;)I

    move-result v2

    iget-object v3, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->this$0:Landroid/net/wifi/TxPowerControl;

    # getter for: Landroid/net/wifi/TxPowerControl;->mIsSoftApRunning:Z
    invoke-static {v3}, Landroid/net/wifi/TxPowerControl;->access$400(Landroid/net/wifi/TxPowerControl;)Z

    move-result v3

    # invokes: Landroid/net/wifi/TxPowerControl;->setTxPower(IZ)V
    invoke-static {v1, v2, v3}, Landroid/net/wifi/TxPowerControl;->access$700(Landroid/net/wifi/TxPowerControl;IZ)V

    goto :goto_0

    .end local v0    # "state":Z
    :cond_2
    move v0, v2

    .line 441
    goto :goto_1

    .line 445
    .restart local v0    # "state":Z
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->this$0:Landroid/net/wifi/TxPowerControl;

    # setter for: Landroid/net/wifi/TxPowerControl;->mIsP2pRunning:Z
    invoke-static {v1, v0}, Landroid/net/wifi/TxPowerControl;->access$502(Landroid/net/wifi/TxPowerControl;Z)Z

    goto :goto_2

    .line 451
    .end local v0    # "state":Z
    :pswitch_4
    iget-object v1, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->this$0:Landroid/net/wifi/TxPowerControl;

    # invokes: Landroid/net/wifi/TxPowerControl;->getCountry()Landroid/net/wifi/TxPowerControl$Country;
    invoke-static {v1}, Landroid/net/wifi/TxPowerControl;->access$800(Landroid/net/wifi/TxPowerControl;)Landroid/net/wifi/TxPowerControl$Country;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->mCurrentCountry:Landroid/net/wifi/TxPowerControl$Country;

    .line 452
    iget-object v1, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->this$0:Landroid/net/wifi/TxPowerControl;

    iget-object v2, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->this$0:Landroid/net/wifi/TxPowerControl;

    iget-object v3, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->mCurrentCountry:Landroid/net/wifi/TxPowerControl$Country;

    # invokes: Landroid/net/wifi/TxPowerControl;->getTxPower(Landroid/net/wifi/TxPowerControl$Country;)I
    invoke-static {v2, v3}, Landroid/net/wifi/TxPowerControl;->access$600(Landroid/net/wifi/TxPowerControl;Landroid/net/wifi/TxPowerControl$Country;)I

    move-result v2

    iget-object v3, p0, Landroid/net/wifi/TxPowerControl$ControlHandler;->this$0:Landroid/net/wifi/TxPowerControl;

    # getter for: Landroid/net/wifi/TxPowerControl;->mIsSoftApRunning:Z
    invoke-static {v3}, Landroid/net/wifi/TxPowerControl;->access$400(Landroid/net/wifi/TxPowerControl;)Z

    move-result v3

    # invokes: Landroid/net/wifi/TxPowerControl;->setTxPower(IZ)V
    invoke-static {v1, v2, v3}, Landroid/net/wifi/TxPowerControl;->access$700(Landroid/net/wifi/TxPowerControl;IZ)V

    goto/16 :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
