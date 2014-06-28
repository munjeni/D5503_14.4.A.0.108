.class Lcom/android/phone/SomcInCallScreen$1;
.super Landroid/os/Handler;
.source "SomcInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcInCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcInCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 392
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    iget-boolean v4, v4, Lcom/android/phone/SomcInCallScreen;->mIsDestroyed:Z

    if-eqz v4, :cond_2

    .line 393
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_0

    .line 394
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    const-string v5, "Handler: Activity destroyed, only handling delayed clean up."

    # invokes: Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/SomcInCallScreen;->access$000(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;)V

    .line 397
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 556
    :cond_1
    :goto_0
    return-void

    .line 403
    :pswitch_0
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    # invokes: Lcom/android/phone/SomcInCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static {v4}, Lcom/android/phone/SomcInCallScreen;->access$100(Lcom/android/phone/SomcInCallScreen;)V

    goto :goto_0

    .line 409
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 410
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 447
    :sswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v2, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/MmiCode;

    .line 450
    .local v2, "mmiCode":Lcom/android/internal/telephony/MmiCode;
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/SomcInCallScreen;->access$600(Lcom/android/phone/SomcInCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CDMA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 451
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/SomcInCallScreen;->access$600(Lcom/android/phone/SomcInCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-static {v4, v5, v2, v7, v7}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 413
    .end local v2    # "mmiCode":Lcom/android/internal/telephony/MmiCode;
    :sswitch_1
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Lcom/android/phone/SomcInCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 417
    :sswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 418
    .local v3, "r":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    # invokes: Lcom/android/phone/SomcInCallScreen;->showSupplementaryServiceNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    invoke-static {v5, v4}, Lcom/android/phone/SomcInCallScreen;->access$200(Lcom/android/phone/SomcInCallScreen;Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    goto :goto_0

    .line 422
    .end local v3    # "r":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/SomcInCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v5, v4}, Lcom/android/phone/SomcInCallScreen;->access$300(Lcom/android/phone/SomcInCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 426
    :sswitch_4
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/SomcInCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v5, v4}, Lcom/android/phone/SomcInCallScreen;->access$400(Lcom/android/phone/SomcInCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 436
    :sswitch_5
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    # invokes: Lcom/android/phone/SomcInCallScreen;->onMMICancel()V
    invoke-static {v4}, Lcom/android/phone/SomcInCallScreen;->access$500(Lcom/android/phone/SomcInCallScreen;)V

    goto :goto_0

    .line 454
    .restart local v2    # "mmiCode":Lcom/android/internal/telephony/MmiCode;
    :cond_3
    invoke-interface {v2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v4, v5, :cond_1

    .line 455
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/phone/SomcInCallScreen;->access$700(Lcom/android/phone/SomcInCallScreen;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 456
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_4

    .line 457
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    const-string v5, "- DISMISSING mMmiStartedDialog."

    # invokes: Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/SomcInCallScreen;->access$000(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;)V

    .line 458
    :cond_4
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/phone/SomcInCallScreen;->access$700(Lcom/android/phone/SomcInCallScreen;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 459
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    # setter for: Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;
    invoke-static {v4, v7}, Lcom/android/phone/SomcInCallScreen;->access$702(Lcom/android/phone/SomcInCallScreen;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 461
    :cond_5
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    goto/16 :goto_0

    .line 467
    .end local v2    # "mmiCode":Lcom/android/internal/telephony/MmiCode;
    :sswitch_6
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget v6, p1, Landroid/os/Message;->arg1:I

    int-to-char v6, v6

    # invokes: Lcom/android/phone/SomcInCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v5, v4, v6}, Lcom/android/phone/SomcInCallScreen;->access$800(Lcom/android/phone/SomcInCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    .line 471
    :sswitch_7
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    # invokes: Lcom/android/phone/SomcInCallScreen;->addVoiceMailNumberPanel()V
    invoke-static {v4}, Lcom/android/phone/SomcInCallScreen;->access$900(Lcom/android/phone/SomcInCallScreen;)V

    goto/16 :goto_0

    .line 475
    :sswitch_8
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    # invokes: Lcom/android/phone/SomcInCallScreen;->dontAddVoiceMailNumber()V
    invoke-static {v4}, Lcom/android/phone/SomcInCallScreen;->access$1000(Lcom/android/phone/SomcInCallScreen;)V

    goto/16 :goto_0

    .line 479
    :sswitch_9
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    # invokes: Lcom/android/phone/SomcInCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static {v4}, Lcom/android/phone/SomcInCallScreen;->access$100(Lcom/android/phone/SomcInCallScreen;)V

    goto/16 :goto_0

    .line 483
    :sswitch_a
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_6

    .line 484
    const-string v4, "SomcInCallScreen"

    const-string v5, "BLUETOOTH_STATE_CHANGED..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_6
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 490
    :sswitch_b
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    const-string v5, "Received PHONE_CDMA_CALL_WAITING event ..."

    # invokes: Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/SomcInCallScreen;->access$000(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;)V

    .line 491
    :cond_7
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/SomcInCallScreen;->access$1100(Lcom/android/phone/SomcInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 494
    .local v1, "cn":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_1

    .line 497
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 498
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    goto/16 :goto_0

    .line 503
    .end local v1    # "cn":Lcom/android/internal/telephony/Connection;
    :sswitch_c
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_8

    .line 504
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    const-string v5, "Received THREEWAY_CALLERINFO_DISPLAY_DONE event ..."

    # invokes: Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/SomcInCallScreen;->access$000(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;)V

    .line 506
    :cond_8
    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_1

    .line 509
    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4, v6}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 512
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 518
    :sswitch_d
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;

    if-nez v4, :cond_9

    .line 519
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 523
    :cond_9
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;

    # invokes: Lcom/android/phone/SomcInCallScreen;->loadImage(Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;)V
    invoke-static {v5, v4}, Lcom/android/phone/SomcInCallScreen;->access$1200(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;)V

    goto/16 :goto_0

    .line 527
    :sswitch_e
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    # setter for: Lcom/android/phone/SomcInCallScreen;->mProviderOverlayVisible:Z
    invoke-static {v4, v6}, Lcom/android/phone/SomcInCallScreen;->access$1302(Lcom/android/phone/SomcInCallScreen;Z)Z

    .line 528
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    # invokes: Lcom/android/phone/SomcInCallScreen;->updateProviderOverlay()V
    invoke-static {v4}, Lcom/android/phone/SomcInCallScreen;->access$1400(Lcom/android/phone/SomcInCallScreen;)V

    goto/16 :goto_0

    .line 532
    :sswitch_f
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 533
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/android/phone/SomcRejectMsgManager;->sendPendingRejectMsgForNumber(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 539
    :sswitch_10
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/SomcInCallScreen;->access$1100(Lcom/android/phone/SomcInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_1

    .line 542
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;
    invoke-static {v4}, Lcom/android/phone/SomcInCallScreen;->access$1500(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/CallView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/CallView;->isRejectMsgListOpened()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/SomcRejectMsgManager;->isShowingPopup()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 547
    :cond_a
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/SomcInCallScreen;->enableNavigationBar(ZZZZ)V
    invoke-static {v4, v5, v6, v6, v6}, Lcom/android/phone/SomcInCallScreen;->access$1600(Lcom/android/phone/SomcInCallScreen;ZZZZ)V

    goto/16 :goto_0

    .line 552
    :cond_b
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen$1;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/SomcInCallScreen;->access$1700(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v4, v4, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v4, v6}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto/16 :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x6c
        :pswitch_0
    .end packed-switch

    .line 410
    :sswitch_data_0
    .sparse-switch
        0x34 -> :sswitch_0
        0x35 -> :sswitch_5
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x68 -> :sswitch_6
        0x6a -> :sswitch_7
        0x6b -> :sswitch_8
        0x6c -> :sswitch_9
        0x6d -> :sswitch_1
        0x6f -> :sswitch_a
        0x70 -> :sswitch_d
        0x71 -> :sswitch_2
        0x73 -> :sswitch_b
        0x74 -> :sswitch_c
        0x75 -> :sswitch_f
        0x76 -> :sswitch_10
        0x79 -> :sswitch_e
    .end sparse-switch
.end method
