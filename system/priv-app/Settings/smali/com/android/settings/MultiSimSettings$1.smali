.class Lcom/android/settings/MultiSimSettings$1;
.super Landroid/os/Handler;
.source "MultiSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MultiSimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiSimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiSimSettings;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    .line 546
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 642
    const-string v6, "MultiSimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown Event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :goto_0
    return-void

    .line 548
    :pswitch_0
    const-string v6, "MultiSimSettings"

    const-string v7, "EVENT_SET_DATA_SUBSCRIPTION_DONE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    iget-boolean v6, v6, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    if-eqz v6, :cond_0

    .line 550
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/app/Activity;->dismissDialog(I)V

    .line 552
    :cond_0
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 553
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # invokes: Lcom/android/settings/MultiSimSettings;->updateDataSummary()V
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$100(Lcom/android/settings/MultiSimSettings;)V

    .line 555
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 557
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 558
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0810

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "status":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v6, v2}, Lcom/android/settings/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    .end local v2    # "status":Ljava/lang/String;
    :cond_1
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 566
    .local v1, "result":Z
    const-string v6, "MultiSimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SET_DATA_SUBSCRIPTION_DONE: result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    if-ne v1, v9, :cond_2

    .line 568
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b080e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 569
    .restart local v2    # "status":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 571
    .local v4, "toast":Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 573
    .end local v2    # "status":Ljava/lang/String;
    .end local v4    # "toast":Landroid/widget/Toast;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b080f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 574
    .restart local v2    # "status":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v6, v2}, Lcom/android/settings/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 580
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Z
    .end local v2    # "status":Ljava/lang/String;
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v6}, Lcom/android/settings/MultiSimSettings;->updateMultiSimEntriesForVoice()V

    .line 581
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v6}, Lcom/android/settings/MultiSimSettings;->updateMultiSimEntriesForSms()V

    goto/16 :goto_0

    .line 585
    :pswitch_2
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/settings/MultiSimSettings;->updateVoiceSub(I)V
    invoke-static {v6, v7}, Lcom/android/settings/MultiSimSettings;->access$200(Lcom/android/settings/MultiSimSettings;I)V

    goto/16 :goto_0

    .line 588
    :pswitch_3
    const-string v6, "MultiSimSettings"

    const-string v7, "EVENT_SET_VOICE_SUBSCRIPTION_DONE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 591
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_3

    .line 592
    const-string v6, "MultiSimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SET_VOICE_SUBSCRIPTION_DONE: returned Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getVoiceSubscription()I

    move-result v5

    .line 595
    .local v5, "voiceSub":I
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 596
    .local v3, "sub":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$300(Lcom/android/settings/MultiSimSettings;)Landroid/preference/ListPreference;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 597
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$300(Lcom/android/settings/MultiSimSettings;)Landroid/preference/ListPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/android/settings/MultiSimSettings;->access$400(Lcom/android/settings/MultiSimSettings;)[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # setter for: Lcom/android/settings/MultiSimSettings;->mVoiceSub:I
    invoke-static {v6, v5}, Lcom/android/settings/MultiSimSettings;->access$502(Lcom/android/settings/MultiSimSettings;I)I

    goto/16 :goto_0

    .line 601
    .end local v3    # "sub":Ljava/lang/String;
    .end local v5    # "voiceSub":I
    :cond_3
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mVoiceSub:I
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$500(Lcom/android/settings/MultiSimSettings;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 602
    .restart local v3    # "sub":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$300(Lcom/android/settings/MultiSimSettings;)Landroid/preference/ListPreference;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 603
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$300(Lcom/android/settings/MultiSimSettings;)Landroid/preference/ListPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/android/settings/MultiSimSettings;->access$400(Lcom/android/settings/MultiSimSettings;)[Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mVoiceSub:I
    invoke-static {v8}, Lcom/android/settings/MultiSimSettings;->access$500(Lcom/android/settings/MultiSimSettings;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mVoiceSub:I
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$500(Lcom/android/settings/MultiSimSettings;)I

    move-result v6

    invoke-static {v6}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setVoiceSubscription(I)V

    goto/16 :goto_0

    .line 607
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "sub":Ljava/lang/String;
    :pswitch_4
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # invokes: Lcom/android/settings/MultiSimSettings;->updateSmsSummary()V
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$600(Lcom/android/settings/MultiSimSettings;)V

    goto/16 :goto_0

    .line 610
    :pswitch_5
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # invokes: Lcom/android/settings/MultiSimSettings;->updateTuneAwayStatus()V
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$700(Lcom/android/settings/MultiSimSettings;)V

    goto/16 :goto_0

    .line 613
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 614
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_4

    .line 615
    const-string v6, "MultiSimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SET_TUNE_AWAY_DONE: returned Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # invokes: Lcom/android/settings/MultiSimSettings;->updateTuneAwayState()V
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$800(Lcom/android/settings/MultiSimSettings;)V

    goto/16 :goto_0

    .line 619
    :cond_4
    const-string v6, "MultiSimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SET_TUNE_AWAY_DONE: mTuneAwayValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mTuneAwayValue:Z
    invoke-static {v8}, Lcom/android/settings/MultiSimSettings;->access$900(Lcom/android/settings/MultiSimSettings;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$1000(Lcom/android/settings/MultiSimSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mTuneAwayValue:Z
    invoke-static {v7}, Lcom/android/settings/MultiSimSettings;->access$900(Lcom/android/settings/MultiSimSettings;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 621
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$1000(Lcom/android/settings/MultiSimSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mTuneAwayValue:Z
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$900(Lcom/android/settings/MultiSimSettings;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "Enable"

    :goto_1
    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mTuneAwayValue:Z
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$900(Lcom/android/settings/MultiSimSettings;)Z

    move-result v6

    invoke-static {v6}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setTuneAway(Z)V

    goto/16 :goto_0

    .line 621
    :cond_5
    const-string v6, "Disable"

    goto :goto_1

    .line 625
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/settings/MultiSimSettings;->updatePrioritySub(I)V
    invoke-static {v6, v7}, Lcom/android/settings/MultiSimSettings;->access$1100(Lcom/android/settings/MultiSimSettings;I)V

    goto/16 :goto_0

    .line 628
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 629
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_6

    .line 630
    const-string v6, "MultiSimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_SET_PRIORITY_SUBSCRIPTION_DONE: returned Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # invokes: Lcom/android/settings/MultiSimSettings;->updatePrioritySubState()V
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$1200(Lcom/android/settings/MultiSimSettings;)V

    goto/16 :goto_0

    .line 635
    :cond_6
    const-string v6, "MultiSimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_SET_PRIORITY_SUBSCRIPTION_DONE : mPrioritySubValue "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mPrioritySubValue:I
    invoke-static {v8}, Lcom/android/settings/MultiSimSettings;->access$1300(Lcom/android/settings/MultiSimSettings;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$1400(Lcom/android/settings/MultiSimSettings;)Landroid/preference/ListPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mPrioritySubValue:I
    invoke-static {v7}, Lcom/android/settings/MultiSimSettings;->access$1300(Lcom/android/settings/MultiSimSettings;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 638
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$1400(Lcom/android/settings/MultiSimSettings;)Landroid/preference/ListPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/android/settings/MultiSimSettings;->access$400(Lcom/android/settings/MultiSimSettings;)[Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mPrioritySubValue:I
    invoke-static {v8}, Lcom/android/settings/MultiSimSettings;->access$1300(Lcom/android/settings/MultiSimSettings;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    # getter for: Lcom/android/settings/MultiSimSettings;->mPrioritySubValue:I
    invoke-static {v6}, Lcom/android/settings/MultiSimSettings;->access$1300(Lcom/android/settings/MultiSimSettings;)I

    move-result v6

    invoke-static {v6}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setPrioritySubscription(I)V

    goto/16 :goto_0

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
    .end packed-switch
.end method
