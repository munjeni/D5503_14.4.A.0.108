.class Lcom/android/phone/PhoneGlobals$2;
.super Landroid/os/Handler;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 427
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 601
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 434
    :sswitch_1
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 457
    :sswitch_2
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f080000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 459
    const-string v5, "PhoneApp"

    const-string v6, "Ignoring EVENT_PERSO_LOCKED event; not showing \'PERSO unlock\' PIN entry screen"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    :cond_1
    const-string v5, "PhoneApp"

    const-string v6, "show depersonal panel"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 467
    .local v3, "subtype":I
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Lcom/android/phone/IccDepersonalizationPanel;-><init>(Landroid/content/Context;I)V

    .line 469
    .local v0, "dpPanel":Lcom/android/phone/IccDepersonalizationPanel;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 479
    .end local v0    # "dpPanel":Lcom/android/phone/IccDepersonalizationPanel;
    .end local v3    # "subtype":I
    :sswitch_3
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "PhoneApp"

    const-string v6, "- updating in-call notification from handler..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_2
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_0

    .line 484
    :sswitch_4
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto :goto_0

    .line 488
    :sswitch_5
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto :goto_0

    .line 492
    :sswitch_6
    iget-object v6, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/PhoneGlobals;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v6, v5}, Lcom/android/phone/PhoneGlobals;->access$300(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 496
    :sswitch_7
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0

    .line 506
    :sswitch_8
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 508
    .local v2, "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v5, :cond_3

    .line 509
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v5

    if-nez v5, :cond_3

    .line 510
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_4

    .line 512
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 521
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5, v2}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 524
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z
    invoke-static {v5}, Lcom/android/phone/PhoneGlobals;->access$400(Lcom/android/phone/PhoneGlobals;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 525
    const/16 v5, 0xe

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 516
    :cond_4
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v9, v9}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 533
    .end local v2    # "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_9
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v6, "READY"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 537
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/phone/PhoneGlobals;->access$500(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 538
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/phone/PhoneGlobals;->access$500(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 539
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    # setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v5, v7}, Lcom/android/phone/PhoneGlobals;->access$502(Lcom/android/phone/PhoneGlobals;Landroid/app/Activity;)Landroid/app/Activity;

    .line 541
    :cond_5
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/phone/PhoneGlobals;->access$600(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 542
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/phone/PhoneGlobals;->access$600(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 543
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    # setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5, v7}, Lcom/android/phone/PhoneGlobals;->access$602(Lcom/android/phone/PhoneGlobals;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 555
    :sswitch_a
    const/4 v1, 0x0

    .line 556
    .local v1, "inDockMode":Z
    sget v5, Lcom/android/phone/PhoneGlobals;->mDockState:I

    if-eqz v5, :cond_6

    .line 557
    const/4 v1, 0x1

    .line 559
    :cond_6
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v5, :cond_7

    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received EVENT_DOCK_STATE_CHANGED. Phone inDock = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_7
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 563
    .restart local v2    # "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v5

    if-nez v5, :cond_0

    .line 566
    if-eqz v1, :cond_8

    .line 567
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8, v8}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 576
    :goto_2
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;
    invoke-static {v5}, Lcom/android/phone/PhoneGlobals;->access$700(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/SomcInCallScreen;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 578
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;
    invoke-static {v5}, Lcom/android/phone/PhoneGlobals;->access$700(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/SomcInCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 569
    :cond_8
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isCarMode()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 570
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8, v8}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_2

    .line 572
    :cond_9
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v9, v8}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_2

    .line 585
    .end local v1    # "inDockMode":Z
    .end local v2    # "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_b
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 586
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I
    invoke-static {v5}, Lcom/android/phone/PhoneGlobals;->access$800(Lcom/android/phone/PhoneGlobals;)I

    move-result v4

    .line 590
    .local v4, "ttyMode":I
    :goto_3
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 588
    .end local v4    # "ttyMode":I
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "ttyMode":I
    goto :goto_3

    .line 594
    .end local v4    # "ttyMode":I
    :sswitch_c
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->handleQueryTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/android/phone/PhoneGlobals;->access$900(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 598
    :sswitch_d
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->handleSetTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/android/phone/PhoneGlobals;->access$1000(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 427
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0xc -> :sswitch_0
        0xd -> :sswitch_a
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x10 -> :sswitch_d
        0x11 -> :sswitch_1
        0x34 -> :sswitch_6
        0x35 -> :sswitch_7
    .end sparse-switch
.end method
