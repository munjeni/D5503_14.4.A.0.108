.class Lcom/android/phone/BluetoothPhoneService$3;
.super Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public answerCall()Z
    .locals 3

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1000(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method public cdmaSetSecondCallState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 887
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1100(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 889
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1100(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 890
    return-void
.end method

.method public cdmaSwapSecondCallState()V
    .locals 4

    .prologue
    .line 881
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1100(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 883
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1100(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 884
    return-void
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1000(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1000(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hangupCall()Z
    .locals 3

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1000(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1000(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 741
    :goto_0
    return v0

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1000(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1000(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_0

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1000(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 738
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1000(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_0

    .line 741
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listCurrentCalls()Z
    .locals 4

    .prologue
    .line 861
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1100(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 863
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1100(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 864
    const/4 v1, 0x1

    return v1
.end method

.method public processChld(I)Z
    .locals 11
    .param p1, "chld"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 750
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v8, "android.permission.MODIFY_PHONE_STATE"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1000(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 752
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 753
    .local v2, "phoneType":I
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1000(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 754
    .local v3, "ringingCall":Lcom/android/internal/telephony/Call;
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1000(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 756
    .local v0, "backgroundCall":Lcom/android/internal/telephony/Call;
    if-nez p1, :cond_1

    .line 757
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 758
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    .line 846
    :goto_0
    return v5

    .line 760
    :cond_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    goto :goto_0

    .line 762
    :cond_1
    if-ne p1, v5, :cond_5

    .line 763
    if-ne v2, v10, :cond_3

    .line 764
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 767
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0

    .line 773
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 776
    :cond_3
    if-ne v2, v5, :cond_4

    .line 778
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5, v3}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    move-result v5

    goto :goto_0

    .line 780
    :cond_4
    const-string v5, "BluetoothPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 781
    goto :goto_0

    .line 783
    :cond_5
    if-ne p1, v10, :cond_a

    .line 784
    if-ne v2, v10, :cond_8

    .line 790
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 792
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 793
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 795
    invoke-virtual {p0, v5}, Lcom/android/phone/BluetoothPhoneService$3;->cdmaSetSecondCallState(Z)V

    goto :goto_0

    .line 797
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_7

    .line 801
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 803
    invoke-virtual {p0}, Lcom/android/phone/BluetoothPhoneService$3;->cdmaSwapSecondCallState()V

    goto :goto_0

    .line 806
    :cond_7
    const-string v5, "BluetoothPhoneService"

    const-string v7, "CDMA fail to do hold active and accept held"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 807
    goto :goto_0

    .line 808
    :cond_8
    if-ne v2, v5, :cond_9

    .line 809
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 812
    :cond_9
    const-string v5, "BluetoothPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 813
    goto/16 :goto_0

    .line 815
    :cond_a
    const/4 v7, 0x3

    if-ne p1, v7, :cond_10

    .line 816
    if-ne v2, v10, :cond_d

    .line 817
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    .line 820
    .local v4, "state":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v7, :cond_b

    .line 822
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto/16 :goto_0

    .line 824
    :cond_b
    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_c

    move v5, v6

    .line 828
    goto/16 :goto_0

    .line 830
    :cond_c
    const-string v5, "BluetoothPhoneService"

    const-string v7, "GSG no call to add conference"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 831
    goto/16 :goto_0

    .line 832
    .end local v4    # "state":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_d
    if-ne v2, v5, :cond_f

    .line 833
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1000(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->access$1000(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 834
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto/16 :goto_0

    .line 837
    :cond_e
    const-string v5, "BluetoothPhoneService"

    const-string v7, "GSG no call to merge"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 838
    goto/16 :goto_0

    .line 841
    :cond_f
    const-string v5, "BluetoothPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 842
    goto/16 :goto_0

    .line 845
    :cond_10
    const-string v5, "BluetoothPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad CHLD value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 846
    goto/16 :goto_0
.end method

.method public queryPhoneState()Z
    .locals 4

    .prologue
    .line 868
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1100(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 870
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1100(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 871
    const/4 v1, 0x1

    return v1
.end method

.method public sendDtmf(I)Z
    .locals 3
    .param p1, "dtmf"    # I

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1000(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->sendDtmf(C)Z

    move-result v0

    return v0
.end method

.method public updateBtHandsfreeAfterRadioTechnologyChange()V
    .locals 3

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->updateBtPhoneStateAfterRadioTechnologyChange()V
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)V

    .line 878
    return-void
.end method
