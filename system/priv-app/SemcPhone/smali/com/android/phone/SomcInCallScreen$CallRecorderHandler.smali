.class Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;
.super Lcom/android/phone/SomcCallRecorder$EventHandler;
.source "SomcInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcInCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallRecorderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcInCallScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/SomcInCallScreen;)V
    .locals 1

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    .line 571
    invoke-direct {p0, p1}, Lcom/android/phone/SomcCallRecorder$EventHandler;-><init>(Landroid/app/Activity;)V

    .line 572
    # getter for: Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {p1}, Lcom/android/phone/SomcInCallScreen;->access$1700(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0, p0}, Lcom/android/phone/SomcCallRecorder;->registerEventHandler(Lcom/android/phone/SomcCallRecorder$EventHandler;)V

    .line 573
    # getter for: Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {p1}, Lcom/android/phone/SomcInCallScreen;->access$1700(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->onStartRecording()V

    .line 574
    :cond_0
    return-void
.end method


# virtual methods
.method public onAudioResourceOccupied()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 608
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mAudioErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$2100(Lcom/android/phone/SomcInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 609
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    const-string v1, "- DISMISSING mAudioErrorDialog."

    # invokes: Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/SomcInCallScreen;->access$000(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;)V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mAudioErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$2100(Lcom/android/phone/SomcInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 611
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    # setter for: Lcom/android/phone/SomcInCallScreen;->mAudioErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v4}, Lcom/android/phone/SomcInCallScreen;->access$2102(Lcom/android/phone/SomcInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    const v3, 0x7f0d0005

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0b010b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0129

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    # setter for: Lcom/android/phone/SomcInCallScreen;->mAudioErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/SomcInCallScreen;->access$2102(Lcom/android/phone/SomcInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 618
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mAudioErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$2100(Lcom/android/phone/SomcInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 619
    return-void
.end method

.method public onNotEnoughStorage(Z)V
    .locals 4
    .param p1, "occurWhenStart"    # Z

    .prologue
    .line 597
    if-eqz p1, :cond_0

    .line 598
    const v0, 0x7f0b0127

    .line 603
    .local v0, "msgId":I
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00a0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 605
    return-void

    .line 600
    .end local v0    # "msgId":I
    :cond_0
    const v0, 0x7f0b0128

    .restart local v0    # "msgId":I
    goto :goto_0
.end method

.method public onStartRecording()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1900(Lcom/android/phone/SomcInCallScreen;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1500(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/CallView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setCallRecordingOn(Z)V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1800(Lcom/android/phone/SomcInCallScreen;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCallRecordTimerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/phone/SomcInCallScreen;->access$2000(Lcom/android/phone/SomcInCallScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 582
    return-void
.end method

.method public onStopRecording()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1500(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/CallView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setCallRecordingOn(Z)V

    .line 586
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1800(Lcom/android/phone/SomcInCallScreen;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCallRecordTimerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/phone/SomcInCallScreen;->access$2000(Lcom/android/phone/SomcInCallScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 587
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1500(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/CallView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setCallRecordingTime(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1700(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->unregisterEventHandler()V

    .line 592
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1800(Lcom/android/phone/SomcInCallScreen;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCallRecordTimerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/phone/SomcInCallScreen;->access$2000(Lcom/android/phone/SomcInCallScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 593
    return-void
.end method
