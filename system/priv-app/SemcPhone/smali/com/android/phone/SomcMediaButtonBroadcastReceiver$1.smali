.class Lcom/android/phone/SomcMediaButtonBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "SomcMediaButtonBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcMediaButtonBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcMediaButtonBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcMediaButtonBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver$1;->this$0:Lcom/android/phone/SomcMediaButtonBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 52
    const-string v9, "SomcMediaButtonBroadcastReceiver"

    const-string v10, "Headset short press task"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v1, v9, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 54
    .local v1, "cm":Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_1

    move v4, v7

    .line 55
    .local v4, "hasRingingCall":Z
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_2

    move v2, v7

    .line 56
    .local v2, "hasActiveCall":Z
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_3

    move v3, v7

    .line 57
    .local v3, "hasHoldingCall":Z
    :goto_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 58
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 60
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v4, :cond_8

    .line 63
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 64
    .local v6, "phoneType":I
    const/4 v9, 0x2

    if-ne v6, v9, :cond_4

    .line 65
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 66
    iget-object v7, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver$1;->this$0:Lcom/android/phone/SomcMediaButtonBroadcastReceiver;

    # invokes: Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->updateUi()V
    invoke-static {v7}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->access$000(Lcom/android/phone/SomcMediaButtonBroadcastReceiver;)V

    .line 86
    .end local v6    # "phoneType":I
    :cond_0
    :goto_3
    iget-object v7, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver$1;->this$0:Lcom/android/phone/SomcMediaButtonBroadcastReceiver;

    # setter for: Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mHandlingShortPress:Z
    invoke-static {v7, v8}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->access$102(Lcom/android/phone/SomcMediaButtonBroadcastReceiver;Z)Z

    .line 87
    return-void

    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    .end local v2    # "hasActiveCall":Z
    .end local v3    # "hasHoldingCall":Z
    .end local v4    # "hasRingingCall":Z
    .end local v5    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    move v4, v8

    .line 54
    goto :goto_0

    .restart local v4    # "hasRingingCall":Z
    :cond_2
    move v2, v8

    .line 55
    goto :goto_1

    .restart local v2    # "hasActiveCall":Z
    :cond_3
    move v3, v8

    .line 56
    goto :goto_2

    .line 67
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    .restart local v3    # "hasHoldingCall":Z
    .restart local v5    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v6    # "phoneType":I
    :cond_4
    if-eq v6, v7, :cond_5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    .line 69
    :cond_5
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 70
    const-string v7, "SomcMediaButtonBroadcastReceiver"

    const-string v9, "handleHeadsetHook: ringing (both lines in use) ==> answer!"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 77
    :goto_4
    iget-object v7, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver$1;->this$0:Lcom/android/phone/SomcMediaButtonBroadcastReceiver;

    # invokes: Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->updateUi()V
    invoke-static {v7}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->access$000(Lcom/android/phone/SomcMediaButtonBroadcastReceiver;)V

    goto :goto_3

    .line 73
    :cond_6
    const-string v7, "SomcMediaButtonBroadcastReceiver"

    const-string v9, "handleHeadsetHook: ringing ==> answer!"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_4

    .line 79
    :cond_7
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 81
    .end local v6    # "phoneType":I
    :cond_8
    if-eqz v2, :cond_0

    .line 82
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 83
    iget-object v7, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver$1;->this$0:Lcom/android/phone/SomcMediaButtonBroadcastReceiver;

    # invokes: Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->updateUi()V
    invoke-static {v7}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->access$000(Lcom/android/phone/SomcMediaButtonBroadcastReceiver;)V

    goto :goto_3
.end method
