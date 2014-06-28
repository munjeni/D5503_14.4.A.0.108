.class Lcom/android/phone/SipCallOptionHandler$1;
.super Ljava/lang/Object;
.source "SipCallOptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SipCallOptionHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/SipCallOptionHandler;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 419
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v2}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 420
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # invokes: Lcom/android/phone/SipCallOptionHandler;->isNetworkConnected()Z
    invoke-static {v2}, Lcom/android/phone/SipCallOptionHandler;->access$100(Lcom/android/phone/SipCallOptionHandler;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 421
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->showDialog(I)V

    .line 469
    :goto_0
    return-void

    .line 424
    :cond_0
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "SipCallOptionHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "primary SIP URI is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v4}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_1
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v3}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v3

    # invokes: Lcom/android/phone/SipCallOptionHandler;->createSipPhoneIfNeeded(Landroid/net/sip/SipProfile;)V
    invoke-static {v2, v3}, Lcom/android/phone/SipCallOptionHandler;->access$200(Lcom/android/phone/SipCallOptionHandler;Landroid/net/sip/SipProfile;)V

    .line 427
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/SipCallOptionHandler;->access$300(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.phone.extra.SIP_PHONE_URI"

    iget-object v4, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v4}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z
    invoke-static {v2}, Lcom/android/phone/SipCallOptionHandler;->access$400(Lcom/android/phone/SipCallOptionHandler;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {v2}, Lcom/android/phone/SipCallOptionHandler;->access$500(Lcom/android/phone/SipCallOptionHandler;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v3}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/sip/SipSharedPreferences;->setPrimaryAccount(Ljava/lang/String;)V

    .line 435
    :cond_2
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z
    invoke-static {v2}, Lcom/android/phone/SipCallOptionHandler;->access$600(Lcom/android/phone/SipCallOptionHandler;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v2}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v2

    if-nez v2, :cond_3

    .line 436
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 440
    :cond_3
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/SipCallOptionHandler;->access$300(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.extra.DIAL_CONFERENCE_URI"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 443
    .local v0, "isConferenceUri":Z
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # invokes: Lcom/android/phone/SipCallOptionHandler;->useImsPhone()Z
    invoke-static {v2}, Lcom/android/phone/SipCallOptionHandler;->access$700(Lcom/android/phone/SipCallOptionHandler;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 448
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getIMSPhone(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 449
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_5

    .line 452
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/SipCallOptionHandler;->access$300(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/phone/PhoneUtils;->convertCallToIMS(Landroid/content/Intent;I)V

    .line 466
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/phone/SipCallOptionHandler;->access$300(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 468
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 455
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_5
    const-string v2, "persist.radio.domain.ps"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 457
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 461
    :cond_6
    const-string v2, "SipCallOptionHandler"

    const-string v3, "IMS phone is unavailable , place CS call"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
